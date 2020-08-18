

CREATE TABLE `albums` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `albums_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO albums VALUES("11","2","Основной альбом","2020-06-08 16:54:09","2020-06-08 16:54:09"),
("12","3","Основной альбом","2020-07-06 11:24:31","2020-07-06 11:24:31");





CREATE TABLE `albums_photo` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO albums_photo VALUES("16","11","329f815efe0d0320b3ad6c48a69567f9.png","","2020-06-08 20:12:02","2020-06-08 20:12:02","/upload/lk_profile/2/albums/11/329f815efe0d0320b3ad6c48a69567f9.png"),
("17","11","923d9fc404a184ce5e6e317cbc08edd6.png","","2020-06-08 20:12:17","2020-06-08 20:12:17","/upload/lk_profile/2/albums/11/923d9fc404a184ce5e6e317cbc08edd6.png"),
("18","11","610779597117cd93856bcb544ecff0c0.png","","2020-06-08 20:12:26","2020-06-08 20:12:26","/upload/lk_profile/2/albums/11/610779597117cd93856bcb544ecff0c0.png"),
("19","11","ca123c6c51ef9adfff79ade730b8901c.png","","2020-06-08 20:12:30","2020-06-08 20:12:30","/upload/lk_profile/2/albums/11/ca123c6c51ef9adfff79ade730b8901c.png"),
("20","11","51fa06e4197946fa86063f06493d58a5.png","","2020-06-08 20:12:32","2020-06-08 20:12:32","/upload/lk_profile/2/albums/11/51fa06e4197946fa86063f06493d58a5.png"),
("21","11","e698b72eaf17d71d6d9d1eefb1c69a8c.png","","2020-06-08 20:12:35","2020-06-08 20:12:35","/upload/lk_profile/2/albums/11/e698b72eaf17d71d6d9d1eefb1c69a8c.png"),
("22","11","8429cdfbf9e0d39595079cd91c3629b8.png","","2020-06-08 20:12:38","2020-06-08 20:12:38","/upload/lk_profile/2/albums/11/8429cdfbf9e0d39595079cd91c3629b8.png"),
("23","11","fec85c0231b7678503d593408650c06c.png","","2020-06-08 20:12:41","2020-06-08 20:12:41","/upload/lk_profile/2/albums/11/fec85c0231b7678503d593408650c06c.png"),
("24","11","8618956b9d010429541b85e9e31bc0d7.png","","2020-06-08 20:12:46","2020-06-08 20:12:46","/upload/lk_profile/2/albums/11/8618956b9d010429541b85e9e31bc0d7.png"),
("25","","30e4c898fcf9be4002639ef8b923f234.png","","2020-07-22 21:22:14","2020-07-22 21:22:14","/upload/lk_profile/2/albums//30e4c898fcf9be4002639ef8b923f234.png"),
("26","11","e140ed08a60aea62259665c32edf0f6f.png","","2020-07-22 21:26:22","2020-07-22 21:26:22","/upload/lk_profile/2/albums/11/e140ed08a60aea62259665c32edf0f6f.png"),
("27","11","9fd9461f269113109825fa14e090dc5f.png","","2020-07-22 21:27:36","2020-07-22 21:27:36","/upload/lk_profile/2/albums/11/9fd9461f269113109825fa14e090dc5f.png"),
("28","11","b234995611ebfcd7f755cdf3a169d83d.png","","2020-07-22 21:29:49","2020-07-22 21:29:49","/upload/lk_profile/2/albums/11/b234995611ebfcd7f755cdf3a169d83d.png"),
("29","11","c1c5019180bb7cfba31fa9fe6e0f2a7c.png","","2020-07-22 21:30:43","2020-07-22 21:30:43","/upload/lk_profile/2/albums/11/c1c5019180bb7cfba31fa9fe6e0f2a7c.png"),
("30","11","06dd43be6d5cee0d04079ff5920e7d14.png","","2020-07-22 21:31:21","2020-07-22 21:31:21","/upload/lk_profile/2/albums/11/06dd43be6d5cee0d04079ff5920e7d14.png"),
("31","11","7f34b6e260f8cb11b863c03510841231.png","","2020-07-22 21:59:22","2020-07-22 21:59:22","/upload/lk_profile/2/albums/11/7f34b6e260f8cb11b863c03510841231.png"),
("32","11","a87a5df0315f447539eee238471b1e2d.png","","2020-07-22 22:04:11","2020-07-22 22:04:11","/upload/lk_profile/2/albums/11/a87a5df0315f447539eee238471b1e2d.png");





CREATE TABLE `cities_api` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OKATO` bigint(20) DEFAULT NULL,
  `PARANTS_OKATO` bigint(20) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO cities_api VALUES("1","Петрозаводск","86401000","86000000000","","","2020-06-10 16:44:46","2020-06-10 16:44:46");





CREATE TABLE `events` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `end_applications` datetime DEFAULT NULL,
  `max_people` int(11) DEFAULT NULL,
  `min_people` int(11) DEFAULT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `events_organizer_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO events VALUES("9","3","sasasa","sasaas","saassa","2020-07-29 11:11:00","","2020-07-28 00:00:00","","","1","2020-06-22 19:51:52","2020-06-22 19:51:52"),
("10","2","3223","233232","2232323","2020-07-22 12:31:00","","2020-07-21 00:00:00","","","1","2020-07-19 22:14:50","2020-07-19 22:14:50");





CREATE TABLE `events__requsest` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `girl_id` int(10) unsigned NOT NULL,
  `event_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `events__requsest_girl_id_index` (`girl_id`),
  KEY `events__requsest_event_id_index` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `failed_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `gift_act` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `present_id` int(10) unsigned NOT NULL,
  `who_id` int(10) unsigned NOT NULL,
  `target_id` int(10) unsigned NOT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `readed` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `gift_act_present_id_index` (`present_id`),
  KEY `gift_act_who_id_index` (`who_id`),
  KEY `gift_act_target_id_index` (`target_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO gift_act VALUES("14","8","2","3","","2020-07-10 15:05:42","2020-07-10 15:05:42","0"),
("16","8","2","2","","2020-07-11 09:36:36","2020-07-11 09:36:36","0");





CREATE TABLE `interest` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO interest VALUES("1","кино","",""),
("2","книги","","");





CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `likes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `who_id` int(10) unsigned NOT NULL,
  `target_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_who_id_index` (`who_id`),
  KEY `likes_target_id_index` (`target_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO likes VALUES("6","3","2","2020-07-01 16:29:25","2020-07-01 16:29:25"),
("8","2","3","2020-07-06 11:38:21","2020-07-06 11:38:21");





CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` bigint(20) unsigned NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `order_column` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_model_type_model_id_index` (`model_type`,`model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from` int(10) unsigned NOT NULL,
  `to` int(10) unsigned NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `readed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO messages VALUES("43","3","2","8","1","2020-06-15 17:28:29","2020-07-17 09:38:21"),
("44","3","2","9","1","2020-06-15 17:29:05","2020-07-17 09:38:21"),
("45","3","2","96","1","2020-06-15 17:29:06","2020-07-17 09:38:21"),
("46","3","2","99","1","2020-06-15 17:29:07","2020-07-17 09:38:21"),
("47","3","2","99","1","2020-06-15 17:29:09","2020-07-17 09:38:21"),
("48","3","2","6","1","2020-06-15 17:29:09","2020-07-17 09:38:21"),
("49","3","2","6","1","2020-06-15 17:29:10","2020-07-17 09:38:21"),
("50","3","2","69","1","2020-06-15 17:29:11","2020-07-17 09:38:21"),
("51","2","3","7","1","2020-06-15 17:30:12","2020-06-29 19:09:32"),
("52","3","2","as","1","2020-06-15 17:40:58","2020-07-17 09:38:21"),
("53","2","3","wq","1","2020-06-15 17:43:07","2020-06-29 19:09:32"),
("54","3","2","9","1","2020-06-15 17:44:53","2020-07-17 09:38:21"),
("55","2","3","9","1","2020-06-15 17:45:00","2020-06-29 19:09:32"),
("56","2","3","3","1","2020-06-15 17:55:39","2020-06-29 19:09:32"),
("57","3","2","9-","1","2020-06-15 17:56:42","2020-07-17 09:38:21"),
("58","2","3","5","1","2020-06-16 17:11:20","2020-06-29 19:09:32"),
("59","2","3","5","1","2020-06-16 17:47:25","2020-06-29 19:09:32"),
("60","2","3","ds","1","2020-06-16 17:53:07","2020-06-29 19:09:32"),
("61","3","2","a","1","2020-06-16 18:02:37","2020-07-17 09:38:21"),
("62","3","2","sas","1","2020-06-16 18:02:39","2020-07-17 09:38:21"),
("63","2","3","sa","1","2020-06-16 18:03:05","2020-06-29 19:09:32");



INSERT INTO messages VALUES("64","3","2","xz","1","2020-06-16 18:03:13","2020-07-17 09:38:21"),
("65","2","3","sa","1","2020-06-16 18:27:23","2020-06-29 19:09:32"),
("66","3","2","dssss","1","2020-06-16 18:27:30","2020-07-17 09:38:21"),
("67","2","3","9","1","2020-06-16 18:27:46","2020-06-29 19:09:32"),
("68","2","3","6","1","2020-06-16 18:28:57","2020-06-29 19:09:32"),
("69","2","3","89","1","2020-06-16 18:29:11","2020-06-29 19:09:32"),
("70","3","2","sd","1","2020-06-16 18:29:41","2020-07-17 09:38:21"),
("71","3","2","sa","1","2020-06-16 18:30:40","2020-07-17 09:38:21"),
("72","2","3","ds","1","2020-06-16 18:30:57","2020-06-29 19:09:32"),
("73","2","3","ew","1","2020-06-16 18:44:54","2020-06-29 19:09:32"),
("74","3","2","2","1","2020-06-16 18:45:03","2020-07-17 09:38:21"),
("75","2","3","3","1","2020-06-16 19:27:56","2020-06-29 19:09:32"),
("76","2","3","6","1","2020-06-16 19:28:01","2020-06-29 19:09:32"),
("77","3","2","89","1","2020-06-16 19:28:35","2020-07-17 09:38:21"),
("78","3","2","6","1","2020-06-16 19:28:46","2020-07-17 09:38:21"),
("79","2","3","9","1","2020-06-16 19:36:02","2020-06-29 19:09:32"),
("80","3","2","9","1","2020-06-16 21:21:55","2020-07-17 09:38:21"),
("81","2","3","ы","1","2020-06-16 21:22:12","2020-06-29 19:09:32"),
("82","2","3","чя","1","2020-06-16 21:22:18","2020-06-29 19:09:32"),
("83","3","2","в","1","2020-06-16 21:22:21","2020-07-17 09:38:21"),
("84","3","2","яяяяяяяяяч","1","2020-06-16 21:22:27","2020-07-17 09:38:21");



INSERT INTO messages VALUES("85","3","2","ыввывыывф","1","2020-06-16 21:22:29","2020-07-17 09:38:21"),
("86","3","2","цй","1","2020-06-16 21:22:31","2020-07-17 09:38:21"),
("87","3","2","сччссчя","1","2020-06-16 21:22:33","2020-07-17 09:38:21"),
("88","3","2","м","1","2020-06-16 21:22:34","2020-07-17 09:38:21"),
("89","3","2","ммммммммммммммм","1","2020-06-16 21:22:39","2020-07-17 09:38:21"),
("90","2","3","уц","1","2020-06-16 21:23:09","2020-06-29 19:09:32"),
("91","2","3","уц","1","2020-06-16 21:23:25","2020-06-29 19:09:32"),
("92","2","3","6","1","2020-06-18 21:14:16","2020-06-29 19:09:32"),
("93","2","3","yt","1","2020-06-18 21:18:35","2020-06-29 19:09:32"),
("94","2","3","tr","1","2020-06-18 21:19:46","2020-06-29 19:09:32"),
("95","3","2","sa","1","2020-06-29 19:09:35","2020-07-17 09:38:21"),
("96","3","2","ds","1","2020-06-29 19:09:37","2020-07-17 09:38:21"),
("97","3","2","xcx","1","2020-06-29 19:09:38","2020-07-17 09:38:21"),
("98","2","2","Мы понравились друг другу ","1","2020-07-06 11:52:00","2020-07-17 09:38:20"),
("99","2","3","Мы понравились друг другу ","0","2020-07-06 11:52:01","2020-07-06 11:52:01"),
("100","2","2","Мы понравились друг другу ","1","2020-07-06 11:52:06","2020-07-17 09:38:20"),
("101","2","3","Мы понравились друг другу ","0","2020-07-06 11:52:07","2020-07-06 11:52:07"),
("102","2","2","Мы понравились друг другу ","1","2020-07-06 11:53:21","2020-07-17 09:38:20"),
("103","2","3","Мы понравились друг другу ","0","2020-07-06 11:53:21","2020-07-06 11:53:21"),
("104","2","2","Мы понравились друг другу ","1","2020-07-06 12:16:24","2020-07-17 09:38:20"),
("105","2","3","Мы понравились друг другу ","0","2020-07-06 12:16:24","2020-07-06 12:16:24");



INSERT INTO messages VALUES("106","2","2","Мы понравились друг другу ","1","2020-07-06 12:16:26","2020-07-17 09:38:20"),
("107","2","3","Мы понравились друг другу ","0","2020-07-06 12:16:27","2020-07-06 12:16:27"),
("108","2","2","Мы понравились друг другу ","1","2020-07-06 12:16:46","2020-07-17 09:38:20"),
("109","2","3","Мы понравились друг другу ","0","2020-07-06 12:16:46","2020-07-06 12:16:46"),
("110","2","3","99","0","2020-07-06 13:02:17","2020-07-06 13:02:17"),
("111","2","3","888","0","2020-07-06 13:02:57","2020-07-06 13:02:57");



INSERT INTO messages VALUES("23","2","3","er","1","2020-06-14 21:31:35","2020-06-29 19:09:32"),
("24","2","3","a","1","2020-06-14 21:33:39","2020-06-29 19:09:32"),
("25","2","3","ds","1","2020-06-14 22:00:40","2020-06-29 19:09:32"),
("26","2","3","ds","1","2020-06-14 22:00:50","2020-06-29 19:09:32"),
("27","3","2","d","1","2020-06-15 16:58:58","2020-07-17 09:38:21"),
("28","2","3","d","1","2020-06-15 17:02:34","2020-06-29 19:09:32"),
("29","2","3","cx","1","2020-06-15 17:02:43","2020-06-29 19:09:32"),
("30","2","3","fd","1","2020-06-15 17:02:45","2020-06-29 19:09:32"),
("31","2","3","6","1","2020-06-15 17:04:27","2020-06-29 19:09:32"),
("32","3","2","9","1","2020-06-15 17:07:41","2020-07-17 09:38:21"),
("33","3","2","9","1","2020-06-15 17:07:55","2020-07-17 09:38:21"),
("34","3","2","8","1","2020-06-15 17:10:22","2020-07-17 09:38:21"),
("35","3","2","9","1","2020-06-15 17:11:24","2020-07-17 09:38:21"),
("36","2","3","*","1","2020-06-15 17:12:48","2020-06-29 19:09:32"),
("37","2","3","9","1","2020-06-15 17:14:05","2020-06-29 19:09:32"),
("38","3","2","32","1","2020-06-15 17:16:13","2020-07-17 09:38:21"),
("39","2","3","32","1","2020-06-15 17:17:57","2020-06-29 19:09:32"),
("40","3","2","5","1","2020-06-15 17:24:00","2020-07-17 09:38:21"),
("41","2","3","qw","1","2020-06-15 17:26:50","2020-06-29 19:09:32"),
("42","3","2","wq","1","2020-06-15 17:26:54","2020-07-17 09:38:21"),
("43","3","2","8","1","2020-06-15 17:28:29","2020-07-17 09:38:21"),
("44","3","2","9","1","2020-06-15 17:29:05","2020-07-17 09:38:21"),
("45","3","2","96","1","2020-06-15 17:29:06","2020-07-17 09:38:21"),
("46","3","2","99","1","2020-06-15 17:29:07","2020-07-17 09:38:21"),
("47","3","2","99","1","2020-06-15 17:29:09","2020-07-17 09:38:21"),
("48","3","2","6","1","2020-06-15 17:29:09","2020-07-17 09:38:21"),
("49","3","2","6","1","2020-06-15 17:29:10","2020-07-17 09:38:21"),
("50","3","2","69","1","2020-06-15 17:29:11","2020-07-17 09:38:21"),
("51","2","3","7","1","2020-06-15 17:30:12","2020-06-29 19:09:32"),
("52","3","2","as","1","2020-06-15 17:40:58","2020-07-17 09:38:21"),
("53","2","3","wq","1","2020-06-15 17:43:07","2020-06-29 19:09:32"),
("54","3","2","9","1","2020-06-15 17:44:53","2020-07-17 09:38:21"),
("55","2","3","9","1","2020-06-15 17:45:00","2020-06-29 19:09:32"),
("56","2","3","3","1","2020-06-15 17:55:39","2020-06-29 19:09:32"),
("57","3","2","9-","1","2020-06-15 17:56:42","2020-07-17 09:38:21"),
("58","2","3","5","1","2020-06-16 17:11:20","2020-06-29 19:09:32"),
("59","2","3","5","1","2020-06-16 17:47:25","2020-06-29 19:09:32"),
("60","2","3","ds","1","2020-06-16 17:53:07","2020-06-29 19:09:32"),
("61","3","2","a","1","2020-06-16 18:02:37","2020-07-17 09:38:21"),
("62","3","2","sas","1","2020-06-16 18:02:39","2020-07-17 09:38:21"),
("63","2","3","sa","1","2020-06-16 18:03:05","2020-06-29 19:09:32"),
("64","3","2","xz","1","2020-06-16 18:03:13","2020-07-17 09:38:21"),
("65","2","3","sa","1","2020-06-16 18:27:23","2020-06-29 19:09:32"),
("66","3","2","dssss","1","2020-06-16 18:27:30","2020-07-17 09:38:21"),
("67","2","3","9","1","2020-06-16 18:27:46","2020-06-29 19:09:32"),
("68","2","3","6","1","2020-06-16 18:28:57","2020-06-29 19:09:32"),
("69","2","3","89","1","2020-06-16 18:29:11","2020-06-29 19:09:32"),
("70","3","2","sd","1","2020-06-16 18:29:41","2020-07-17 09:38:21"),
("71","3","2","sa","1","2020-06-16 18:30:40","2020-07-17 09:38:21"),
("72","2","3","ds","1","2020-06-16 18:30:57","2020-06-29 19:09:32"),
("73","2","3","ew","1","2020-06-16 18:44:54","2020-06-29 19:09:32"),
("74","3","2","2","1","2020-06-16 18:45:03","2020-07-17 09:38:21"),
("75","2","3","3","1","2020-06-16 19:27:56","2020-06-29 19:09:32"),
("76","2","3","6","1","2020-06-16 19:28:01","2020-06-29 19:09:32"),
("77","3","2","89","1","2020-06-16 19:28:35","2020-07-17 09:38:21"),
("78","3","2","6","1","2020-06-16 19:28:46","2020-07-17 09:38:21"),
("79","2","3","9","1","2020-06-16 19:36:02","2020-06-29 19:09:32"),
("80","3","2","9","1","2020-06-16 21:21:55","2020-07-17 09:38:21"),
("81","2","3","ы","1","2020-06-16 21:22:12","2020-06-29 19:09:32"),
("82","2","3","чя","1","2020-06-16 21:22:18","2020-06-29 19:09:32"),
("83","3","2","в","1","2020-06-16 21:22:21","2020-07-17 09:38:21"),
("84","3","2","яяяяяяяяяч","1","2020-06-16 21:22:27","2020-07-17 09:38:21"),
("85","3","2","ыввывыывф","1","2020-06-16 21:22:29","2020-07-17 09:38:21"),
("86","3","2","цй","1","2020-06-16 21:22:31","2020-07-17 09:38:21"),
("87","3","2","сччссчя","1","2020-06-16 21:22:33","2020-07-17 09:38:21"),
("88","3","2","м","1","2020-06-16 21:22:34","2020-07-17 09:38:21"),
("89","3","2","ммммммммммммммм","1","2020-06-16 21:22:39","2020-07-17 09:38:21"),
("90","2","3","уц","1","2020-06-16 21:23:09","2020-06-29 19:09:32"),
("91","2","3","уц","1","2020-06-16 21:23:25","2020-06-29 19:09:32"),
("92","2","3","6","1","2020-06-18 21:14:16","2020-06-29 19:09:32"),
("93","2","3","yt","1","2020-06-18 21:18:35","2020-06-29 19:09:32"),
("94","2","3","tr","1","2020-06-18 21:19:46","2020-06-29 19:09:32"),
("95","3","2","sa","1","2020-06-29 19:09:35","2020-07-17 09:38:21"),
("96","3","2","ds","1","2020-06-29 19:09:37","2020-07-17 09:38:21"),
("97","3","2","xcx","1","2020-06-29 19:09:38","2020-07-17 09:38:21"),
("98","2","2","Мы понравились друг другу ","1","2020-07-06 11:52:00","2020-07-17 09:38:20"),
("99","2","3","Мы понравились друг другу ","0","2020-07-06 11:52:01","2020-07-06 11:52:01"),
("100","2","2","Мы понравились друг другу ","1","2020-07-06 11:52:06","2020-07-17 09:38:20"),
("101","2","3","Мы понравились друг другу ","0","2020-07-06 11:52:07","2020-07-06 11:52:07"),
("102","2","2","Мы понравились друг другу ","1","2020-07-06 11:53:21","2020-07-17 09:38:20"),
("103","2","3","Мы понравились друг другу ","0","2020-07-06 11:53:21","2020-07-06 11:53:21"),
("104","2","2","Мы понравились друг другу ","1","2020-07-06 12:16:24","2020-07-17 09:38:20"),
("105","2","3","Мы понравились друг другу ","0","2020-07-06 12:16:24","2020-07-06 12:16:24"),
("106","2","2","Мы понравились друг другу ","1","2020-07-06 12:16:26","2020-07-17 09:38:20"),
("107","2","3","Мы понравились друг другу ","0","2020-07-06 12:16:27","2020-07-06 12:16:27"),
("108","2","2","Мы понравились друг другу ","1","2020-07-06 12:16:46","2020-07-17 09:38:20"),
("109","2","3","Мы понравились друг другу ","0","2020-07-06 12:16:46","2020-07-06 12:16:46"),
("110","2","3","99","0","2020-07-06 13:02:17","2020-07-06 13:02:17"),
("111","2","3","888","0","2020-07-06 13:02:57","2020-07-06 13:02:57");





CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO migrations VALUES("25","2020_06_07_200830_add_date_bith_to_user","8"),
("26","2020_06_08_194308_add_url_toalbums_photo_table","9"),
("27","2020_06_10_164215_create_cities_api_table","10"),
("29","2020_06_10_182318_create_seach_settings_able","11"),
("36","2020_06_11_163428_create_seach_target_table","12"),
("37","2020_06_11_163517_create_seach_interest_table","12"),
("38","2020_06_14_110050_create_messages_table","13"),
("39","2020_06_14_142840_create_dialogs_table","14"),
("40","2020_06_14_151648_add_dafeult_banned_value","15"),
("41","2020_06_18_213710_change_columt_to_user_id_in_events","16"),
("43","2020_06_22_185643_add_city_id_to_events_table","17"),
("44","2020_07_01_140028_add_last_logi_to_users_table","18"),
("45","2020_07_06_185825_add_admin_fiesl_to_users","19"),
("46","2020_07_09_081227_create_presents_table","20"),
("47","2020_07_10_114452_create_gift_act_table","21"),
("48","2020_07_10_150711_add_readed_fild_to_girt_act_tale","22"),
("49","2020_07_20_092446_create_sex_table","23"),
("50","2020_08_16_092627_create_databases_table","24"),
("51","2020_08_16_092827_create_tables_table","24"),
("52","2020_08_16_093131_add_foregin_key_from_tables_to_databases","24");



INSERT INTO migrations VALUES("1","2014_10_12_000000_create_users_table","1"),
("2","2014_10_12_100000_create_password_resets_table","1"),
("3","2019_08_19_000000_create_failed_jobs_table","1"),
("4","2019_09_12_082904_create_sessions_table","1"),
("5","2019_09_12_123812_create_jobs_table","1"),
("6","2020_01_20_120223_create_media_table","1"),
("7","2020_06_07_180421_add_profile_url","2"),
("8","2020_06_07_180601_add_fields_to_users_table","3"),
("9","2020_06_07_181807_create_albums_table","4"),
("10","2020_06_07_181921_create_albums_photo_table","4"),
("15","2020_06_07_183221_create_requwest_table","5"),
("16","2020_06_07_184019_create_target_table","5"),
("17","2020_06_07_184225_create_interest_table","6"),
("18","2020_06_07_184328_create_likes_table","7"),
("19","2020_06_07_184432_create_view_history_table","7"),
("20","2020_06_07_184554_create_events_table","7"),
("21","2020_06_07_184643_create_events__requsest_table","7"),
("22","2020_06_07_185012_create_relation_table","7"),
("23","2020_06_07_185132_create_user_target_table","7"),
("24","2020_06_07_185218_create_user_interest_table","7"),
("25","2020_06_07_200830_add_date_bith_to_user","8"),
("26","2020_06_08_194308_add_url_toalbums_photo_table","9"),
("27","2020_06_10_164215_create_cities_api_table","10"),
("29","2020_06_10_182318_create_seach_settings_able","11"),
("36","2020_06_11_163428_create_seach_target_table","12"),
("37","2020_06_11_163517_create_seach_interest_table","12"),
("38","2020_06_14_110050_create_messages_table","13"),
("39","2020_06_14_142840_create_dialogs_table","14"),
("40","2020_06_14_151648_add_dafeult_banned_value","15"),
("41","2020_06_18_213710_change_columt_to_user_id_in_events","16"),
("43","2020_06_22_185643_add_city_id_to_events_table","17"),
("44","2020_07_01_140028_add_last_logi_to_users_table","18"),
("45","2020_07_06_185825_add_admin_fiesl_to_users","19"),
("46","2020_07_09_081227_create_presents_table","20"),
("47","2020_07_10_114452_create_gift_act_table","21"),
("48","2020_07_10_150711_add_readed_fild_to_girt_act_tale","22"),
("49","2020_07_20_092446_create_sex_table","23"),
("50","2020_08_16_092627_create_databases_table","24"),
("51","2020_08_16_092827_create_tables_table","24"),
("52","2020_08_16_093131_add_foregin_key_from_tables_to_databases","24");





CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `presents` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO presents VALUES("8","name","100","d20a08c8d252c9a9d9fdf8808e28daf6.png","1","2020-07-09 13:29:34","2020-07-09 14:53:25");





CREATE TABLE `relation` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `requwest` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `who_id` int(10) unsigned NOT NULL,
  `target_id` int(10) unsigned NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'not_read',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `requwest_who_id_index` (`who_id`),
  KEY `requwest_target_id_index` (`target_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO requwest VALUES("1","event","2","9","denide","2020-06-24 15:36:10","2020-06-25 19:46:25");





CREATE TABLE `seach_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `target_array` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interest_array` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age_from` int(10) unsigned DEFAULT NULL,
  `age_to` int(10) unsigned DEFAULT NULL,
  `children` int(10) unsigned DEFAULT NULL,
  `cookie` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `seach_settings_user_id_index` (`user_id`),
  KEY `seach_settings_target_array_index` (`target_array`),
  KEY `seach_settings_interest_array_index` (`interest_array`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO seach_settings VALUES("1","","","","","18","50","","MDYyN2NlOWEzNWU3NDJmOTg2YjVlOThmNzBmODEzYmMyMmQxMWM3ZA==","2020-06-10 18:42:18","2020-06-10 18:42:18"),
("2","2","","","nomatter","18","61","","","2020-06-11 16:29:19","2020-07-21 10:02:24"),
("3","","","","","","","0","eyJpdiI6Im1yNzVcL1FzM3pOZ2ZKTlZmSjZzeGN3PT0iLCJ2YWx1ZSI6IjE5dE9iNFJXY1JXc21USmoxMENsMzB0TWpcL1UrRnFldFwvanFCWjRpeXNDMlRMcjhuOVVkSmt0dVwvek9nZkVOUlwvRnQ4ZE1aYjBOaUFqYjh1bDFJSWVFUT09IiwibWFjIjoiZGM0OWI0ODJiZjZjZDZkYmE0MmU4ZWFkODExMjE1NWYzZjM0Mjc5OWVlNWJmYjc0ODExOGEyOTk2MmQxYmVjNyJ9","2020-06-14 09:31:05","2020-06-14 09:33:22"),
("4","3","","","","18","76","","","2020-06-29 18:10:09","2020-06-29 18:10:09"),
("5","","","","famele","","","","ZmFkMDQyYjRmNWRmNGZlYmNlMWM4Y2FiZjlmM2ZlYjg3ZDU0M2FmZA==","2020-07-19 16:04:13","2020-07-19 16:04:14"),
("6","","","","nomatter","18","99","","eyJpdiI6ImprL2pFa2MzNlovck95TUNQZGJuc3c9PSIsInZhbHVlIjoiQU52V1NTcnV6NnBlNlVuMkJ6cUpCUWV3eno1TCtjcURTY2d0d1orc2J5aXprOWZmMmZZelE3RXIxTzhESVZqNEpyUElvVjFlTHNvb2Q2d0E4NTlHNmc9PSIsIm1hYyI6Ijk3OTYxZWEyNjg3ZTQ0NmIyMWU4NmE4NjQ4MDI1NzAwNDQ3NmJkMDMzN2RmMzQ4ZTc0ZTFkYTIxNTJhNGIxZTQifQ==","2020-07-19 16:04:19","2020-07-20 09:11:15"),
("7","","","","famele","","","","MDlmZTEzOWJjNDc0ZTcwY2VlODIxZmI1MGJiOGFhMTE2OGMyZjRkOQ==","2020-07-21 08:12:51","2020-07-21 08:12:51");





CREATE TABLE `search_interest` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `search_id` int(10) unsigned NOT NULL,
  `interest_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `search_interest_search_id_index` (`search_id`),
  KEY `search_interest_interest_id_index` (`interest_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `search_target` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `search_id` int(10) unsigned NOT NULL,
  `target_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `search_target_search_id_index` (`search_id`),
  KEY `search_target_target_id_index` (`target_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO search_target VALUES("7","3","1","",""),
("8","3","2","",""),
("9","3","4","","");





CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `tables` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_row` int(11) DEFAULT NULL,
  `last_row` int(11) DEFAULT NULL,
  `beginned` tinyint(1) DEFAULT NULL,
  `completed` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `database_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tables_database_id_foreign` (`database_id`),
  CONSTRAINT `tables_database_id_foreign` FOREIGN KEY (`database_id`) REFERENCES `databases` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `targets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO targets VALUES("1","встречи","",""),
("2","свидания","",""),
("3","отношения","",""),
("4","создание семьи","","");





CREATE TABLE `user_interest` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `interest_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_interest_user_id_index` (`user_id`),
  KEY `user_interest_interest_id_index` (`interest_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO user_interest VALUES("23","3","2","",""),
("64","2","1","",""),
("65","2","2","","");





CREATE TABLE `user_target` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `target_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_target_user_id_index` (`user_id`),
  KEY `user_target_target_id_index` (`target_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO user_target VALUES("34","3","1","",""),
("35","3","4","",""),
("78","2","1","",""),
("79","2","2","",""),
("80","2","3","","");





CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT current_timestamp(),
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `profile_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biginvip` datetime DEFAULT NULL,
  `endvip` datetime DEFAULT NULL,
  `sex` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  `meet` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banned` tinyint(1) DEFAULT 0,
  `country_id` int(10) unsigned DEFAULT NULL,
  `region_id` int(10) unsigned DEFAULT NULL,
  `city_id` int(10) unsigned DEFAULT NULL,
  `date_birth` date DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `admin` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_country_id_index` (`country_id`),
  KEY `users_region_id_index` (`region_id`),
  KEY `users_city_id_index` (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO users VALUES("2","565656q","triest21@gmail.com","2020-06-07 21:01:36","$2y$10$TxJzEpRy1UUlB4DZb28FzegCd8FDzzaQ9szcVpfZpBiExBczlTsOi","","","2020-06-07 18:01:36","2020-07-22 21:12:45","/upload/lk_profile/2/a871a8acfc1b088e144595dba6b38aa3.png","","588888888888888888888888888888888888888888888888888888888888888","","","","famele","","","","0","","","1","2001-07-21","","1"),
("3","triest","triest22@gmail.com","2020-06-14 18:18:27","$2y$10$xIc6AxR43/LrUBwnVH4b5OzZ8MuKfmlzp.eHptm/LttOfYOUef0J2","","","2020-06-14 15:18:27","2020-06-14 15:23:03","/upload/lk_profile/2/a871a8acfc1b088e144595dba6b38aa3.png","","zxxxxxxxxxxxxx","","","","famele","","","","0","","","1","1990-01-01","","1"),
("4","","test@mail.com","2020-08-01 13:39:40","$2y$10$U7AYT81X9ZhHBP7L8FWCJOd6JRLDjUYWPCHGggOuAVElFdH7PNKum","","","2020-08-01 10:39:40","2020-08-01 10:39:40","","","","","","","","","","","0","","","","","","0");





CREATE TABLE `view_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(10) unsigned NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `view_history_user_index` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




