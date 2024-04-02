-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 02 avr. 2024 à 10:20
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `jobboard`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'adminfirst', 'admin1@gmail.com', '$2y$12$TxIlCW7oI7OtyrPLi./m3eaFyqvyRJ/7zwdwzgVqsF9AjMxuqFaXW', '2024-03-30 18:25:25', '2024-03-30 18:25:25'),
(5, 'adminsecond', 'admin2@admin.com', '$2y$12$YhkiqXF3NKNM7BGamtp5c.I3ryxoycBcqdQErJRgpeSkqhK6ha.RK', '2024-03-30 22:28:50', '2024-03-30 22:28:50'),
(7, 'adminthree', 'admin3@gmail.com', '$2y$12$eUfHZcsmpkPa4RejT9pucek/HWtO9Cb6bKTgsOCggsbHCA6zr.95O', '2024-04-02 07:28:25', '2024-04-02 07:28:25');

-- --------------------------------------------------------

--
-- Structure de la table `applications`
--

CREATE TABLE `applications` (
  `id` int(10) NOT NULL,
  `cv` varchar(200) NOT NULL,
  `job_id` int(10) DEFAULT NULL,
  `user_id` int(10) NOT NULL,
  `email` varchar(200) NOT NULL,
  `job_image` varchar(200) NOT NULL,
  `job_title` varchar(200) NOT NULL,
  `job_region` varchar(200) NOT NULL,
  `company` varchar(200) NOT NULL,
  `job_type` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `applications`
--

INSERT INTO `applications` (`id`, `cv`, `job_id`, `user_id`, `email`, `job_image`, `job_title`, `job_region`, `company`, `job_type`, `created_at`, `updated_at`) VALUES
(1, 'AYOUB_MOTEI _English CV.pdf', 2, 1, 'ayoub.motei@gmail.com', 'job_logo_3.jpg', 'Front end Developper', 'Casablanca', 'Amazon', 'Part Time', '2024-03-31 22:48:44', '2024-03-31 22:48:44'),
(2, 'AYOUB_MOTEI _English CV.pdf', 1, 1, 'ayoub.motei@gmail.com', 'job_logo_1.jpg', 'Product Designer', 'New York', 'Adidas', 'Full Time', '2024-04-01 19:28:50', '2024-04-01 19:28:50');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Programming', '2024-03-28 16:08:48', '2024-03-28 16:08:48'),
(2, 'Design', '2024-03-28 16:08:48', '2024-03-28 16:08:48');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(10) NOT NULL,
  `job_title` varchar(200) NOT NULL,
  `job_region` varchar(200) NOT NULL,
  `company` varchar(200) NOT NULL,
  `job_type` varchar(200) NOT NULL,
  `vacancy` varchar(200) NOT NULL,
  `experience` varchar(2000) NOT NULL,
  `salary` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `application_deadline` varchar(200) NOT NULL,
  `job_description` varchar(2000) NOT NULL,
  `responsibilities` varchar(2000) NOT NULL,
  `education_experience` varchar(2000) NOT NULL,
  `otherbenifits` varchar(2000) NOT NULL,
  `image` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `jobs`
--

INSERT INTO `jobs` (`id`, `job_title`, `job_region`, `company`, `job_type`, `vacancy`, `experience`, `salary`, `gender`, `application_deadline`, `job_description`, `responsibilities`, `education_experience`, `otherbenifits`, `image`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Product Designer ', 'New York', 'Adidas', 'Full Time', '2', '2 to 3 year(s)', '$60k - 100k', 'Any', 'March 29,2024', 'We\'re hiring a talented Product Designer to conceptualize and create innovative designs aligned with our vision and user needs. You\'ll collaborate with cross-functional teams to develop intuitive inte', '\r\nThe Product Designer is responsible for creating innovative product designs that meet company vision and user needs, collaborating with cross-functional teams to develop intuitive interfaces, conduc', 'The ideal candidate will have a Bachelor\'s degree in Design, Human-Computer Interaction, or a related field. Previous experience in product design, preferably in a tech or software development environ', 'We offer competitive compensation, opportunities for professional growth and development, and a collaborative work environment where your contributions are valued and recognized. Additionally, employe', 'job_logo_1.jpg', 'Design', '2024-03-28 15:55:02', '2024-03-28 15:55:35'),
(2, 'Front end Developper', 'Casablanca', 'Amazon', 'Part Time', '2', '2 to 3 year(s)', '$60k -$100k', 'Any ', 'April29,2024', 'We\'re looking for a skilled Front-End Developer to join our team. As a Front-End Developer, you\'ll play a crucial role in building and maintaining user-facing web applications. You\'ll collaborate clos', 'The Front-End Developer role involves collaborating with designers and back-end developers to implement user-friendly interfaces and responsive designs, writing clean, efficient, and maintainable code', 'The ideal candidate will have a Bachelor\'s degree in Computer Science, Web Development, or a related field. Previous experience as a Front-End Developer or in a similar role is highly desirable. Profi', 'In addition to competitive compensation, we offer a range of benefits including health insurance, retirement plans, and flexible work hours. You\'ll have the opportunity to work on exciting projects an', 'job_logo_3.jpg', 'Programming', '2024-03-28 16:29:46', '2024-03-28 16:29:46');

-- --------------------------------------------------------

--
-- Structure de la table `jobsaved`
--

CREATE TABLE `jobsaved` (
  `id` int(10) NOT NULL,
  `job_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `job_image` varchar(200) NOT NULL,
  `job_title` varchar(200) NOT NULL,
  `job_region` varchar(200) NOT NULL,
  `job_type` varchar(200) NOT NULL,
  `company` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `jobsaved`
--

INSERT INTO `jobsaved` (`id`, `job_id`, `user_id`, `job_image`, `job_title`, `job_region`, `job_type`, `company`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'job_logo_3.jpg', 'Front end Developper', 'Casablanca, Morocco', 'Part time', 'Amazon', '2024-03-28 18:39:14', '2024-03-28 19:39:14'),
(3, 1, 1, 'job_logo_1.jpg', 'Product Designer', 'New York,New York', 'full time', 'Adidas', '2024-03-29 15:06:22', '2024-03-29 16:06:22'),
(4, 2, 2, 'job_logo_3.jpg', 'Front end Developper', 'Casablanca', 'Part Time', 'Amazon', '2024-03-31 22:06:49', '2024-04-01 00:06:49'),
(5, 2, 3, 'job_logo_3.jpg', 'Front end Developper', 'Casablanca', 'Part Time', 'Amazon', '2024-04-01 22:23:11', '2024-04-02 00:23:11'),
(6, 2, 5, 'job_logo_3.jpg', 'Front end Developper', 'Casablanca', 'Part Time', 'Amazon', '2024-04-02 07:22:58', '2024-04-02 09:22:58');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `searches`
--

CREATE TABLE `searches` (
  `id` int(10) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `searches`
--

INSERT INTO `searches` (`id`, `keyword`, `created_at`, `updated_at`) VALUES
(1, 'Software Engineer', '2024-03-30 00:38:42', '2024-03-30 00:38:42'),
(2, 'Designer', '2024-03-30 00:49:09', '2024-03-30 00:49:09'),
(3, 'Developper', '2024-03-30 00:50:15', '2024-03-30 00:50:15'),
(4, 'Developper', '2024-03-30 01:03:50', '2024-03-30 01:03:50'),
(5, 'Developper', '2024-03-30 01:05:39', '2024-03-30 01:05:39'),
(6, 'Designer', '2024-03-30 01:08:51', '2024-03-30 01:08:51'),
(7, 'Teacher', '2024-03-30 01:05:39', '2024-03-30 01:05:39'),
(8, 'Teacher', '2024-03-30 01:05:39', '2024-03-30 01:05:39'),
(9, 'Designer', '2024-03-30 01:03:50', '2024-03-30 01:03:50'),
(10, 'Teacher', '2024-03-30 01:05:39', '2024-03-30 01:05:39'),
(11, 'Product Designer', '2024-03-31 22:44:57', '2024-03-31 22:44:57'),
(12, 'Product Designer', '2024-03-31 22:45:28', '2024-03-31 22:45:28'),
(13, 'Product Designer', '2024-03-31 22:54:02', '2024-03-31 22:54:02'),
(14, 'Product Designer', '2024-03-31 22:54:12', '2024-03-31 22:54:12'),
(15, 'Product Designer', '2024-04-01 19:28:40', '2024-04-01 19:28:40'),
(16, 'Product Designer', '2024-04-01 22:20:45', '2024-04-01 22:20:45');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(200) NOT NULL DEFAULT 'pic.png',
  `cv` varchar(200) NOT NULL DEFAULT 'No cv',
  `job_title` varchar(200) NOT NULL DEFAULT 'No job title',
  `bio` text NOT NULL DEFAULT 'No bio',
  `twitter` varchar(200) NOT NULL DEFAULT 'No twitter',
  `facebook` varchar(200) NOT NULL DEFAULT 'No facebook',
  `linkedin` varchar(200) NOT NULL DEFAULT 'No linkedin',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `image`, `cv`, `job_title`, `bio`, `twitter`, `facebook`, `linkedin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'AYOUB', 'ayoub.motei@gmail.com', NULL, '$2y$12$TxIlCW7oI7OtyrPLi./m3eaFyqvyRJ/7zwdwzgVqsF9AjMxuqFaXW', 'pic.png', 'AYOUB_MOTEI _English CV.pdf', 'Software Engineer', 'Ayoub is a skilled software engineer specializing in Java, Python, and JavaScript, with a Bachelor\'s degree in Computer Science and three years of experience. Passionate about innovation and efficiency, Ayoub excels in crafting scalable software solutions and staying at the forefront of technology trends.', 'https://twitter.com/ayoub_motei', 'https://www.facebook.com/profile.php?id=100004505536879', 'https://www.linkedin.com/in/ayoub-motei/', NULL, '2024-03-28 12:30:01', '2024-03-29 19:09:33'),
(4, 'demo', 'demo@gmail.com', NULL, '$2y$12$2EhnLrowtDoUz6iKpNI39.5A/ED9uvXM7XjQxtZF59pP6iUnoe5.y', 'pic.png', 'No cv', 'No job title', 'No bio', 'No twitter', 'No facebook', 'No linkedin', NULL, '2024-04-02 07:20:22', '2024-04-02 07:20:22'),
(5, 'sarah', 'sarah@gmail.com', NULL, '$2y$12$I1vxrxClctFukYR/sHGa3.6aAvNNthxruylDK4A1FP.P2iyrB7Kzq', 'pic.png', 'AYOUB_MOTEI _English CV.pdf', 'Data Scientist', 'Sarah is a proficient data scientist with expertise in machine learning, data analysis, and statistical modeling. She holds a Master\'s degree in Data Science and has been working in the field for four years. Sarah is dedicated to leveraging data-driven insights to solve complex problems and drive business growth.', 'https://twitter.com/sarah_datasci', 'https://www.facebook.com/sarah_ds', 'https://www.linkedin.com/in/sarah-data-scientist', NULL, '2024-04-02 07:22:00', '2024-04-02 07:26:15');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jobsaved`
--
ALTER TABLE `jobsaved`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `searches`
--
ALTER TABLE `searches`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `jobsaved`
--
ALTER TABLE `jobsaved`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `searches`
--
ALTER TABLE `searches`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
