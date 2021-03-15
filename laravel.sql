-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 15 2021 г., 14:19
-- Версия сервера: 5.6.43-log
-- Версия PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `laravel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_15_065749_create_suppliers_table', 1),
(5, '2021_03_15_065758_create_products_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_product` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_product` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost_product` int(11) NOT NULL,
  `supplier_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name_product`, `description_product`, `cost_product`, `supplier_id`, `created_at`, `updated_at`) VALUES
(1, 'Ms. Amaya Hoeger MD', 'Reiciendis necessitatibus iste aperiam. Iure quia autem et excepturi. Porro et enim quia et.', 8365, 6, '1996-09-17 18:32:13', '2010-11-16 10:29:35'),
(2, 'Demond Abshire', 'Voluptatem repudiandae sapiente voluptates exercitationem. Dolor corrupti pariatur similique amet sunt. Occaecati accusamus est culpa rerum est.', 6293, 2, '2002-05-17 03:22:31', '2018-09-14 06:56:25'),
(3, 'Mekhi Hammes III', 'Earum quaerat perspiciatis fugit ex. Non cum est saepe ut. Delectus in repellat tenetur.', 2091, 34, '2017-09-18 07:37:33', '1978-07-03 22:37:25'),
(4, 'Miss Darlene Runte Jr.', 'Unde earum culpa ipsa sit harum et. Qui ab minima recusandae et. Pariatur et qui sed earum incidunt.', 2540, 30, '1973-05-31 18:33:37', '1971-06-03 21:41:57'),
(5, 'Steve Kuvalis', 'Expedita odio quibusdam eaque delectus ipsa quia ipsum. Ut et omnis dolores aut molestiae aut natus. Dignissimos vero quasi impedit.', 1418, 34, '1984-01-31 05:10:50', '1977-09-21 00:25:23'),
(6, 'Elinore Grimes', 'Accusamus et officia vero quis sunt. Voluptas tempora ab quis in porro.', 4149, 12, '1985-08-23 16:54:28', '1995-11-28 02:32:59'),
(7, 'Justine Lebsack', 'Voluptatibus illum et qui quia autem tempore animi. Est ratione saepe rerum et.', 8728, 46, '1982-12-16 02:11:20', '2020-12-08 00:54:22'),
(8, 'Bethany Hammes', 'Officiis deserunt voluptatibus quisquam. Autem ipsam at harum rerum omnis vitae libero. Tenetur atque voluptas eius et.', 2570, 45, '1981-01-26 01:42:26', '1997-11-25 21:03:33'),
(9, 'Demarcus Jacobs', 'Sed minus impedit architecto iusto nulla. Quis et et excepturi sint. Sed repellat qui ipsa dolor minus. Magnam voluptas doloribus nam.', 3218, 29, '1978-12-31 20:18:43', '1975-11-29 12:44:58'),
(10, 'Tavares Miller', 'Qui sed vitae eveniet est dolorem eveniet. Amet consectetur saepe repellat aut placeat id. Quidem quisquam est tenetur. Voluptas ipsa suscipit qui.', 4189, 47, '1978-07-11 02:43:51', '1995-05-22 05:26:45'),
(11, 'Ari Wehner', 'Sed est error est sed exercitationem sit autem. Atque autem necessitatibus eos earum adipisci. Commodi quidem pariatur quia voluptatum.', 6467, 37, '2000-03-23 20:15:02', '1971-09-13 06:50:37'),
(12, 'Emilia Kuvalis', 'Accusamus nisi aut delectus omnis ea eaque ea. Quis rerum qui odio est ut. Error consequatur et et corrupti voluptatem non in a.', 5299, 46, '1997-10-12 10:51:35', '2015-05-29 22:29:34'),
(14, 'Isaiah Legros', 'Quibusdam sint quia ut. Molestias unde aut voluptas fuga vel dolorem. Illo odio vero quibusdam.', 6595, 22, '2016-09-25 00:51:17', '1992-05-07 16:53:56'),
(15, 'Payton Ortiz', 'Quae sint praesentium exercitationem aut. Beatae ad est ea eligendi perspiciatis id est. Quis dolor provident facilis.', 6028, 48, '2012-04-10 01:56:11', '1983-06-28 00:17:31'),
(16, 'Amely Rowe V', 'Repellendus eaque quam veritatis aliquam aut nam est iure. Ea eius velit qui atque consequatur. Placeat voluptates omnis ipsa qui qui et enim est.', 8366, 17, '2004-11-30 22:44:43', '1975-08-05 08:36:47'),
(17, 'Joy Bradtke', 'Officia odio accusantium maiores aut optio possimus quia. Tenetur distinctio explicabo id in tempore neque non. At qui molestiae maxime saepe illum.', 2282, 49, '1972-07-13 15:08:57', '2010-10-09 20:19:57'),
(18, 'Toy Dare', 'Consequuntur quia id eaque. Alias quos dignissimos nobis assumenda nihil. Beatae qui accusamus sequi totam explicabo eum. Accusamus sit est vitae.', 8046, 16, '2004-12-20 02:52:46', '2014-12-20 21:14:05'),
(19, 'Dr. Maxime Rosenbaum Sr.', 'Sunt iure possimus velit aut ut. Itaque laudantium aut quaerat dignissimos. Placeat unde et provident perspiciatis vel quo tenetur.', 3612, 10, '1978-03-19 07:05:30', '1982-10-19 23:32:02'),
(20, 'Jailyn Keeling PhD', 'Earum velit eaque facilis molestiae. Nisi odio modi totam non cupiditate natus. Illo quo sapiente sunt expedita quo est dolores.', 2995, 6, '2013-09-27 13:07:39', '1989-05-14 03:36:07'),
(21, 'Armando Wilderman', 'Soluta quae dolores voluptas officiis minima voluptatem. Ab ab et aut.', 5030, 22, '1994-06-17 08:37:07', '1995-07-12 11:50:29'),
(22, 'Adolf McDermott V', 'Provident repellendus quisquam ea dolorum. Quae atque assumenda molestiae minus officia culpa sunt. Illo possimus nostrum aperiam odio.', 2393, 20, '2009-03-12 04:48:59', '2007-12-11 20:13:06'),
(23, 'Lucas Zemlak', 'Laudantium ut pariatur blanditiis. Eligendi dolorum in sed dolor dolores aut animi.', 1835, 7, '2017-04-16 02:29:25', '1975-05-16 02:21:06'),
(24, 'Dr. Daron Bednar', 'Accusantium vero libero quis nihil. Suscipit soluta dicta aliquid aut vitae. Unde natus totam ipsum quaerat.', 4414, 5, '2018-05-13 04:09:06', '2020-02-17 07:12:29'),
(25, 'Glen Friesen', 'Enim nihil est illum aut consequatur ut et eum. Molestiae eaque eos non optio vitae adipisci. Reiciendis debitis dolorem autem aliquam.', 5908, 4, '1983-04-23 21:54:03', '2018-06-23 20:58:47'),
(26, 'Sim Spinka IV', 'Consequatur quo enim corrupti omnis et magnam et. Atque dolor adipisci qui placeat facilis a. Hic et dolorem est molestiae corporis.', 3385, 3, '2011-05-19 17:45:47', '1980-04-27 12:36:23'),
(27, 'Dr. Amie Blanda DDS', 'Tempora a necessitatibus odit et corporis velit amet veniam. Officia placeat doloremque et dolorem ut.', 7963, 27, '1997-09-11 10:17:45', '1984-10-03 04:31:25'),
(28, 'Jewell Feest', 'Sunt hic reprehenderit accusamus aliquam voluptate est. Ea voluptates amet ab ea. Ipsum sit animi autem repellendus perspiciatis.', 1963, 42, '1993-10-09 14:45:32', '1994-05-17 13:51:10'),
(29, 'Loma Ondricka Sr.', 'Facere sit ab voluptatem dolorem est quam nihil. Impedit similique officia sit nesciunt. Autem ab et suscipit dolor eum aliquid asperiores.', 3832, 14, '2017-09-17 17:52:01', '1974-06-02 07:10:09'),
(30, 'Stephanie Dare', 'Laudantium voluptatem praesentium id ipsa. Sed minus ex voluptatibus saepe ut. Optio ipsam repellendus corporis temporibus.', 5438, NULL, '1992-04-06 23:18:15', '1975-09-29 07:30:21'),
(31, 'Myrtie Wyman II', 'Aut voluptatem incidunt aut a. Omnis sit esse eligendi. Voluptas a quisquam facere hic. Et velit voluptatum vel et ipsum.', 2839, 8, '2011-03-16 06:58:51', '2012-06-04 01:41:39'),
(32, 'Daphney Stracke', 'Eos dolorem nobis repellat et earum est sed. Maxime alias consequatur ex. Voluptatem quibusdam laudantium ut omnis et rerum.', 6566, 29, '1991-09-20 13:45:21', '1994-10-12 22:20:26'),
(33, 'Roman Kris', 'Repudiandae expedita est et itaque. Ut sapiente vitae sit explicabo odit ut consequatur. Eum iste necessitatibus eos ullam omnis expedita nobis.', 2254, 50, '1988-11-26 23:00:23', '2000-01-26 01:03:29'),
(34, 'Jennie Borer', 'Ea nemo deleniti in. Quia omnis possimus iste nulla ut deleniti id.', 2303, 39, '1982-04-30 17:48:46', '1992-11-21 02:34:55'),
(35, 'Lucio Hackett', 'Quidem necessitatibus eos vel et vel omnis commodi. Totam voluptatem delectus expedita ut est. Consequatur ratione sint eos odio sequi.', 4114, 14, '2011-09-20 05:13:50', '1997-07-23 09:31:04'),
(36, 'Ms. Lottie Rowe', 'Eligendi perferendis dicta est sunt aut nulla et. Laborum quae nobis quaerat.', 4975, 49, '1973-03-01 10:14:15', '1988-02-28 23:38:06'),
(37, 'Mr. Monroe Mayert PhD', 'Animi eum modi voluptas quos omnis. Est sed rerum vero ea illum repudiandae. Ex modi similique magnam delectus placeat.', 8224, 35, '1981-12-13 12:35:42', '2006-08-17 00:44:27'),
(38, 'Mr. Jace Strosin III', 'Eaque corrupti ipsum voluptatem maiores repellat. Deleniti natus unde animi. Ab cupiditate dolore vero non ea.', 8669, 30, '1987-06-01 19:17:11', '1997-06-04 06:03:04'),
(39, 'Elenora Hill', 'Est aut et autem voluptate adipisci. Excepturi dolorem labore totam fuga rerum pariatur. Quia pariatur eum non eum recusandae.', 8658, 14, '1976-05-25 16:37:05', '2012-03-22 18:55:43'),
(40, 'Maybell Schaefer', 'Laudantium est aperiam voluptas praesentium quia. Dolor laborum ea dolor quasi voluptas quod autem. Qui ratione occaecati odit in magni.', 1106, 12, '2010-08-18 08:56:39', '1976-10-20 11:36:26'),
(41, 'Frances Davis', 'Quisquam unde iure voluptatem. Voluptas officiis expedita ipsum vel nisi. Aut recusandae repellat rem fugiat. Sunt et et deserunt eum nihil.', 6578, 23, '2013-03-30 20:10:28', '2012-03-07 02:36:50'),
(42, 'Stan Wunsch Sr.', 'Reiciendis qui ratione in sunt natus. Quasi consequatur unde eum aliquid aut voluptas. Officiis numquam rem ut ad.', 5719, 17, '2020-06-06 18:29:07', '2020-05-05 01:18:55'),
(43, 'Dr. Orpha Davis', 'Nam qui mollitia quia est unde quis. Ut neque autem labore. Qui aut ea voluptatem animi. Dolore eos qui facilis beatae fugit autem.', 4999, 28, '1970-10-21 15:32:15', '2001-05-09 07:13:18'),
(44, 'Prof. Timothy Bradtke I', 'Ullam iure fugiat recusandae eius ex. Quia enim et nostrum hic eos officiis accusamus nihil. Et doloribus in natus eligendi iusto voluptate.', 7483, 49, '1983-07-19 18:46:40', '2018-05-11 06:28:04'),
(45, 'Freda Harber', 'Repellat nisi aut deserunt veritatis perferendis quos esse. Voluptatum eos qui et unde. Nulla sit aut occaecati.', 5679, 7, '1974-11-04 15:03:53', '1990-11-28 05:55:04'),
(46, 'Kaya Bogisich Sr.', 'Suscipit cupiditate saepe incidunt voluptates ullam numquam. Ab qui sed explicabo nisi cumque incidunt ut. Perferendis delectus eos tempora magnam.', 8778, 40, '2004-09-20 21:28:34', '2012-12-13 20:03:14'),
(47, 'Dr. Mikel Hills DDS', 'A nisi soluta non ratione sint. Est distinctio quia asperiores sit natus. Reprehenderit rerum quia et iusto sint. Debitis totam eos et aut.', 6350, 12, '1984-03-29 23:39:52', '1981-03-31 18:07:04'),
(48, 'Miss Lydia Hudson', 'Architecto dolorem vitae ut non iusto praesentium. Error voluptatum aut et enim ad. Quaerat enim dolor officia libero asperiores excepturi maxime.', 3098, 9, '2010-05-06 04:33:37', '2006-07-22 11:25:01'),
(49, 'Miss Serena Schoen', 'Ullam aperiam rerum enim qui amet suscipit. Doloribus sapiente nihil eum omnis. Aperiam nihil eos ullam omnis.', 4486, 48, '2010-03-11 18:28:42', '1985-02-16 20:03:08'),
(50, 'Gudrun Olson PhD', 'Ut delectus et sit quod accusamus. Illo sit mollitia quis officia quam aut recusandae. Vel quaerat ea harum est.', 4067, 42, '1998-12-30 08:38:47', '2005-06-26 09:53:03'),
(51, 'Stanley Keeling', 'Suscipit maiores nulla in. Id dolorum possimus vel sit impedit doloribus.', 6810, 11, '2003-01-22 21:51:25', '1972-06-26 23:10:49'),
(52, 'Dr. Jake Wehner II', 'Reprehenderit est numquam et aliquam dicta. Commodi et minima nisi commodi. Dolorum sequi qui quae perspiciatis aspernatur blanditiis ea.', 6129, 17, '1983-08-15 06:03:16', '1974-05-16 20:49:49'),
(53, 'Abel Dicki', 'Atque ullam deleniti voluptas sit. Est sed quidem necessitatibus officiis voluptatem quis mollitia. Ut tenetur dolorem illo quo.', 2651, 4, '2011-10-04 03:43:53', '2012-04-13 08:57:02'),
(54, 'Opal Davis', 'Nostrum labore eum id accusamus illo consequatur. Voluptate voluptatem placeat totam ab qui. A aut a sed voluptate debitis qui et.', 2443, 1, '1995-03-26 16:19:10', '1988-01-24 16:55:44'),
(55, 'Dr. Abner Botsford PhD', 'Id aliquid cupiditate et. Aut velit ab dolorum. Vitae beatae aperiam quis dolore sed.', 8716, 16, '1984-05-10 18:40:43', '1975-03-05 15:00:01'),
(56, 'Olaf Morissette', 'Ab repudiandae explicabo repellat molestiae rerum. Est qui sit soluta dignissimos reprehenderit quis. Molestiae consequatur sed ut sequi eos.', 6919, 32, '1971-12-10 18:00:51', '2011-08-10 19:52:58'),
(57, 'Selina Pfeffer', 'Dolor sed asperiores a nostrum. Quisquam eius accusamus et ut iusto fugit quia. Eius iure praesentium libero magni et esse itaque.', 8683, 25, '1992-06-07 15:28:38', '1995-10-01 12:29:27'),
(58, 'Bryana Champlin', 'Qui maiores consectetur sit eos. Quo hic repudiandae similique autem. Odit laudantium ab dolorem eos. Id vel minima eum.', 1786, 32, '1984-03-25 20:23:58', '2002-05-19 11:21:16'),
(59, 'Naomie Fisher', 'Ut molestias ipsa occaecati natus minus. Ea nesciunt perspiciatis et hic. Est quidem dolorem quibusdam.', 7361, 20, '1977-02-15 20:30:25', '1989-06-20 17:28:10'),
(60, 'Ilene Boyer', 'Magni at magnam voluptates. Id qui asperiores veniam ipsum eaque. Voluptates molestias est quasi veritatis.', 2128, 33, '1972-02-19 20:03:43', '1978-01-29 06:39:13'),
(61, 'Dr. Ronaldo Dietrich II', 'Saepe illo dolorum aperiam officia qui sit exercitationem. Dolorem id soluta blanditiis voluptates. Reprehenderit esse incidunt quo et quia.', 6299, 50, '1999-08-07 12:26:31', '1981-04-17 17:30:22'),
(62, 'Marlee Tromp', 'Excepturi provident ut dolorum nisi. Ea perferendis quod molestias nemo ut at reiciendis. Qui alias quo maxime laboriosam accusamus officiis sit.', 3761, 2, '2005-07-01 09:58:00', '1997-04-17 00:23:41'),
(63, 'Dr. Maryse Jaskolski PhD', 'Ut quaerat quibusdam reprehenderit ut. Eaque commodi deserunt ab ea sint. Aspernatur illo alias sed. Reiciendis sit commodi ab itaque possimus.', 7709, 22, '2014-03-06 04:20:04', '2000-04-21 09:05:34'),
(64, 'Jewel Johns', 'Ipsa eaque similique et. Voluptatem enim dolorem qui. Qui ad labore eos. Odit omnis laboriosam delectus praesentium rerum cum.', 6292, 10, '1977-02-19 11:58:49', '1972-08-27 22:12:33'),
(65, 'Mrs. Alessia Muller', 'Animi deleniti recusandae id omnis optio quae quisquam. Dolorem animi aliquid deserunt quia illum assumenda.', 4084, 39, '2013-07-24 11:33:28', '1999-04-12 19:17:18'),
(66, 'Odessa Schinner', 'Saepe non culpa quos et. Id saepe veritatis ex consequatur tempora similique. Dolorem sed voluptas repellendus et harum sit quis.', 6066, 11, '1972-05-22 11:36:40', '1972-05-08 19:15:42'),
(67, 'Makenna Turcotte', 'Minus quaerat ut dolores qui consequatur laboriosam. Quia accusamus sunt dolorem commodi modi voluptatem. Vel sed sunt aperiam eum dolor sit.', 4728, 48, '2005-04-25 00:25:04', '2013-10-27 03:57:09'),
(68, 'Ervin Pollich', 'Numquam velit maiores rerum eum sequi. Reiciendis harum reprehenderit tempora est soluta qui nulla eveniet. Aut sed qui qui non qui quis rem.', 5345, 37, '1976-04-26 08:57:20', '1995-09-20 05:19:48'),
(69, 'Dr. Brandt Prosacco II', 'Maxime tempore velit vel ducimus. Eum dolor debitis hic illo repellat. Minus magnam ut alias aut tenetur laudantium nemo.', 5875, 40, '1974-08-06 19:54:08', '2016-04-17 13:46:33'),
(70, 'Miss Rita Goodwin II', 'Voluptatum et quia explicabo nisi saepe veniam. Hic aut neque corrupti non expedita vel.', 4362, 8, '2014-05-01 21:56:06', '1994-07-06 08:35:18'),
(71, 'Shaina Wunsch', 'Excepturi dolores et eum ratione tempora. Fuga et ea voluptas quaerat libero.', 1150, 1, '1982-03-24 23:45:38', '1976-02-23 11:53:55'),
(72, 'Mr. Conrad Wisozk V', 'Error beatae harum modi quasi consequatur est quia. Autem aut aut corrupti rem blanditiis et voluptas. Possimus nam sunt voluptatem.', 4420, 40, '1985-09-30 10:04:10', '1988-04-05 18:57:42'),
(73, 'Dr. Garett Collins DDS', 'Libero laudantium qui voluptatum culpa veniam ex modi. Soluta sunt non non tenetur eos. Qui in aut et tempore.', 2980, 39, '1979-06-18 15:45:43', '2016-09-11 00:31:15'),
(74, 'Dominique Erdman V', 'Eius rerum possimus ut. Ab magnam et corporis ducimus delectus. Omnis expedita ut nostrum accusamus commodi eaque.', 3700, 40, '1995-05-01 23:23:29', '2000-03-19 08:22:02'),
(75, 'Cristina Wilderman', 'Vero ipsa vel nulla recusandae saepe nam. Possimus velit quas eligendi voluptates. Non dolorum et esse. Minima nihil reiciendis architecto.', 4867, 48, '2017-09-27 08:22:11', '2007-02-02 02:37:23'),
(76, 'Mae Kuhn', 'Temporibus at facere id id velit quasi. Ut dolor ducimus et aspernatur expedita commodi magni. Id nostrum impedit quas quo culpa.', 3499, 3, '2000-06-08 13:13:41', '1999-11-22 13:27:11'),
(77, 'Francesco Gleichner', 'Minima sed ex officia fuga sequi. Dolores accusantium qui sint voluptatem esse reprehenderit. Ut sequi ad quas officiis laborum.', 7018, 2, '1987-11-24 08:35:48', '1992-08-05 10:32:22'),
(78, 'Mr. Tobin Bechtelar', 'Repellendus illo ea harum magnam incidunt. Magnam aut cupiditate dolorem. A odit et rem tenetur. Ratione ut qui tempora qui.', 4498, 25, '2014-01-26 15:49:25', '1990-03-29 08:20:39'),
(79, 'Dr. Else Will', 'Autem et dolorem ut voluptate vitae delectus. Voluptatem quas aperiam quae ut libero. Ab quis illo vitae laudantium autem.', 2381, 36, '2021-02-18 23:30:24', '1979-08-16 23:22:09'),
(80, 'Birdie Hermiston', 'Nulla tenetur enim alias dignissimos voluptas aut qui. Odit nihil neque et molestiae. Omnis aut rerum suscipit voluptatem facere perspiciatis.', 4948, 43, '1979-11-11 11:01:53', '1975-08-21 00:23:21'),
(81, 'Tiana Ward', 'Beatae modi quae cupiditate explicabo est. Et maxime quis sapiente recusandae est omnis aut.', 7820, 1, '2010-05-04 00:52:46', '1975-03-07 20:11:57'),
(82, 'Ms. Aimee Reilly DVM', 'Quia autem non harum sit. Quia consequatur soluta non nihil rerum. Ad qui eligendi et.', 8662, 2, '1993-05-17 09:23:54', '1988-08-01 09:00:37'),
(83, 'Noel Renner', 'Corporis dolor asperiores ea animi. Rerum et et veritatis animi deserunt velit ea. Minima pariatur corrupti alias aut voluptatem.', 5786, 45, '1992-11-15 03:48:50', '2002-09-15 21:23:25'),
(84, 'Prof. Abigayle Will', 'Iusto eum sapiente voluptatem recusandae. Et et aut vitae dolorem animi adipisci. Voluptatem non temporibus delectus incidunt natus.', 8027, 19, '2020-03-23 14:47:12', '1992-05-21 22:03:31'),
(85, 'Dr. Jordon Anderson', 'Qui modi consequatur qui cupiditate. Corrupti eos sint maxime eos quos. Alias in facilis qui optio at. Et eligendi ut autem aut alias dolor.', 6242, 7, '2009-02-11 11:28:24', '2005-01-18 19:12:52'),
(86, 'Raven Larkin', 'Ratione asperiores consequatur eum doloremque. Aliquid et molestiae qui dolor nesciunt iure. Tempore quis at odio consequatur earum autem.', 1659, 4, '1972-01-27 16:35:56', '2006-01-23 19:16:34'),
(87, 'Dr. Rahul Bogan DDS', 'Officia maiores harum a optio. Sed repudiandae sint magnam et in qui et. Non doloribus aut sed.', 1338, 23, '1988-06-02 06:49:39', '1995-11-29 22:00:06'),
(88, 'Orville Fadel', 'Tenetur cupiditate inventore omnis ea. Debitis nobis sint totam et praesentium harum unde. Dolorem et ipsa est et.', 6670, 33, '1976-10-26 07:33:47', '1970-04-20 01:45:43'),
(89, 'Prof. Alden Grant', 'Ad atque deleniti in praesentium dignissimos illum. Iusto quod voluptatibus voluptatum quod vel in. Aliquid quis nihil voluptas vitae dicta.', 2707, 41, '2014-03-18 05:30:05', '2014-05-07 12:23:32'),
(90, 'Dr. Yolanda O\'Kon PhD', 'Nemo iste dignissimos qui. Incidunt voluptas praesentium cumque ut consequatur. Voluptatum alias sequi laborum. Animi beatae vitae sapiente veniam.', 6168, 44, '2020-07-23 01:05:21', '1984-10-04 02:18:31'),
(91, 'Aurelio Luettgen DVM', 'Distinctio esse sed quia id. Cumque veritatis dignissimos ut. Sunt labore libero consequuntur. Omnis quo odit voluptas repudiandae quod quo.', 8842, 46, '1990-03-01 20:21:09', '2017-10-15 14:03:37'),
(92, 'Ms. Adah Medhurst Jr.', 'Minus aliquid nisi ea recusandae. Atque porro atque temporibus tempora ut omnis. Eaque vel sed praesentium expedita eaque tempore excepturi non.', 1261, 25, '2017-04-20 02:03:30', '1987-10-30 06:39:13'),
(93, 'Antonietta Ledner', 'Laudantium praesentium suscipit dolorem quia ad dolores. Magnam et et commodi illo omnis.', 4264, 41, '2009-01-16 10:03:39', '2003-08-26 22:45:31'),
(94, 'Cade Ankunding Sr.', 'Asperiores deserunt quo velit dolorem vero sit. Eius aut placeat voluptas illo. Cumque omnis ullam atque placeat. Saepe recusandae quia iste et.', 2480, 3, '2018-06-12 19:10:39', '2000-02-11 16:15:48'),
(95, 'Prof. Leone Mitchell', 'Totam et eum rem voluptas nihil optio ut nulla. Nobis temporibus laborum tempora voluptate eum voluptatem. Cum maxime laborum est eos culpa quo.', 1165, 37, '1990-10-19 06:28:57', '2001-03-17 13:43:08'),
(96, 'Asha Rau', 'Nobis animi a est. Porro voluptatibus et similique. Porro quia veniam autem illo adipisci iure.', 7537, 18, '2012-03-18 19:38:37', '1994-06-28 01:50:51'),
(97, 'Dr. Elda Hintz II', 'Non repellendus eveniet aut qui delectus tempore. Sequi et sapiente inventore neque eos ut qui quidem. Et est sed aperiam nam dolorem et.', 3008, 48, '1994-07-06 11:56:19', '1992-06-08 18:12:22'),
(98, 'Hettie Reynolds', 'Ut quam voluptatem saepe ab delectus molestias omnis beatae. Reprehenderit maiores iure ut quo laudantium. In fugiat unde eos aliquam asperiores.', 3537, 20, '2001-08-09 18:32:42', '2000-10-24 02:49:18'),
(99, 'Daphney Collier', 'Cupiditate velit et commodi vel ut. Aliquid repudiandae optio amet nemo. Quos non iusto explicabo deleniti sed.', 5722, 16, '2010-04-30 10:21:04', '1977-12-10 07:50:38'),
(100, 'Jillian Auer', 'Nostrum occaecati praesentium magnam suscipit. Eveniet sed blanditiis perspiciatis quia voluptas eaque.', 5213, 46, '1986-08-22 01:36:32', '1985-12-04 15:16:32'),
(101, 'Name test product1', 'test DESCRIPTION', 9999, 2, '2021-03-15 06:15:13', '2021-03-15 06:15:13');

-- --------------------------------------------------------

--
-- Структура таблицы `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_supplier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `suppliers`
--

INSERT INTO `suppliers` (`id`, `name_supplier`, `created_at`, `updated_at`) VALUES
(1, 'Mrs. Zoe Boehm', '1975-11-02 09:54:54', '2014-10-02 16:19:48'),
(2, 'Octavia Beer', '1995-09-19 07:21:21', '2016-09-19 04:23:53'),
(3, 'Dr. Allie Johnston DVM', '2003-04-10 20:13:27', '1972-07-11 16:49:47'),
(4, 'Abdul Harvey', '2009-08-06 14:28:56', '1998-01-31 15:44:55'),
(5, 'Mr. Loy Pouros PhD', '1986-08-26 07:43:32', '1986-05-09 20:41:08'),
(6, 'Ozella Kassulke', '2020-03-31 02:20:00', '2010-09-04 04:23:19'),
(7, 'Prof. Gonzalo Murazik MD', '2019-08-03 11:44:59', '1973-05-19 13:17:24'),
(8, 'Macy Ferry', '2002-03-27 00:14:50', '1976-03-25 11:28:15'),
(9, 'Zola Waelchi I', '1998-12-19 03:31:12', '2002-01-10 20:41:16'),
(10, 'Angelica Padberg', '2008-11-27 15:54:54', '1973-08-02 23:37:40'),
(11, 'Barrett Reichert Jr.', '1970-06-15 08:54:35', '2016-01-30 23:19:39'),
(12, 'Odie Considine Jr.', '2011-05-27 13:15:51', '1987-09-15 07:57:02'),
(13, 'Brendan Collins', '1987-07-24 09:04:10', '1992-08-09 00:44:48'),
(14, 'Madelynn Becker', '1980-03-16 22:50:25', '1995-09-09 08:46:29'),
(15, 'Alana Lindgren', '1975-08-21 05:53:57', '1974-03-21 21:06:22'),
(16, 'Walter Brown', '2004-10-01 22:15:54', '1979-01-25 07:11:35'),
(17, 'Earnest Kling', '1985-05-27 17:10:08', '2009-10-28 06:18:38'),
(18, 'Rowland Price IV', '2007-05-05 15:05:00', '1995-01-10 15:54:46'),
(19, 'Britney Fay II', '1993-02-04 11:07:13', '1981-12-19 13:55:41'),
(20, 'Augustine Conn', '1991-07-15 22:56:02', '1976-05-25 04:13:43'),
(22, 'Al Hansen III', '1975-02-22 02:49:29', '1991-06-02 15:06:23'),
(23, 'Mervin Herzog', '1985-04-19 15:03:44', '1979-02-26 04:51:58'),
(24, 'Newton Little', '1994-04-05 03:08:09', '1980-07-31 05:02:30'),
(25, 'Andrew Fritsch PhD', '1991-12-20 05:06:59', '2011-07-01 22:37:11'),
(26, 'Mrs. Nova Streich', '2007-02-21 09:19:37', '1996-08-24 18:46:48'),
(27, 'Dr. Diego Ebert', '2007-03-24 11:59:55', '1985-08-13 13:14:02'),
(28, 'Roxanne Bergnaum', '1992-05-01 06:28:36', '1993-06-12 01:52:26'),
(29, 'Edmond Cremin MD', '2019-07-29 09:34:22', '1994-05-05 03:43:56'),
(30, 'Abigail Kovacek', '1979-06-10 21:30:55', '1985-09-10 13:40:55'),
(31, 'Dr. Bobbie Corwin', '2008-10-30 22:34:51', '2011-07-07 19:28:40'),
(32, 'Kasandra Runolfsdottir', '1976-03-08 18:14:02', '1975-06-07 02:58:39'),
(33, 'Dr. Coy Nitzsche', '1990-08-09 21:02:11', '2004-05-28 03:10:37'),
(34, 'Angelo Kuhic DDS', '1980-03-09 11:00:45', '1984-10-14 17:05:07'),
(35, 'Helen Feest', '1979-10-28 15:30:39', '1997-04-08 19:33:33'),
(36, 'Danial Friesen', '1984-09-13 15:41:17', '1999-02-21 08:06:34'),
(37, 'Angelina Cronin', '1981-12-14 00:50:46', '2006-08-13 03:22:46'),
(38, 'Kelli Bradtke', '1973-07-31 11:41:57', '1988-10-18 22:55:37'),
(39, 'Dr. Royal Watsica V', '2003-10-08 17:35:14', '1983-09-22 18:01:06'),
(40, 'Dr. May Treutel II', '2014-10-10 03:43:41', '1994-01-14 17:47:51'),
(41, 'Rodrick Bahringer', '1987-01-22 02:46:53', '1989-03-05 06:25:17'),
(42, 'Laron Ritchie', '1988-02-26 18:05:25', '1995-12-28 11:34:51'),
(43, 'Leonora Mann', '2006-07-26 01:23:05', '2015-07-31 21:37:10'),
(44, 'Prof. Annetta Harber', '2005-05-12 19:03:11', '1990-07-27 19:55:25'),
(45, 'Denis Reilly', '2017-04-09 08:08:07', '1993-05-04 22:34:28'),
(46, 'Nigel Howe', '1972-05-13 22:48:15', '1975-05-25 04:08:27'),
(47, 'Raina Olson', '1999-06-07 15:22:43', '2017-10-01 03:01:50'),
(48, 'Dr. Judge Frami', '1989-05-09 18:16:14', '1990-06-24 01:03:59'),
(49, 'Ms. Gilda Lockman', '1979-05-18 14:23:27', '1975-07-06 03:40:32'),
(50, 'Mr. Madyson Harber II', '2017-02-07 16:27:43', '2016-07-08 16:35:44'),
(51, 'Test name supplier3', '2021-03-15 06:15:41', '2021-03-15 06:15:41');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_supplier_id_index` (`supplier_id`);

--
-- Индексы таблицы `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suppliers_name_supplier_unique` (`name_supplier`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT для таблицы `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
