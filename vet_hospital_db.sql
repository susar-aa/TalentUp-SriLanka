-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2025 at 06:13 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vet_hospital_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `appointment_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `pet_id` int(11) NOT NULL,
  `vet_id` int(11) DEFAULT NULL,
  `appointment_date` datetime NOT NULL,
  `reason` text NOT NULL,
  `status` enum('Pending','Confirmed','In Progress','Completed','Cancelled') NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`appointment_id`, `client_id`, `pet_id`, `vet_id`, `appointment_date`, `reason`, `status`, `created_at`) VALUES
(3, 1, 2, 2, '2025-08-29 12:20:00', 'Annual Checkup', 'Completed', '2025-08-29 06:50:52'),
(4, 1, 2, 2, '2025-08-30 12:21:00', 'My Dog Eating Grass', 'Confirmed', '2025-08-29 06:51:45');

-- --------------------------------------------------------

--
-- Table structure for table `chatbot_responses`
--

CREATE TABLE `chatbot_responses` (
  `response_id` int(11) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `response` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chatbot_responses`
--

INSERT INTO `chatbot_responses` (`response_id`, `keywords`, `response`) VALUES
(1, 'hours,open,close,time', 'Our clinic is open Mon - Fri from 9:00 AM to 6:00 PM, and Sat from 10:00 AM to 4:00 PM. We are closed on Sundays.'),
(2, 'location,address,where', 'You can find us at 123 Pet Street, Kurunegala, Sri Lanka.'),
(3, 'appointment,book,schedule', 'You can book an appointment by registering or logging into your account and visiting the \"Book Appointment\" section in your dashboard.'),
(4, 'services,offer', 'We offer a wide range of services including grooming, vaccinations, dental care, surgery, and emergency care. You can see more on our Services page.'),
(5, 'emergency,urgent', 'For emergencies, please call us immediately at (123) 456-7890. If it is after hours, please contact the nearest 24/7 animal emergency hospital.'),
(6, 'cost,price,fee', 'The cost of services can vary. For a general check-up, the fee is Rs: 1500. For other services, it\'s best to book a consultation for an accurate quote.'),
(7, 'hours,open,close,time', 'Our clinic is open Mon - Fri from 9:00 AM to 6:00 PM, and Sat from 10:00 AM to 4:00 PM. We are closed on Sundays.'),
(8, 'location,address,where', 'You can find us at 123 Pet Street, Kurunegala, Sri Lanka.'),
(9, 'appointment,book,schedule', 'You can book an appointment by registering or logging into your account and visiting the \"Book Appointment\" section in your dashboard.'),
(10, 'services,offer', 'We offer a wide range of services including wellness exams, vaccinations, dental care, surgery, and emergency care. You can see more on our Services page.'),
(11, 'emergency,urgent', 'For emergencies, please call us immediately at (123) 456-7890. If it is after hours, please contact the nearest 24/7 animal emergency hospital.'),
(12, 'cost,price,fee', 'The cost of services can vary. For a general check-up, the fee is Rs: 1500. For other services, it\'s best to book a consultation for an accurate quote.'),
(13, 'best,food,breed,size', 'The best food depends on your dog\'s age, breed, and activity level. Generally, a high-quality commercial kibble is a great choice. For specific recommendations, it\'s best to consult with one of our vets during a wellness exam.'),
(14, 'how,often,feed,dog', 'Most adult dogs do well with two meals a day, about 12 hours apart. Puppies need to be fed more frequently, usually three to four times a day.'),
(15, 'human,food,dogs,eat', 'Some human foods like plain cooked chicken or carrots are safe in small amounts. However, many are dangerous. It\'s best to stick to a diet formulated for dogs.'),
(16, 'toxic,poisonous,foods,dogs', 'Many foods are toxic to dogs, including chocolate, grapes, raisins, onions, garlic, xylitol (an artificial sweetener), and alcohol. Never feed these to your dog.'),
(17, 'dog,food,allergies', 'Common signs of food allergies in dogs include itchy skin, chronic ear infections, and digestive issues like gas or diarrhea. A vet can help diagnose this with an elimination diet.'),
(18, 'dog,bark,barking', 'Excessive barking can be due to boredom, anxiety, fear, or seeking attention. Ensuring your dog gets enough exercise and mental stimulation can help. Training can also manage this behavior.'),
(19, 'train,stop,biting,jumping', 'For biting and jumping, positive reinforcement training is key. Redirect their attention with a toy when they bite and reward them for keeping all four paws on the floor. Consistency is very important.'),
(20, 'dog,eating,grass', 'Dogs eat grass for many reasons. It can be a sign of a nutritional deficiency, boredom, or sometimes an upset stomach. If it\'s occasional, it\'s usually not a concern, but if it\'s frequent or accompanied by vomiting, a check-up is a good idea.'),
(21, 'dog,sleep,sleeping', 'Yes, adult dogs typically sleep 12-14 hours a day. Puppies and senior dogs may sleep even more. If their sleeping habits change suddenly, it\'s worth mentioning to a vet.'),
(22, 'tail,wagging,mean', 'Tail wagging can mean many things! A loose, relaxed wag usually indicates happiness. A high, stiff wag can mean excitement or arousal, while a low, tucked wag can signal fear or submission.'),
(23, 'how,often,feed,cat', 'Most adult cats prefer several small meals throughout the day. Two main meals, morning and evening, is a common and healthy schedule.'),
(24, 'cats,eat,raw,meat,fish', 'While cats are carnivores, feeding raw meat or fish carries a risk of bacteria like Salmonella and E. coli. It\'s safest to feed them commercially prepared, cooked cat food.'),
(25, 'unsafe,toxic,foods,cats', 'Many human foods are toxic to cats, including onions, garlic, chocolate, alcohol, grapes, and raisins. Lilies are also extremely poisonous to cats if ingested.'),
(26, 'switch,cat,food', 'To switch your cat\'s food, do it gradually over 7-10 days. Start by mixing a small amount of the new food with their old food, and slowly increase the proportion of new food each day.'),
(27, 'cat,food,allergies', 'Signs of food allergies in cats often involve the skin, such as excessive scratching (especially around the head and neck), hair loss, and skin lesions. Vomiting or diarrhea can also occur.'),
(28, 'cat,meowing,meow', 'Cats meow to communicate with people. Excessive meowing can mean they want food, attention, or to be let in or out. It can also be a sign of loneliness, stress, or a medical issue, especially in older cats.'),
(29, 'cat,kneads,purrs,kneading,purring', 'Kneading and purring are usually signs of contentment and relaxation. Cats often do this when they feel safe and happy, and it\'s a behavior that originates from kittenhood.'),
(30, 'cat,scratching,furniture', 'To stop a cat from scratching furniture, provide plenty of appropriate scratching posts with different textures (like sisal rope or cardboard). You can also use deterrents like double-sided tape on the furniture.'),
(31, 'cat,bring,dead,animals,gift', 'When a cat brings you a dead animal, it\'s often seen as a gift. They are sharing their hunting success with you, much like they would with their family in the wild. It\'s a sign of affection.'),
(32, 'cat,sleep,sleeping', 'Yes, it\'s completely normal. Cats are natural predators and conserve energy between hunts (or playtime). They can sleep anywhere from 12 to 20 hours a day, especially as they get older.');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `judge_id` int(11) NOT NULL,
  `rating_creativity` tinyint(4) NOT NULL,
  `rating_presentation` tinyint(4) NOT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `illnesses`
--

CREATE TABLE `illnesses` (
  `illness_id` int(11) NOT NULL,
  `illness_name` varchar(255) NOT NULL,
  `possible_causes` text DEFAULT NULL,
  `recommendation` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `illnesses`
--

INSERT INTO `illnesses` (`illness_id`, `illness_name`, `possible_causes`, `recommendation`) VALUES
(1, 'Gastritis (Stomach Upset)', NULL, 'Withhold food for 12-24 hours, then offer a bland diet (like boiled chicken and rice). If vomiting persists, consult a vet immediately.'),
(2, 'Kennel Cough', NULL, 'Isolate from other dogs. Ensure they rest and have access to water. A vet may prescribe cough suppressants.'),
(3, 'Canine Diabetes', NULL, 'This requires a veterinary diagnosis. Treatment typically involves daily insulin injections and a special diet.'),
(4, 'Flea Allergy Dermatitis', NULL, 'Use a vet-approved flea prevention product. A vet may prescribe medication to soothe the skin irritation.'),
(5, 'Arthritis', NULL, 'Consult a vet for diagnosis and pain management options, which may include joint supplements or anti-inflammatory medication. Provide soft bedding.'),
(6, 'Urinary Tract Infection (UTI)', NULL, 'A veterinary visit is essential. Antibiotics are typically required to treat the infection.'),
(7, 'Dental Disease', NULL, 'A professional dental cleaning by a vet is recommended. Start a routine of brushing your pet\'s teeth at home.'),
(8, 'Ear Infection (Otitis)', NULL, 'A vet needs to examine the ear to determine the cause. Cleaning and medicated ear drops are usually prescribed.'),
(9, 'Parvovirus', NULL, 'This is a veterinary emergency, especially in puppies. Immediate intensive care is required.'),
(10, 'Heartworm Disease', NULL, 'A vet must diagnose this with a blood test. Treatment is complex and requires veterinary supervision. Prevention is key.'),
(11, 'Kidney Disease', NULL, 'Requires veterinary diagnosis. Management includes a special diet, fluid therapy, and medications.'),
(12, 'Liver Disease', NULL, 'Veterinary diagnosis is crucial. Treatment depends on the cause but often involves diet changes and medication.'),
(13, 'Hypothyroidism', NULL, 'Diagnosed with a blood test. Lifelong thyroid hormone replacement therapy is usually very effective.'),
(14, 'Allergies (Environmental/Food)', NULL, 'Work with a vet to identify the allergen. May require special diets, medication, or allergy shots.'),
(15, 'Conjunctivitis (Pink Eye)', NULL, 'A vet should determine the cause (bacterial, viral, allergic). Medicated eye drops are usually prescribed.'),
(16, 'Epilepsy', NULL, 'If seizures are recurrent, a vet can diagnose and prescribe anti-convulsant medication to manage the condition.'),
(17, 'Intestinal Parasites (Worms)', NULL, 'A fecal test by a vet can identify the type of parasite. Deworming medication is required.');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `shipping_address` text NOT NULL,
  `order_status` enum('Pending','Processing','Shipped','Delivered','Cancelled') NOT NULL DEFAULT 'Pending',
  `stripe_payment_intent_id` varchar(255) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `client_id`, `total_amount`, `shipping_address`, `order_status`, `stripe_payment_intent_id`, `order_date`) VALUES
(1, 1, 171.97, 'Kurunegala Sri Lanka', 'Processing', 'pi_3RzDnUBM7CfBS2EH040UKbIT', '2025-08-23 09:31:53'),
(2, 1, 6750.00, 'Sl', 'Processing', 'pi_3RzDzJBM7CfBS2EH1bNC5cQY', '2025-08-23 09:43:59'),
(3, 1, 9100.00, 'Kurunegala', 'Processing', 'pi_3RzzKnBM7CfBS2EH1LDDeJ6N', '2025-08-25 12:17:26'),
(4, 1, 22875.00, 'Sri Lanka', 'Processing', 'pi_3S0j21BM7CfBS2EH1dCLctdv', '2025-08-27 13:05:37'),
(5, 1, 2200.00, 'siri lankaa ratama apiii', 'Shipped', 'pi_3S2RKcBM7CfBS2EH1MtjFB5Q', '2025-09-01 06:35:25'),
(6, 1, 3075.00, '79, Dambakanda Estate', 'Processing', 'pi_3S2S5UBM7CfBS2EH1Me7opza', '2025-09-01 07:23:49');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price_per_item` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_item_id`, `order_id`, `product_id`, `quantity`, `price_per_item`) VALUES
(4, 2, 11, 1, 2200.00),
(5, 2, 9, 1, 4550.00),
(6, 3, 9, 2, 4550.00),
(7, 4, 11, 10, 2200.00),
(8, 4, 12, 1, 875.00),
(9, 5, 11, 1, 2200.00),
(10, 6, 11, 1, 2200.00),
(11, 6, 12, 1, 875.00);

-- --------------------------------------------------------

--
-- Table structure for table `pets`
--

CREATE TABLE `pets` (
  `pet_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `pet_name` varchar(255) NOT NULL,
  `species` varchar(100) DEFAULT NULL,
  `breed` varchar(100) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` enum('Male','Female','Unknown') NOT NULL DEFAULT 'Unknown',
  `medical_history` text DEFAULT NULL,
  `pet_image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pets`
--

INSERT INTO `pets` (`pet_id`, `owner_id`, `pet_name`, `species`, `breed`, `date_of_birth`, `gender`, `medical_history`, `pet_image_url`) VALUES
(2, 1, 'Zimba', 'Cat', 'Normal', '2025-01-06', 'Female', 'edrtfgbyhujjhdertfgyhujkknhg', 'uploads/pets/68b548b8e5de00.70757602.jpg'),
(3, 1, 'Rocky', 'Dog', 'Labradog', '2022-12-07', 'Male', '', 'uploads/pets/68b548e2387204.72969904.png');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock_quantity` int(11) NOT NULL DEFAULT 0,
  `image_url` varchar(255) DEFAULT 'https://placehold.co/600x400/E8F5E9/4CAF50?text=VetSmart',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `description`, `price`, `stock_quantity`, `image_url`, `created_at`) VALUES
(9, 'Premium Dog Food (10kg)', 'A balanced and nutritious meal for adult dogs, made with real chicken.', 4550.00, 47, 'assets\\css\\images\\premium-dog-food.jpg', '2025-08-23 09:43:21'),
(10, 'Interactive Cat Toy Wand', 'Engage your cat in hours of fun with this feather wand.', 1299.00, 100, 'assets\\css\\images\\meow mix.jpg', '2025-08-23 09:43:21'),
(11, 'Heavy-Duty Pet Leash', 'A durable and reflective leash for safe walks, suitable for all dog sizes.', 2200.00, 62, 'assets\\css\\images\\cat_toy.jpg', '2025-08-23 09:43:21'),
(12, 'Organic Catnip Spray', 'A potent, all-natural catnip spray to invigorate your cat\'s toys and scratchers.', 875.00, 118, 'assets\\css\\images\\catnip spray.webp', '2025-08-23 09:43:21');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `report_id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `diagnosis` text NOT NULL,
  `treatment_notes` text DEFAULT NULL,
  `billing_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `payment_status` enum('Paid','Unpaid') NOT NULL DEFAULT 'Unpaid',
  `generated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`report_id`, `appointment_id`, `diagnosis`, `treatment_notes`, `billing_amount`, `payment_status`, `generated_at`) VALUES
(3, 3, 'The cat presented with decreased appetite, lethargy, and intermittent vomiting. Physical examination revealed mild fever, abdominal discomfort, and bloodwork indicating leukocytosis with elevated liver enzymes. Based on clinical signs and test results, the most likely diagnosis is acute gastroenteritis with possible hepatic involvement, though differential diagnoses such as pancreatitis or foreign body obstruction remain possible.', 'The treatment plan includes IV fluid therapy to correct dehydration, administration of antiemetics to control vomiting, and gastroprotectants as needed. A temporary fasting period followed by the introduction of a bland, easily digestible diet was advised. Additional diagnostics such as abdominal ultrasound and repeat liver enzyme testing will be performed to monitor progression. The prognosis is good with supportive care, assuming no severe underlying pathology is found.', 1000.00, 'Unpaid', '2025-08-29 07:15:02');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `rating` int(1) NOT NULL CHECK (`rating` >= 1 and `rating` <= 5),
  `comment` text NOT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `client_name`, `rating`, `comment`, `is_approved`, `created_at`) VALUES
(1, 'Sarah L.', 5, 'The team at VetSmart is absolutely wonderful. They took such great care of my dog, Buster. Highly recommended!', 1, '2025-08-28 16:26:57'),
(2, 'Mark T.', 5, 'Dr. Smith is incredibly knowledgeable and compassionate. I wouldn\'t trust anyone else with my pets. The new online system is so convenient!', 1, '2025-08-28 16:26:57'),
(3, 'Jessica P.', 4, 'A very clean and professional clinic. The staff was friendly and answered all my questions. The appointment booking was seamless.', 1, '2025-08-28 16:26:57'),
(4, 'Hello Mama asaani', 3, 'Shamila liyanarachchige nangi, ishwara deyyange wife.', 1, '2025-08-28 16:35:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `role` enum('client','admin') NOT NULL DEFAULT 'client',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `full_name`, `email`, `password`, `phone_number`, `address`, `role`, `created_at`) VALUES
(1, 'Susara Senarathne', 'suz.x2006@gmail.com', '$2y$10$MF0qnX04C7Oc82/jAiRLr.3HvG2GZ8Wd1USTfF2OFScoRNsqIj5.e', '0761407875', '79, Dambakanda Estate\\\\\\\\r\\\\\\\\nBoyagane', 'client', '2025-08-23 07:41:26'),
(2, 'Admin User', 'admin@gmail.com', '$2y$10$jhCqJKKMv9gn4V8iNHVKEu6nTpnxlXV3Zt6JgJQuCPd6pCLRQXISO', '0761407878', NULL, 'admin', '2025-08-23 07:59:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`appointment_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `pet_id` (`pet_id`),
  ADD KEY `vet_id` (`vet_id`);

--
-- Indexes for table `chatbot_responses`
--
ALTER TABLE `chatbot_responses`
  ADD PRIMARY KEY (`response_id`);

--
-- Indexes for table `illnesses`
--
ALTER TABLE `illnesses`
  ADD PRIMARY KEY (`illness_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`pet_id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `appointment_id` (`appointment_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `chatbot_responses`
--
ALTER TABLE `chatbot_responses`
  MODIFY `response_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `illnesses`
--
ALTER TABLE `illnesses`
  MODIFY `illness_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pets`
--
ALTER TABLE `pets`
  MODIFY `pet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`pet_id`) REFERENCES `pets` (`pet_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appointments_ibfk_3` FOREIGN KEY (`vet_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;

--
-- Constraints for table `pets`
--
ALTER TABLE `pets`
  ADD CONSTRAINT `pets_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`appointment_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
