# **TalentUp SriLanka \- Online Talent Show Platform**

Welcome to TalentUp SriLanka, a full-featured web application designed to be an online stage for talented individuals across Sri Lanka. This platform allows users to upload, share, and discover talent videos, creating an engaging online competition environment complete with user interactions, judging, and administrative oversight.

## **✨ Key Features**

The platform is built with a role-based access control system, providing unique experiences for contestants, judges, and administrators.

### **🧑‍🎤 For Contestants (User Role)**

* **Authentication:** Secure user registration and login system.  
* **Profile Management:** Users can update their profile information and change their password.  
* **Video Uploads:** A user-friendly interface to upload performance videos with custom titles, descriptions, categories, and thumbnails. Includes a live preview feature.  
* **Dashboard:** A personal dashboard to track video performance with statistics like views, likes, comments, and total judge scores.  
* **Video Management:** Ability to edit video details or delete uploaded videos.

### **⚖️ For Judges (Judge Role)**

* **Dedicated Dashboard:** A specialized dashboard showing all submitted videos, highlighting which ones are pending a vote.  
* **Voting System:** Judges can watch videos and cast a score from 1-10.  
* **Performance Tracking:** View personal judging statistics, such as the total number of videos voted on and the average score given.

### **administrative (Admin Role)**

* **Comprehensive Dashboard:** A powerful admin panel with a high-level overview of all site activity (total users, videos, likes, etc.).  
* **User Management:** Admins can view all users, change user roles (e.g., promote a user to a judge), and delete user accounts.  
* **Judge Assignment:** Directly create new user accounts with the 'judge' role.  
* **Content Oversight:** Access to manage and moderate all content on the platform.

### **🌐 General Features**

* **Video Gallery:** A public page to browse, search, and watch all submitted talent videos.  
* **Interactive Video Player:** Users can watch videos, like them, read and post comments, and share them.  
* **Dynamic Home Page:** Features the latest videos, featured judges, and real-time site statistics.  
* **AI Chatbot:** An interactive assistant on the home page to help new users navigate the site and answer common questions.  
* **Responsive Design:** A modern and clean UI built with Tailwind CSS that works seamlessly on desktops, tablets, and mobile devices.

## **💻 Technology Stack**

* **Backend:** PHP  
* **Database:** MySQL / MariaDB  
* **Frontend:** HTML, CSS, JavaScript  
* **Styling:** Tailwind CSS  
* **Server:** Apache (via XAMPP)

## **🚀 Getting Started**

Follow these instructions to set up a local development environment.

### **Prerequisites**

* [XAMPP](https://www.apachefriends.org/index.html) (or any other local server environment like WAMP/MAMP) which includes Apache, MySQL, and PHP.

### **Installation Steps**

1. **Clone the repository:**  
   git clone \[https://github.com/your-username/talentup-srilanka.git\](https://github.com/your-username/talentup-srilanka.git)

2. **Move to your server directory:**  
   * Move the cloned project folder into the htdocs directory within your XAMPP installation folder.  
3. **Database Setup:**  
   * Open phpMyAdmin (usually at http://localhost/phpmyadmin).  
   * Create a new database named talentup\_db.  
   * Import the provided .sql files or manually create the tables using the schema below.  
4. **Configure Database Connection:**  
   * Open the db\_connect.php file.  
   * Update the database credentials ($servername, $username, $password, $dbname) if they differ from your local setup.  
5. **Create Upload Directories:**  
   * Inside the main project folder, create a new folder named uploads.  
   * Inside the uploads folder, create two more folders: videos and thumbnails.  
6. **Run the application:**  
   * Start the Apache and MySQL modules in your XAMPP Control Panel.  
   * Open your web browser and navigate to http://localhost/talentup-srilanka/.

## **🗃️ Database Schema**

The database consists of the following tables:

* **users**: Stores user information, credentials, and roles (user, judge, admin).  
* **videos**: Stores information about uploaded videos, including file paths and metadata.  
* **video\_likes**: Tracks which user has liked which video.  
* **video\_comments**: Stores all comments made on videos.  
* **judge\_votes**: Records the scores given by judges to specific videos.

## **📄 License**

This project is licensed under the MIT License. See the LICENSE file for details.
