-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 27, 2020 at 05:58 PM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `url`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Isaias Hermiston', 'beryl05@cummings.com', 'http://langworth.info/', 'Repellat rerum iste qui voluptatem ab nostrum incidunt. Omnis eius dolor rem est exercitationem. Exercitationem minima et et hic earum. Maiores quia et rem enim quae sit.', '2020-05-28 01:58:09', '2020-05-28 01:58:09'),
(2, 'Dr. Julio Koch I', 'orn.leta@labadie.com', 'https://turner.net/ad-inventore-eveniet-voluptatibus-id.html', 'Quis numquam nemo expedita dolor soluta impedit magni. Omnis labore ut aperiam nemo nisi maiores. Autem animi quis asperiores et at dolores accusantium quod.', '2020-05-28 01:58:09', '2020-05-28 01:58:09'),
(3, 'Janessa Kling', 'haskell77@gmail.com', 'http://www.stark.com/nam-eum-dolores-voluptatem-minima-minus-sint-adipisci', 'Magnam delectus veritatis inventore sed sint cum. Unde eum ipsam nulla quis atque quisquam labore commodi. Molestiae non facilis aliquid officia delectus. Enim quisquam velit aut quisquam.', '2020-05-28 01:58:09', '2020-05-28 01:58:09'),
(4, 'Casimer Rutherford', 'wisozk.ivory@kohler.com', 'http://reinger.com/porro-at-autem-totam-laborum-ullam-tenetur.html', 'Error magni aliquid voluptatibus voluptatem nemo est. Sequi omnis esse et eaque temporibus accusantium. Vitae ut distinctio vel dolore.', '2020-05-28 01:58:09', '2020-05-28 01:58:09'),
(5, 'Miss Francisca Abbott', 'hester.fisher@purdy.com', 'http://runolfsson.org/autem-eum-aut-numquam-aliquam-blanditiis-aut-aut.html', 'Quasi modi enim laborum minus quae atque. Adipisci esse at repudiandae. Nihil blanditiis natus ut laboriosam expedita nulla.', '2020-05-28 01:58:09', '2020-05-28 01:58:09'),
(6, 'Nathen Baumbach PhD', 'cortez55@yahoo.com', 'http://www.kessler.com/distinctio-est-repellat-ut-qui-et.html', 'Optio sunt beatae recusandae atque. Quam voluptatem voluptatem cumque veniam aut dolores. Sit molestias totam exercitationem ea autem culpa. Voluptatem perferendis soluta fuga dolorum ut sint.', '2020-05-28 01:58:09', '2020-05-28 01:58:09'),
(7, 'Dr. Celestine Grimes I', 'keyon.king@hotmail.com', 'http://www.schaefer.com/nulla-aut-et-vero-enim-laborum-earum-aut', 'Veritatis non in temporibus sunt enim quibusdam. Doloribus quaerat sed consequatur adipisci. Maiores voluptatem qui fuga optio voluptatum voluptatum. Et sunt recusandae ut sit sed sit id. Totam aliquid tempore non.', '2020-05-28 01:58:09', '2020-05-28 01:58:09'),
(8, 'Maximus Howe', 'sbergnaum@wintheiser.biz', 'https://www.wiegand.com/qui-excepturi-quod-nihil-voluptatibus', 'Magnam et aliquid alias et qui rerum. Voluptas debitis nam atque iure unde. Eos in iure eligendi.', '2020-05-28 01:58:09', '2020-05-28 01:58:09'),
(9, 'Abdiel Bashirian', 'gudrun.mosciski@deckow.com', 'http://reichel.info/aperiam-officiis-quasi-quia-cumque-debitis-voluptates', 'Nulla nulla labore sequi nemo. Dolor accusamus architecto iusto sint architecto recusandae laudantium. Id asperiores autem provident molestiae. Aut qui dolore mollitia unde eos voluptatem hic.', '2020-05-28 01:58:09', '2020-05-28 01:58:09'),
(10, 'Mckenzie Gleichner Jr.', 'violet.koepp@yahoo.com', 'http://tromp.com/illum-laboriosam-rerum-tempora-ipsam-suscipit-iure-maxime', 'Qui aut dicta quam alias veritatis ut. Aspernatur voluptas rerum et perferendis dolorem laboriosam. Et necessitatibus est quidem vitae. Vitae sed quidem consectetur in consequuntur aliquam assumenda.', '2020-05-28 01:58:09', '2020-05-28 01:58:09'),
(11, 'Lilla Kuphal', 'lcronin@hotmail.com', 'http://www.russel.info/ut-excepturi-reiciendis-ab-aut-et', 'Et ipsam ab voluptas eveniet eaque est natus. Nisi eum necessitatibus aliquam corrupti fugiat nisi.', '2020-05-28 01:58:10', '2020-05-28 01:58:10'),
(12, 'Dr. Blanca Murphy Jr.', 'ifay@champlin.com', 'http://beahan.com/quis-asperiores-voluptatem-enim-fugiat.html', 'Dolorum ut quod laboriosam magni odit similique. Ut praesentium ex dignissimos explicabo sit quos. Et voluptas error doloribus.', '2020-05-28 01:58:10', '2020-05-28 01:58:10'),
(13, 'Otilia Douglas', 'xwuckert@pfannerstill.com', 'https://koelpin.org/et-natus-impedit-ullam-dolorem-a-voluptate-dolores.html', 'Vel qui ad animi culpa ad. Recusandae omnis quo non quibusdam repudiandae. Asperiores molestiae nihil ut adipisci veritatis in.', '2020-05-28 01:58:10', '2020-05-28 01:58:10'),
(14, 'Prof. Ambrose Wolf III', 'eheidenreich@hotmail.com', 'https://www.bartell.com/et-id-aut-cum-deserunt-facere', 'Eaque rem perspiciatis labore molestiae. Dolore non autem delectus.', '2020-05-28 01:58:10', '2020-05-28 01:58:10'),
(15, 'Alva Hammes II', 'yolanda.howe@buckridge.info', 'http://volkman.net/sit-ipsum-sed-esse-ipsam-molestias-sit-quam-distinctio', 'Autem laboriosam id quas nesciunt et aut. Eos aut quia voluptas est laudantium. Ut quae est voluptatem quia. Occaecati non et doloribus nihil modi nihil.', '2020-05-28 01:58:10', '2020-05-28 01:58:10'),
(16, 'Buddy Gorczany', 'carter.white@hessel.org', 'http://buckridge.info/quae-vel-consequatur-dolorum-qui', 'Non aliquam ipsum minus quo et libero. Aut omnis minus ad ut.', '2020-05-28 01:58:10', '2020-05-28 01:58:10'),
(17, 'Adrianna Hermann', 'elsa.eichmann@gmail.com', 'http://www.schumm.com/', 'Eos autem eveniet voluptates veniam nulla aut temporibus. Quia quis doloribus neque excepturi officiis qui. Numquam quam totam tempora magnam in commodi. Rerum praesentium architecto sunt nihil quia et. Ducimus tempore qui ad mollitia fuga repellat repellat.', '2020-05-28 01:58:10', '2020-05-28 01:58:10'),
(18, 'Heath Herman Sr.', 'gottlieb.ferne@yahoo.com', 'https://www.zulauf.biz/ea-nihil-molestiae-saepe-asperiores-quis-aut-veniam', 'Dolores nisi eum qui minus et. Tempora itaque voluptate aut qui et ab occaecati. Tempore consectetur velit et libero non. Natus ut consequuntur asperiores aut corporis.', '2020-05-28 01:58:10', '2020-05-28 01:58:10'),
(19, 'Murray Hoppe', 'carolyne42@gmail.com', 'http://mohr.com/dignissimos-consequatur-exercitationem-doloribus-maiores-expedita-magnam-pariatur-natus.html', 'Necessitatibus pariatur dolorum a explicabo delectus nesciunt veritatis. Ullam similique qui voluptatem commodi blanditiis. Quibusdam qui et quos id reiciendis dignissimos. A harum quam reiciendis ad suscipit inventore.', '2020-05-28 01:58:10', '2020-05-28 01:58:10'),
(20, 'Ms. Vicky Rohan Jr.', 'leilani.mayert@yahoo.com', 'http://ward.com/consequuntur-neque-pariatur-quas-a', 'Harum minus temporibus pariatur consectetur. Dolore earum architecto adipisci consequuntur dignissimos cumque et. Quasi temporibus est quos harum ipsam nesciunt. Qui totam rem voluptatibus rerum sint.', '2020-05-28 01:58:10', '2020-05-28 01:58:10'),
(21, 'Leone Reinger', 'kirlin.kylie@hotmail.com', 'http://medhurst.com/nostrum-reiciendis-culpa-nihil-reiciendis', 'Nostrum et soluta dolores repellendus fugit maiores. Ipsam laudantium accusamus qui eos consectetur. Est cum sed repudiandae voluptatem. Temporibus cumque et et et est modi minima.', '2020-05-28 01:58:10', '2020-05-28 01:58:10'),
(22, 'Dr. Daren Harris MD', 'howell32@gmail.com', 'http://www.hermiston.com/', 'Perspiciatis ipsam quo recusandae illo deserunt. Aperiam dolorum et unde ut enim ducimus.', '2020-05-28 01:58:10', '2020-05-28 01:58:10'),
(23, 'Emely Miller', 'abigale25@yahoo.com', 'https://erdman.com/nam-sunt-nulla-voluptas-molestiae-esse-molestias-enim.html', 'Et aut dolor et sapiente saepe ad. Voluptatem praesentium ut quos consequuntur. Voluptas necessitatibus fuga odio consequatur et odit non.', '2020-05-28 01:58:10', '2020-05-28 01:58:10'),
(24, 'Julius Hickle', 'brett10@yahoo.com', 'http://hegmann.com/', 'Et ipsa accusantium enim consequuntur nam. Et qui ut beatae. Fugiat in rerum eligendi quaerat.', '2020-05-28 01:58:10', '2020-05-28 01:58:10'),
(25, 'Avery Runolfsdottir', 'tmclaughlin@borer.com', 'http://www.harvey.com/autem-est-vel-magnam-aliquid-fuga-eum', 'Accusamus praesentium excepturi quis corporis et vero. Sunt soluta et vel eveniet qui deleniti est. Rerum ut et tempora. Quia nisi iure blanditiis maxime.', '2020-05-28 01:58:10', '2020-05-28 01:58:10'),
(26, 'Koby Zulauf', 'mollie.gerhold@bergstrom.biz', 'http://strosin.com/', 'Et magni eum hic. Quaerat quaerat eum natus sit esse aut. At aperiam est dolore ut ut nobis quia.', '2020-05-28 01:58:10', '2020-05-28 01:58:10'),
(27, 'Deja Hagenes', 'celestino.stiedemann@rath.net', 'http://www.schmidt.org/dicta-harum-velit-iusto-et.html', 'Architecto omnis qui explicabo aut impedit non. Qui minima consectetur et nobis. Architecto aliquid eum id corrupti quis et iusto.', '2020-05-28 01:58:10', '2020-05-28 01:58:10'),
(28, 'Rashad Schultz', 'parisian.golden@franecki.biz', 'http://www.gleason.info/', 'Iste non eligendi aliquam minima voluptatem fugit. Magni sequi cumque amet. Alias laudantium voluptatem aut deleniti.', '2020-05-28 01:58:10', '2020-05-28 01:58:10'),
(29, 'Abbie Nader', 'walter.waldo@lynch.com', 'https://www.hill.com/aut-quia-maiores-illo-deserunt', 'Et aut voluptas quia voluptas. Incidunt et nobis perspiciatis aperiam dolores. Illo delectus hic modi odit maxime voluptates rem.', '2020-05-28 01:58:10', '2020-05-28 01:58:10'),
(30, 'Mr. Obie Schneider', 'okreiger@russel.com', 'http://www.schiller.net/', 'Tempora accusantium ut adipisci repellat est dignissimos facere quia. Alias possimus odio fuga eum assumenda molestiae. Delectus sed veniam sapiente harum voluptates voluptatem dolores. Nam est et vero consequatur quis incidunt.', '2020-05-28 01:58:10', '2020-05-28 01:58:10'),
(31, 'Prof. Stephania Hahn PhD', 'vgreenfelder@hotmail.com', 'http://www.renner.biz/provident-perferendis-recusandae-fuga-molestiae-tempore', 'Et nesciunt maiores vel ratione et laudantium facilis cum. Amet quis eaque aut distinctio repellendus. Deserunt provident ratione accusamus eveniet laborum labore.', '2020-05-28 01:58:10', '2020-05-28 01:58:10'),
(32, 'Giovanna Armstrong PhD', 'carroll.filomena@johnson.com', 'http://www.hilpert.biz/quis-distinctio-nisi-accusamus-et-inventore-omnis', 'Ab fuga perferendis doloribus repudiandae. Ullam non qui nobis illum vitae voluptatem sint. Dolorem et provident maxime quae blanditiis.', '2020-05-28 01:58:11', '2020-05-28 01:58:11'),
(33, 'Jesus Kuvalis', 'xbraun@hermann.com', 'http://www.jenkins.org/ullam-et-natus-aliquam-nihil-modi-facilis-rerum.html', 'Dolorum dolore velit voluptas similique unde est. Recusandae rerum reprehenderit eveniet est saepe eum aut. Saepe quasi porro ducimus consequatur.', '2020-05-28 01:58:11', '2020-05-28 01:58:11'),
(34, 'Prof. Tod Kshlerin', 'cward@gmail.com', 'http://www.lemke.com/neque-maiores-fugiat-qui-dolores-explicabo-labore.html', 'Quos accusantium sunt nostrum corporis accusantium expedita. Qui eligendi quia sequi. Nihil reprehenderit aut voluptates similique et non.', '2020-05-28 01:58:11', '2020-05-28 01:58:11'),
(35, 'Dr. Melvina Bogan', 'leonard.kulas@hotmail.com', 'http://steuber.com/vel-omnis-recusandae-sit-expedita-aut-sed', 'Minus expedita at itaque rerum vitae alias. Delectus quo aliquid aut in soluta aliquam velit. Tenetur voluptatum sunt harum et exercitationem.', '2020-05-28 01:58:11', '2020-05-28 01:58:11'),
(36, 'Eldora Osinski', 'jkrajcik@yahoo.com', 'http://www.hoeger.com/', 'Quidem facilis debitis asperiores et. Quis consequatur et ipsa rerum illo. Nihil animi labore ea ipsum. Minima possimus perspiciatis dolorem voluptatem laborum aut velit.', '2020-05-28 01:58:11', '2020-05-28 01:58:11'),
(37, 'Ova Herman', 'jlowe@hotmail.com', 'http://pfeffer.com/ut-maiores-suscipit-dolores-nihil-sed', 'Non praesentium rerum sed eligendi voluptatem quasi. Vero blanditiis perferendis impedit voluptas eius.', '2020-05-28 01:58:11', '2020-05-28 01:58:11'),
(38, 'Kelvin Buckridge', 'hane.einar@oconnell.com', 'http://www.stroman.com/commodi-aut-est-neque-sunt-et-magni-dolore', 'Quo est non distinctio dolorum ea asperiores eveniet. Non autem eos minus vitae. Quia excepturi nostrum tenetur non vel provident. Dolor aspernatur aut quaerat sint excepturi aut pariatur.', '2020-05-28 01:58:11', '2020-05-28 01:58:11'),
(39, 'Morris Stoltenberg', 'dante34@koss.biz', 'https://lubowitz.com/doloribus-deserunt-non-ut-ullam.html', 'Facilis et natus sit voluptates ullam. Dolorem voluptas aut labore architecto consectetur possimus. Natus sed sed et voluptatum et. Aperiam quia architecto suscipit consequuntur. Hic delectus enim eum quia quis sint impedit.', '2020-05-28 01:58:11', '2020-05-28 01:58:11'),
(40, 'Ana Wiza', 'roberts.ashlee@hotmail.com', 'http://www.erdman.com/officiis-voluptatum-sunt-a-natus', 'Consequuntur eligendi aliquam reprehenderit explicabo sunt. Tenetur distinctio ut doloribus ducimus. Earum dolorum alias commodi. Officiis quia at ut incidunt sint id.', '2020-05-28 01:58:11', '2020-05-28 01:58:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
