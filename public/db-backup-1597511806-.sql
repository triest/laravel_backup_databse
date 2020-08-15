

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



