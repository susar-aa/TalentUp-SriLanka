<?php
session_start();
require 'db_connect.php';

header('Content-Type: application/json');

if (!isset($_SESSION['user_id'])) {
    echo json_encode(['success' => false, 'message' => 'You must be logged in to comment.']);
    exit();
}

if ($_SERVER['REQUEST_METHOD'] !== 'POST' || empty(trim($_POST['comment'])) || !isset($_POST['video_id'])) {
    echo json_encode(['success' => false, 'message' => 'Invalid request. Comment cannot be empty.']);
    exit();
}

$user_id = $_SESSION['user_id'];
$video_id = intval($_POST['video_id']);
$comment_text = trim($_POST['comment']);

$stmt = $conn->prepare("INSERT INTO video_comments (video_id, user_id, comment) VALUES (?, ?, ?)");
$stmt->bind_param("iis", $video_id, $user_id, $comment_text);

if ($stmt->execute()) {
    $new_comment_id = $stmt->insert_id;
    
    // Fetch the new comment along with user details to send back to the client
    $comment_query = $conn->prepare(
        "SELECT vc.comment, vc.created_at, u.username 
         FROM video_comments vc 
         JOIN users u ON vc.user_id = u.id 
         WHERE vc.id = ?"
    );
    $comment_query->bind_param("i", $new_comment_id);
    $comment_query->execute();
    $new_comment_data = $comment_query->get_result()->fetch_assoc();

    echo json_encode([
        'success' => true,
        'comment' => [
            'username' => htmlspecialchars($new_comment_data['username']),
            'comment' => htmlspecialchars($new_comment_data['comment']),
            'created_at' => date("M d, Y, g:i A") // Format the date for display
        ]
    ]);
} else {
    echo json_encode(['success' => false, 'message' => 'Failed to post comment.']);
}

$stmt->close();
$conn->close();
?>
