-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2019 at 05:46 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `technified`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `created_at`) VALUES
(1, 5, 'Post One', 'THis is the first post', '2019-03-14 14:11:47'),
(2, 5, 'Post Two', 'This is the second post', '2019-03-14 14:11:47'),
(3, 9, 'Post Three', 'This is the third post', '2019-03-14 16:45:28'),
(4, 9, 'Post Four', 'The fourth of them', '2019-03-14 16:50:04'),
(5, 9, 'New One', 'hldsh wkdjfldfliuvdsvsil', '2019-03-14 16:52:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'Olu Dayo', 'oludayo@email.com', '123456', '2019-03-14 08:50:24'),
(2, 'Patrick Ife', 'ife@email.com', '123456', '2019-03-14 08:50:43'),
(3, 'Charles Chukwuoma', 'charles@example.com', '$2y$10$0WDP3Nfb7HzatOyJnBtum.G2VvxZIsFdYM.z9Hgo9iW68QcBF9aI2', '2019-03-14 09:44:08'),
(4, 'Hassan Usman', 'usman@user.com', '$2y$10$zbrwMfXV6NFs2nwGU9w2O.D1yAJnOyKNLd1.OPAQtRGrv1kjn7qqa', '2019-03-14 09:55:21'),
(5, 'Chigo', 'chi@me.com', '$2y$10$QFYTjWdvlHTxazy5RBswyeD2ApvPSH724G/oybP35Hp.Xnd29ciBi', '2019-03-14 10:17:25'),
(6, 'Meeeeeeeee', 'chi2@me.com', '$2y$10$XeONrWL3tOHskccAMGvx5uFE9dyyqX14viIdjCQp4HkuWOeWBkvMi', '2019-03-14 10:31:50'),
(7, 'Ade', 'ade@example.com', '$2y$10$BilgMZFUjkfcygWfQxLJIOeFknjDHx/D8ensQKqSxoIfHyNEPVRBu', '2019-03-14 10:33:38'),
(8, 'Mozart', 'mo@ex.com', '$2y$10$.S8LhC20M04hMf4EkQW8CODB906HBFc/oKm636CZNAltb6ObX8pmi', '2019-03-14 11:18:55'),
(9, 'IB', 'ib@me.com', '$2y$10$zsMAqA823njPHjkLSf17ieK1ci25N9UHD2fj/2EstHAcZnaR8yxQK', '2019-03-14 11:23:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
