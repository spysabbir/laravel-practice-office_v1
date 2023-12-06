-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2023 at 09:56 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-practice-office_v1`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `state_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`, `created_at`, `updated_at`) VALUES
(1, 'Miami', 1, '2023-12-02 22:54:16', '2023-12-02 22:54:16'),
(2, 'Tampa', 1, '2023-12-02 22:54:16', '2023-12-02 22:54:16'),
(3, 'Jessore', 2, '2023-12-02 22:54:16', '2023-12-02 22:54:16'),
(4, 'Jhenaidha', 2, '2023-12-02 22:54:16', '2023-12-02 22:54:16');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'United State', '2023-12-02 22:54:16', '2023-12-02 22:54:16'),
(2, 'Bangladesh', '2023-12-02 22:54:16', '2023-12-02 22:54:16');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Aliquam deserunt quas laboriosam reiciendis sint voluptas ut. Est exercitationem et corrupti voluptas qui ea sequi enim. Reiciendis mollitia numquam eum est voluptatum.', 'Labore vero autem qui praesentium. Culpa et et sint atque et non minus. Commodi et rem eos aut fuga vero. Mollitia et sed inventore incidunt.', '2023-12-02 22:16:39', '2023-12-02 22:16:39'),
(2, 'Eos et rerum repellat ab adipisci. In qui qui laborum. Minus rerum est doloremque non voluptas. Aperiam cum quis et quo consequatur dolore.', 'Quia magnam repellendus amet excepturi illo et mollitia voluptate. Vel reiciendis consequatur aut praesentium eaque facere. Sequi culpa incidunt qui est cum.', '2023-12-02 22:16:39', '2023-12-02 22:16:39'),
(3, 'Porro rerum mollitia fugit assumenda ex ad aut deleniti. In asperiores incidunt blanditiis quasi. Ea ut earum dignissimos. Quidem omnis dolores sint.', 'Suscipit et corrupti laborum ea omnis aliquid. Repellat similique voluptates qui id culpa placeat. Aut voluptates mollitia aut.', '2023-12-02 22:16:39', '2023-12-02 22:16:39'),
(4, 'Praesentium repellat autem dolor qui. Aspernatur perferendis aut repellat qui eos omnis. Laboriosam nihil nulla ut laboriosam minima architecto vel. Est dolores error ex officia.', 'Beatae est eligendi excepturi nihil nisi facere. Sit quisquam omnis et. Et maxime numquam fugit quam voluptas harum vel.', '2023-12-02 22:16:39', '2023-12-02 22:16:39'),
(5, 'Rerum aut exercitationem aut voluptatum. Et qui neque aut qui qui maxime accusantium. Rerum voluptatem perferendis nostrum libero et aut. Et et ducimus itaque cumque quisquam architecto excepturi.', 'Atque officia et excepturi doloremque laboriosam facere. Non assumenda asperiores sapiente maxime eveniet deleniti. Soluta veritatis accusamus neque molestias architecto.', '2023-12-02 22:16:39', '2023-12-02 22:16:39'),
(6, 'Illum voluptate fugiat cumque et. Et amet occaecati et nobis. Iste vero nam voluptatem ullam expedita atque mollitia. Quam necessitatibus et tenetur quia labore.', 'Odio ducimus amet est sequi quia autem harum. Quis labore ratione reiciendis sint eum provident. Est dolores nobis illum rerum harum corporis. Voluptate repudiandae odit architecto officia.', '2023-12-02 22:16:39', '2023-12-02 22:16:39'),
(7, 'Ex qui aspernatur aperiam ut recusandae. Repellat maxime illo voluptate porro. Quo magni sit aut quas molestiae deleniti omnis.', 'Voluptas iusto quisquam ut placeat. Tempore recusandae aperiam sint eum. Nam dolorem omnis vero.', '2023-12-02 22:16:39', '2023-12-02 22:16:39'),
(8, 'Consequatur vel delectus velit. Facilis placeat eos alias iure et sunt culpa. Quibusdam porro officiis aliquid ipsa blanditiis in voluptatem. Enim rem pariatur sapiente eligendi.', 'Enim fugit qui aut dolorum consequuntur eum. Possimus cupiditate aliquid eum rerum eius sed nostrum. A asperiores id et.', '2023-12-02 22:16:39', '2023-12-02 22:16:39'),
(9, 'Cumque iste sed esse ea. Soluta excepturi fugiat qui in dolorem esse vel. Impedit voluptatibus ea dolor unde.', 'Doloremque quia est qui laborum velit mollitia. Asperiores adipisci nostrum et cupiditate accusamus earum molestiae. Modi temporibus illum ut est. Nulla occaecati temporibus qui accusantium necessitatibus facilis.', '2023-12-02 22:16:39', '2023-12-02 22:16:39'),
(10, 'Ipsa omnis iusto saepe id deserunt sed quis. Ex corporis nesciunt quia suscipit libero. Veniam corporis qui et animi laboriosam dolorem.', 'Dolores nemo ea sit. Consequuntur aut in quia sed fugiat atque quia. Nisi debitis itaque eaque aut qui quia distinctio explicabo. Odio magni impedit omnis quis.', '2023-12-02 22:16:39', '2023-12-02 22:16:39'),
(11, 'A minus consectetur autem. Accusantium exercitationem id eum nostrum molestiae. Eum facere ut velit aliquam aspernatur perspiciatis.', 'Porro nulla et placeat maiores. Nemo corporis enim eaque pariatur. Est adipisci molestiae eos odit ex doloremque sint.', '2023-12-02 22:16:39', '2023-12-02 22:16:39'),
(12, 'Necessitatibus vel nulla rerum maiores voluptas. Quo porro ipsum culpa laborum illo rerum in sequi. Aut praesentium quisquam et ipsam officiis. Ullam voluptate quis non praesentium quia ut.', 'Provident ut natus expedita est totam ipsa. Nobis fugit fugiat quibusdam nihil veritatis. Itaque illo aut unde architecto aliquam et.', '2023-12-02 22:16:39', '2023-12-02 22:16:39'),
(13, 'Sequi minus saepe delectus quod consequatur rem dolorem. Est nesciunt sint fuga eligendi atque repellat. Et ad ipsam ut pariatur. Hic magnam in sunt aut.', 'Repudiandae officia omnis quo est ut cumque. Eum consequatur ad et odit quo ea. Et unde voluptatum facere neque. Quis consequatur eaque est ea qui aut.', '2023-12-02 22:16:39', '2023-12-02 22:16:39'),
(14, 'Neque aut quia quasi sed officiis explicabo qui. Quasi at dicta voluptatibus. Mollitia quod itaque incidunt rerum labore hic.', 'Illo cupiditate vero est vel delectus. Odit nihil quas eum quia tempora quo. Voluptate deserunt cumque nobis ullam assumenda optio. In et neque voluptatum qui unde.', '2023-12-02 22:16:39', '2023-12-02 22:16:39'),
(15, 'Nostrum veniam consequatur corporis voluptatibus. Aut fugit amet ipsum. Sit nam minus possimus id corporis. Culpa aspernatur neque officia cum illo officia sint.', 'Rerum porro aperiam et dolorum voluptatem vel. Molestias sint veniam natus. Quaerat repellat magni placeat. Fugiat dicta reprehenderit voluptatem magni.', '2023-12-02 22:16:39', '2023-12-02 22:16:39'),
(16, 'Qui ut voluptatem esse qui harum debitis. Quidem atque rem nihil et. Odio et voluptates facere non nesciunt veritatis. Et accusantium eaque ut cum sed.', 'Molestiae quis voluptatum accusantium fugiat veritatis. Earum eum quis non quae quo. Facilis quia voluptatibus assumenda excepturi incidunt aut veniam.', '2023-12-02 22:16:40', '2023-12-02 22:16:40'),
(17, 'Et culpa voluptatem et officia et ut. Quidem repudiandae quae hic repellat sint. Inventore iusto assumenda neque qui. Quo eum dignissimos incidunt et aut.', 'Delectus sed ea earum et voluptatem dolores. Ut vero est et dolorum. Eos adipisci vel suscipit neque ullam excepturi necessitatibus. Ut aspernatur et adipisci omnis iusto ex hic.', '2023-12-02 22:16:40', '2023-12-02 22:16:40'),
(18, 'Ea voluptate sint voluptatem et quibusdam nemo sed. Magnam quasi quo est quam pariatur sit aut. Et consequatur possimus et. Magni magnam voluptatibus sit reprehenderit eaque.', 'Perferendis quibusdam facere enim et rerum. Ullam sunt totam laudantium corporis. Dolore ut perferendis dolorem eum sint aut. Modi et dolore adipisci laborum qui.', '2023-12-02 22:16:40', '2023-12-02 22:16:40'),
(19, 'Sequi quas quia ab assumenda ratione. Voluptatem ut quos sint ducimus. Totam sunt iure aliquam aliquam qui voluptatem. Velit dolorum ipsum architecto ea quis.', 'Ut aut quaerat itaque. Velit similique perferendis voluptatem quo eveniet qui vel. Earum occaecati et distinctio et dignissimos suscipit quia velit. Ut est recusandae reiciendis ducimus minima ut. Numquam saepe dolores minus nesciunt dolore voluptatem.', '2023-12-02 22:16:40', '2023-12-02 22:16:40'),
(20, 'Voluptatum quia sint eaque sed in et. Quia autem esse magni hic est consectetur. Consectetur et odio reiciendis voluptates facere esse est. Ea sint omnis et.', 'Praesentium aut praesentium ea amet expedita id pariatur. Cum quam facilis perferendis quas rerum ut. Et hic et amet id eos. Vel minus ut velit sint. At totam molestiae quo consequatur.', '2023-12-02 22:16:40', '2023-12-02 22:16:40');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_28_090652_create_users_verify_tokens_table', 2),
(6, '2023_11_28_105732_create_posts_table', 3),
(7, '2023_11_29_041315_add_birthdate_column_to_users_table', 4),
(8, '2023_12_03_040400_create_items_table', 5),
(9, '2023_12_03_043136_create_countries_table', 6),
(10, '2023_12_03_043206_create_states_table', 6),
(11, '2023_12_03_043214_create_cities_table', 6),
(12, '2023_12_04_095031_create_products_table', 7),
(13, '2023_12_05_094105_create_students_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Ratione blanditiis expedita quidem nulla illum nemo. Facere debitis deserunt distinctio optio aut tempore voluptas. Quo laboriosam sunt rerum sed odio commodi.', 'explicabo-quod-alias-illo-libero-deleniti-eveniet-a-quo-autem-non-ut-et-vel-quos-magni-explicabo-maiores-ut-explicabo-corrupti-quos-dolorem-sed-consequatur-dolor-voluptates-consectetur-a', 'Ullam dolores nihil veniam excepturi voluptatem nesciunt. Nihil rem animi sit ut corrupti ut et. Non minima rerum aut neque aperiam necessitatibus quisquam. Tempora odio deserunt ut perspiciatis ut sint velit nihil.', '2023-11-28 05:01:29', '2023-11-28 05:01:29'),
(2, 'Illo dolores vitae voluptatem nobis sit assumenda non. Quaerat eos non amet aut sit incidunt quas optio. Quia dolor sed ut quod.', 'hic-enim-illo-error-in-blanditiis-enim-et-omnis-et-perspiciatis-est-velit-velit-quo-minima-pariatur-nobis-tenetur-ullam-et-inventore-eligendi-expedita-non-reiciendis-quia-quas-est', 'Possimus dolore non accusamus libero. Blanditiis veniam est sunt eum vero similique sit eos. Culpa placeat laboriosam fuga id magni. Tenetur debitis et earum iste.', '2023-11-28 05:01:29', '2023-11-28 05:01:29'),
(3, 'Ex et magnam omnis voluptates ut nam rem. Odit porro odit et voluptas assumenda deleniti quidem. Soluta adipisci enim voluptates.', 'eveniet-quos-dolorem-sed-velit-minima-aperiam-et-est-numquam-corrupti-nobis-cum-recusandae-cum-dolor-explicabo-sapiente-ipsum-perspiciatis-commodi-qui-iste-numquam-velit-reiciendis-quam-vel', 'Et assumenda dignissimos ad. Id id voluptatem impedit dolor. Omnis est enim eius quas adipisci iusto ducimus enim. Id fugit sed eos autem minima est magni.', '2023-11-28 05:01:29', '2023-11-28 05:01:29'),
(4, 'Repellendus quia eum ut explicabo facere. Nesciunt et et adipisci et voluptatem quaerat non. Omnis et ut numquam perspiciatis qui perferendis doloribus. Nobis quis dolores cum animi qui ipsum rerum.', 'tempora-et-hic-repellat-qui-at-tenetur-laboriosam-nostrum-molestias-pariatur-consequuntur-corrupti-maxime-quae-est-rerum-eos-et-itaque-earum-facere-voluptas-temporibus-a-voluptas-aut-repellendus', 'Quae consectetur dolorem enim ut omnis vero esse. Quibusdam voluptatem voluptas ut et eos. Et dolorum tempora quas consequatur rerum facilis odio. Aut laboriosam voluptatem fugiat totam. Eaque itaque et veritatis et.', '2023-11-28 05:01:30', '2023-11-28 05:01:30'),
(5, 'Aut debitis in quibusdam qui tempore. Ea et facilis esse et eos id reiciendis. Laudantium et et dolores assumenda velit inventore quam. Quo atque aspernatur laborum quos.', 'eaque-perspiciatis-omnis-quibusdam-et-voluptatem-et-libero-harum-architecto-voluptas-quam-eum-deserunt-et-ex-ut-natus', 'Aut nihil id veritatis nihil sunt dolores. Corrupti ut exercitationem omnis consequatur quasi officiis et. Rerum voluptatem consequatur non sit quia libero.', '2023-11-28 05:01:30', '2023-11-28 05:01:30'),
(6, 'A consequatur sit vitae aut laudantium impedit qui. Repellat aut non et molestias quos ut et aut. Et omnis sed dicta consequatur minima sequi. Pariatur sed et quia fugit.', 'velit-ipsa-et-et-adipisci-dolores-inventore-voluptas-voluptatem-laboriosam-laudantium-modi-voluptas-eaque-vero-maiores-saepe-rerum-at-sapiente-occaecati-nihil-excepturi-animi-quis-et-adipisci', 'Est dolores eligendi omnis maxime nobis. Et voluptatum sapiente asperiores. Ut aliquid neque doloribus ipsa saepe. Vel id est aut voluptate recusandae nisi animi blanditiis. Accusamus doloribus et sed incidunt ullam doloremque dicta.', '2023-11-28 05:01:30', '2023-11-28 05:01:30'),
(7, 'Quae iste repellendus occaecati unde porro quia beatae. Tempore accusamus voluptatem quia molestiae alias iusto iusto. Consequatur necessitatibus sit ut laboriosam aut eos perferendis.', 'qui-quia-repellat-debitis-accusamus-laboriosam-unde-culpa-eius-id-minima-non-quo-eaque-qui-quisquam-tempore', 'Porro dignissimos non laudantium ut fugiat possimus. Sunt et voluptas quasi occaecati tempora est modi dolore. Laudantium non exercitationem dolorum deleniti aliquid.', '2023-11-28 05:01:30', '2023-11-28 05:01:30'),
(8, 'Et dolorem odio hic est fugiat autem velit. Et quae odio et. Saepe voluptatem doloremque reprehenderit ut sunt quo. Voluptatem vitae et hic modi alias.', 'quo-aspernatur-sed-sunt-aut-quam-magnam-ut-enim-totam-similique-quos-illo-consectetur-iure-praesentium-velit-aut-omnis-quis-maxime', 'Unde distinctio odit perferendis veritatis. Ipsam similique cupiditate odio sed in ullam. Consequatur numquam in et rerum. Quas nisi blanditiis ad quidem quos earum ad cumque.', '2023-11-28 05:01:30', '2023-11-28 05:01:30'),
(9, 'Magnam vero cumque temporibus consequatur nam. Quo voluptate et velit.', 'earum-non-earum-nesciunt-aliquid-est-voluptates-et-dignissimos-veniam-similique-impedit-ut-odit-magnam-repellendus-officiis-rem', 'Earum ut eveniet ea. Aut aut unde iusto quis. Placeat blanditiis quos iusto quia fuga asperiores excepturi ipsam.', '2023-11-28 05:01:30', '2023-11-28 05:01:30'),
(10, 'Reiciendis fuga beatae sunt est ducimus laudantium. Voluptatem sed non culpa non quidem. Inventore temporibus corrupti incidunt vel quia nihil veritatis. Dolor delectus quae sit ea aperiam.', 'et-doloribus-est-debitis-voluptatem-harum-qui-suscipit-cum-officiis-commodi-eum', 'Ea in saepe eligendi magni. Quo amet repellendus quis quo. Aspernatur est voluptate nulla optio enim.', '2023-11-28 05:01:30', '2023-11-28 05:01:30'),
(11, 'Provident quia nam sint voluptatum consequatur harum officia libero. Et eveniet eligendi aliquam autem iste nobis et occaecati. Eos eum nihil sint dicta.', 'dolor-veniam-velit-et-dignissimos-suscipit-est-commodi-deserunt-nobis-nobis-nihil-dolorem-fugit-quia-tempora-pariatur-sed-reprehenderit-repudiandae-sit-qui-nemo', 'Nisi suscipit temporibus laudantium deleniti et pariatur. Placeat consequatur unde qui. Temporibus non ducimus non tempore sunt. Nisi similique veritatis laborum est necessitatibus consectetur sed.', '2023-11-28 05:01:30', '2023-11-28 05:01:30'),
(12, 'Magnam et consequatur quia accusantium quidem hic corporis. Magnam officia aperiam asperiores laboriosam accusantium sit.', 'quis-corporis-ab-facere-nihil-ratione-officiis-reprehenderit-enim-distinctio-nostrum-et-rerum-dolor-atque-alias-ex-qui-ut-perferendis-est-dicta-molestiae-est', 'Aperiam enim non vel cum quibusdam. Iusto quos non soluta accusamus velit nihil vitae est. Quibusdam delectus labore facilis repellendus qui aperiam officiis. Ut commodi ea ducimus deleniti.', '2023-11-28 05:01:30', '2023-11-28 05:01:30'),
(13, 'Eum vitae illum minima qui id eos ipsum fugiat. Adipisci quia neque ad. Ut quo sit ut ut esse.', 'ex-sunt-recusandae-recusandae-voluptatem-qui-velit-amet-vero-officia-est-est-nisi-aut-deleniti-et-impedit-distinctio-eaque-accusamus-rerum-ducimus-vero-quis-voluptatem', 'Natus nulla ipsum non culpa. Aut magnam dolores aspernatur id et voluptatem dignissimos. Magni praesentium quo occaecati consectetur. Ea aut sapiente dolore esse corporis voluptatem consequuntur. Deserunt neque nostrum dolorem rerum ut.', '2023-11-28 05:01:30', '2023-11-28 05:01:30'),
(14, 'Ut voluptas inventore minus sunt necessitatibus ipsum. Deleniti animi repellat dolores aut.', 'consectetur-omnis-est-eos-dolorem-quae-nobis-eius-inventore-doloremque-aut-vel-provident', 'Cupiditate dignissimos ab asperiores aliquam autem magni debitis. Aut iusto placeat fuga est velit maxime. Quam earum voluptas molestiae molestias provident iusto soluta. Dolore cumque corporis quibusdam.', '2023-11-28 05:01:30', '2023-11-28 05:01:30'),
(15, 'Et amet consequuntur optio enim deleniti. Et deserunt enim odio. Asperiores quia iusto quae harum velit vel. Laborum et ipsam et maxime.', 'beatae-vel-ipsa-ut-non-ut-consequatur-exercitationem-qui-exercitationem-aut-excepturi-magnam-expedita-adipisci-dignissimos-nostrum-est-illum-qui-ratione-reprehenderit-ut-ullam', 'Aliquid aliquam assumenda corrupti eos sequi. Libero molestias ut non dolor et. Excepturi veritatis tempore deleniti iure accusamus aut ut. Nobis id tenetur ea molestiae voluptatum in sit qui.', '2023-11-28 05:01:30', '2023-11-28 05:01:30'),
(16, 'Ut quis ex sit minus qui dignissimos. Labore numquam aut culpa quos. Accusantium sit officia dolor aut eveniet iusto enim sed.', 'et-hic-omnis-fuga-consectetur-cum-aut-iure-omnis-rerum-odit-placeat-qui-in-sapiente-minima-vel-ipsam-sed-aut', 'Quia et a magni consequatur libero velit nam qui. Est voluptatem sit quis qui tempore. Dolorem ipsam est velit repellendus dignissimos.', '2023-11-28 05:01:30', '2023-11-28 05:01:30'),
(17, 'Qui aperiam facilis recusandae iste. Qui sit ratione explicabo sunt. Esse voluptatibus beatae repellat ad est similique fuga.', 'voluptas-maxime-ipsa-natus-deleniti-voluptatem-dignissimos-et-quod-ut-eos-deleniti-et-est-sed-iure-ipsa-incidunt-voluptatem-dolores-ad-hic-repellendus-voluptatem', 'Aliquam nesciunt officiis quos neque possimus consectetur deleniti. Molestias consequatur velit accusantium voluptatum id. Repudiandae veritatis qui molestias accusamus possimus. Blanditiis quisquam minus eligendi deleniti beatae perferendis.', '2023-11-28 05:01:30', '2023-11-28 05:01:30'),
(18, 'Perspiciatis ut blanditiis debitis debitis est maxime dolorem. Alias molestiae quia minima mollitia. Aut ut laborum iusto repudiandae repellat ea reprehenderit.', 'expedita-molestiae-esse-quis-est-sit-reiciendis-sed-ea-maiores-et-libero-placeat-placeat-aut-repellendus-accusamus-qui-minima-dignissimos-qui-nihil-omnis-natus-delectus-quisquam', 'Vel aut non minus sunt cum architecto. Neque repellat repellendus nulla consequatur tempore. Voluptatem placeat qui quibusdam quia aliquid quam quo.', '2023-11-28 05:01:30', '2023-11-28 05:01:30'),
(19, 'Molestiae deserunt consequatur amet. Est nostrum qui odio ut a et doloribus. Est voluptatem harum aut ipsam veniam. Aperiam quaerat similique harum provident voluptatem.', 'explicabo-beatae-magni-quasi-perferendis-enim-est-sed-ut-sed-rem-optio-illo-ipsum-reiciendis-et-quaerat-fuga-aliquam-qui-aut-voluptatem-facilis-sequi-et-ipsum-praesentium', 'A voluptatibus aspernatur eos sed omnis doloribus. Minus consectetur repellat impedit placeat eaque aut cum. Quidem maiores possimus voluptatem voluptatum sed qui. Voluptate eveniet dolorem autem esse rem aut sit.', '2023-11-28 05:01:30', '2023-11-28 05:01:30'),
(20, 'Possimus distinctio sit qui delectus. Amet est fuga consequuntur similique quis dolorem consequatur. Aut asperiores assumenda perspiciatis.', 'vel-neque-corrupti-id-quasi-libero-quis-quas-praesentium-itaque-adipisci-magnam-aut-omnis-totam-sed-totam-repellat-repellendus-praesentium-accusamus-atque-porro-aut-itaque-est-voluptatem', 'Quasi officia nesciunt corrupti rem. Quidem voluptatem voluptas eos. Veritatis consequatur quo dolores. Tempora architecto nihil qui dolor explicabo.', '2023-11-28 05:01:30', '2023-11-28 05:01:30');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `detail` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 'Florida', 1, '2023-12-02 22:54:16', '2023-12-02 22:54:16'),
(2, 'Khulna', 1, '2023-12-02 22:54:16', '2023-12-02 22:54:16');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Sabbir1u', 'sabbir@gmail.comu', '2023-12-05 05:16:10', '2023-12-06 02:52:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `birthdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `birthdate`) VALUES
(8, 'Sabbir', 'sabbir@gmail.com', '2023-11-28 03:36:56', '$2y$12$EL1BNxE4CIo71O/oorfzcu7mSJZsu4NzqCTlWWE19MEIutiLIq5fy', NULL, '2023-11-28 03:36:29', '2023-11-28 03:36:56', NULL),
(9, 'Kailey Raynor', 'dion.kris@example.com', '2023-11-28 23:05:08', '$2y$12$Nmbl0cdgDdvDgx.xd8uK4.0FMExOs7An8ujznUniCNUaq4q0DrOki', 'O0PLkL5Psg', '2023-11-28 23:05:08', '2023-11-28 23:05:08', NULL),
(10, 'Javonte Kshlerin', 'mae.wuckert@example.com', '2023-11-28 23:05:08', '$2y$12$Nmbl0cdgDdvDgx.xd8uK4.0FMExOs7An8ujznUniCNUaq4q0DrOki', '3SzLS4Xlyj', '2023-11-28 23:05:08', '2023-11-28 23:05:08', NULL),
(11, 'Prof. Emelie Beatty', 'marjory.harris@example.org', '2023-11-28 23:05:09', '$2y$12$Nmbl0cdgDdvDgx.xd8uK4.0FMExOs7An8ujznUniCNUaq4q0DrOki', 'AnL4COb6WY', '2023-11-28 23:05:09', '2023-11-28 23:05:09', NULL),
(12, 'Gilberto Monahan', 'kiley33@example.org', '2023-11-28 23:05:09', '$2y$12$Nmbl0cdgDdvDgx.xd8uK4.0FMExOs7An8ujznUniCNUaq4q0DrOki', 'BIf533OZRW', '2023-11-28 23:05:09', '2023-11-28 23:05:09', NULL),
(13, 'Keith Wisozk', 'piper06@example.org', '2023-11-28 23:05:09', '$2y$12$Nmbl0cdgDdvDgx.xd8uK4.0FMExOs7An8ujznUniCNUaq4q0DrOki', 'Ef1bGgWnYA', '2023-11-28 23:05:09', '2023-11-28 23:05:09', NULL),
(14, 'Lenny Ritchie', 'haleigh.kertzmann@example.net', '2023-11-28 23:05:09', '$2y$12$Nmbl0cdgDdvDgx.xd8uK4.0FMExOs7An8ujznUniCNUaq4q0DrOki', '29ZBaragX3', '2023-11-28 23:05:09', '2023-11-28 23:05:09', NULL),
(15, 'Dedric Kulas', 'sipes.keshaun@example.org', '2023-11-28 23:05:09', '$2y$12$Nmbl0cdgDdvDgx.xd8uK4.0FMExOs7An8ujznUniCNUaq4q0DrOki', 'LsuCrPZS0r', '2023-11-28 23:05:09', '2023-11-28 23:05:09', NULL),
(16, 'Dr. Colt Volkman DVM', 'ppacocha@example.com', '2023-11-28 23:05:09', '$2y$12$Nmbl0cdgDdvDgx.xd8uK4.0FMExOs7An8ujznUniCNUaq4q0DrOki', 'szaYbLvopk', '2023-11-28 23:05:09', '2023-11-28 23:05:09', NULL),
(17, 'Nicole Tremblay V', 'vito57@example.net', '2023-11-28 23:05:09', '$2y$12$Nmbl0cdgDdvDgx.xd8uK4.0FMExOs7An8ujznUniCNUaq4q0DrOki', 'WMYU2H3lVB', '2023-11-28 23:05:09', '2023-11-28 23:05:09', NULL),
(18, 'Prof. Jerrold Johns Sr.', 'brendon61@example.com', '2023-11-28 23:05:09', '$2y$12$Nmbl0cdgDdvDgx.xd8uK4.0FMExOs7An8ujznUniCNUaq4q0DrOki', 'FflPmqEpzT', '2023-11-28 23:05:09', '2023-11-28 23:05:09', NULL),
(19, 'Ms. Adriana Adams', 'fwaelchi@example.com', '2023-12-04 04:42:29', '$2y$12$oACIsUrjngxK6HDFjjtH5euZu.w3Pni/iUCsFLUeO8CC33tIwicoW', 'Luzu0t0ALZ', '2023-12-04 04:42:30', '2023-12-04 04:42:30', NULL),
(20, 'Lacey Cole IV', 'ziemann.izabella@example.com', '2023-12-04 04:42:30', '$2y$12$oACIsUrjngxK6HDFjjtH5euZu.w3Pni/iUCsFLUeO8CC33tIwicoW', '9m3fbbzXGe', '2023-12-04 04:42:30', '2023-12-04 04:42:30', NULL),
(21, 'Mr. Cecil Metz', 'stephon.daniel@example.com', '2023-12-04 04:42:30', '$2y$12$oACIsUrjngxK6HDFjjtH5euZu.w3Pni/iUCsFLUeO8CC33tIwicoW', 'ohW9p3y82O', '2023-12-04 04:42:30', '2023-12-04 04:42:30', NULL),
(22, 'Jovan Schiller', 'mccullough.pauline@example.net', '2023-12-04 04:42:30', '$2y$12$oACIsUrjngxK6HDFjjtH5euZu.w3Pni/iUCsFLUeO8CC33tIwicoW', '27nsnx278y', '2023-12-04 04:42:30', '2023-12-04 04:42:30', NULL),
(23, 'Mr. Rosendo Hansen III', 'jevon.bernier@example.org', '2023-12-04 04:42:30', '$2y$12$oACIsUrjngxK6HDFjjtH5euZu.w3Pni/iUCsFLUeO8CC33tIwicoW', 'xz4FobKCQO', '2023-12-04 04:42:30', '2023-12-04 04:42:30', NULL),
(24, 'Mrs. Charity Dietrich', 'schroeder.dwight@example.org', '2023-12-04 04:42:30', '$2y$12$oACIsUrjngxK6HDFjjtH5euZu.w3Pni/iUCsFLUeO8CC33tIwicoW', 'BVPaDbaHmY', '2023-12-04 04:42:30', '2023-12-04 04:42:30', NULL),
(25, 'Kaitlyn Barton', 'stehr.darrell@example.net', '2023-12-04 04:42:30', '$2y$12$oACIsUrjngxK6HDFjjtH5euZu.w3Pni/iUCsFLUeO8CC33tIwicoW', 'iG3zsjvMZx', '2023-12-04 04:42:30', '2023-12-04 04:42:30', NULL),
(26, 'Prof. Bradford Toy PhD', 'strosin.gordon@example.org', '2023-12-04 04:42:30', '$2y$12$oACIsUrjngxK6HDFjjtH5euZu.w3Pni/iUCsFLUeO8CC33tIwicoW', 'hIAVAX0HAn', '2023-12-04 04:42:30', '2023-12-04 04:42:30', NULL),
(27, 'Prof. Wayne Beier', 'xyundt@example.net', '2023-12-04 04:42:30', '$2y$12$oACIsUrjngxK6HDFjjtH5euZu.w3Pni/iUCsFLUeO8CC33tIwicoW', '1dVRML4kJF', '2023-12-04 04:42:30', '2023-12-04 04:42:30', NULL),
(28, 'Miss Angela Gusikowski', 'wiley68@example.net', '2023-12-04 04:42:30', '$2y$12$oACIsUrjngxK6HDFjjtH5euZu.w3Pni/iUCsFLUeO8CC33tIwicoW', 'lM96CsVyRU', '2023-12-04 04:42:30', '2023-12-04 04:42:30', NULL),
(29, 'Emie Smith PhD', 'axel.walsh@example.org', '2023-12-04 04:42:30', '$2y$12$oACIsUrjngxK6HDFjjtH5euZu.w3Pni/iUCsFLUeO8CC33tIwicoW', '0TAIJcgP8J', '2023-12-04 04:42:30', '2023-12-04 04:42:30', NULL),
(30, 'Ashlee Koelpin', 'chet64@example.net', '2023-12-04 04:42:30', '$2y$12$oACIsUrjngxK6HDFjjtH5euZu.w3Pni/iUCsFLUeO8CC33tIwicoW', 'bG2sUzhvgo', '2023-12-04 04:42:30', '2023-12-04 04:42:30', NULL),
(31, 'Dr. Felicity Simonis', 'herminio36@example.net', '2023-12-04 04:42:30', '$2y$12$oACIsUrjngxK6HDFjjtH5euZu.w3Pni/iUCsFLUeO8CC33tIwicoW', 'JS3eMr1PlQ', '2023-12-04 04:42:30', '2023-12-04 04:42:30', NULL),
(32, 'Shea Monahan MD', 'glover.mack@example.org', '2023-12-04 04:42:30', '$2y$12$oACIsUrjngxK6HDFjjtH5euZu.w3Pni/iUCsFLUeO8CC33tIwicoW', 'auu7ETIOIt', '2023-12-04 04:42:30', '2023-12-04 04:42:30', NULL),
(33, 'Kendrick Reichel', 'gutmann.mathias@example.com', '2023-12-04 04:42:30', '$2y$12$oACIsUrjngxK6HDFjjtH5euZu.w3Pni/iUCsFLUeO8CC33tIwicoW', 'iPQXDj0ghF', '2023-12-04 04:42:31', '2023-12-04 04:42:31', NULL),
(34, 'Annabell Cummings', 'vito.hilpert@example.com', '2023-12-04 04:42:30', '$2y$12$oACIsUrjngxK6HDFjjtH5euZu.w3Pni/iUCsFLUeO8CC33tIwicoW', 'xuJfauuve5', '2023-12-04 04:42:31', '2023-12-04 04:42:31', NULL),
(35, 'Celine Fritsch', 'bechtelar.barton@example.org', '2023-12-04 04:42:30', '$2y$12$oACIsUrjngxK6HDFjjtH5euZu.w3Pni/iUCsFLUeO8CC33tIwicoW', 'tHkEAGghLA', '2023-12-04 04:42:31', '2023-12-04 04:42:31', NULL),
(36, 'Norwood Ziemann', 'winnifred.waelchi@example.net', '2023-12-04 04:42:30', '$2y$12$oACIsUrjngxK6HDFjjtH5euZu.w3Pni/iUCsFLUeO8CC33tIwicoW', '0jCzeGH75e', '2023-12-04 04:42:31', '2023-12-04 04:42:31', NULL),
(37, 'Darby Yundt Sr.', 'hoppe.shanny@example.net', '2023-12-04 04:42:30', '$2y$12$oACIsUrjngxK6HDFjjtH5euZu.w3Pni/iUCsFLUeO8CC33tIwicoW', 'Tke3HCMQtg', '2023-12-04 04:42:31', '2023-12-04 04:42:31', NULL),
(38, 'Oswaldo Abbott', 'lakin.una@example.org', '2023-12-04 04:42:30', '$2y$12$oACIsUrjngxK6HDFjjtH5euZu.w3Pni/iUCsFLUeO8CC33tIwicoW', 'Sutio50F9n', '2023-12-04 04:42:31', '2023-12-04 04:42:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_verify_tokens`
--

CREATE TABLE `users_verify_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_verify_tokens`
--
ALTER TABLE `users_verify_tokens`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
