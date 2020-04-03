/*
 Navicat Premium Data Transfer

 Source Server         : Dev MySQL DB
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : 127.0.0.1:3306
 Source Schema         : WealthLandDB

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 03/04/2020 11:50:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app_category_lands
-- ----------------------------
DROP TABLE IF EXISTS `app_category_lands`;
CREATE TABLE `app_category_lands` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_land_name_vi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_land_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isNotActive` tinyint(4) DEFAULT '0',
  `imgCoverUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of app_category_lands
-- ----------------------------
BEGIN;
INSERT INTO `app_category_lands` VALUES (1, 'Chung Cư Riverside', 'Apartment Riverside', 0, 'app-category-lands/March2020/pbDmaodclDtGErJQtZJ5.jpg', '2020-03-30 07:44:00', '2020-03-30 08:59:20');
INSERT INTO `app_category_lands` VALUES (2, 'Biệt thự Riverside', 'Villa Riverside', 0, 'app-category-lands/March2020/dMDuuxP0YAnM38hjFWKQ.jpg', '2020-03-30 08:42:27', '2020-03-30 09:02:24');
COMMIT;

-- ----------------------------
-- Table structure for app_category_project_lands
-- ----------------------------
DROP TABLE IF EXISTS `app_category_project_lands`;
CREATE TABLE `app_category_project_lands` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_project_land_name_vi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_project_land_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isNotActive` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `imgCoverUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of app_category_project_lands
-- ----------------------------
BEGIN;
INSERT INTO `app_category_project_lands` VALUES (1, 'Dự án Babylon', 'Babylon Projects', 0, '2020-03-30 08:42:53', '2020-03-30 09:03:51', 'app-category-project-lands/March2020/cfAtP4ncTspakuZcrJmT.jpg');
INSERT INTO `app_category_project_lands` VALUES (2, 'Dự án Riverside', 'Riverside Project', 0, '2020-03-30 08:47:45', '2020-03-30 09:04:17', 'app-category-project-lands/March2020/imP2aUb7DGaygohjDIEC.jpg');
COMMIT;

-- ----------------------------
-- Table structure for app_lands
-- ----------------------------
DROP TABLE IF EXISTS `app_lands`;
CREATE TABLE `app_lands` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_land_id` int(11) DEFAULT NULL,
  `project_land_id` int(11) DEFAULT NULL,
  `titleVI` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `titleEN` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seoAliasVI` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seoAliasEN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduceContentVI` longtext COLLATE utf8mb4_unicode_ci,
  `introduceContentEN` longtext COLLATE utf8mb4_unicode_ci,
  `isHot` tinyint(4) DEFAULT '0',
  `status` tinyint(4) DEFAULT '0',
  `imgCoverUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userCreatedId` int(11) DEFAULT NULL,
  `userUpdatedId` int(11) DEFAULT NULL,
  `imgUrls` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `iArea` float DEFAULT NULL,
  `iFloor` float DEFAULT NULL,
  `iBedroom` tinyint(4) DEFAULT NULL,
  `iBathroom` float DEFAULT NULL,
  `iBuiltYear` int(11) DEFAULT NULL,
  `iHasGarage` tinyint(4) DEFAULT '0',
  `iParking` tinyint(4) DEFAULT '0',
  `iPrice` double DEFAULT NULL,
  `iAddress` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of app_lands
-- ----------------------------
BEGIN;
INSERT INTO `app_lands` VALUES (1, NULL, NULL, 'Biệt thự Moonlight Riverside', 'Moonlight Riverside Villa', 'biet-thu-moonlight-riverside', 'moonlight-riverside-villa', NULL, NULL, 1, 1, 'app-lands/March2020/1sUsMkvOVCpYEScD7WRL.jpg', NULL, NULL, '[\"app-lands\\/March2020\\/OfdTSvDDTkesMiXIrCHv.jpg\",\"app-lands\\/March2020\\/SgJUo1jDnWwFXWVwaN3M.jpg\",\"app-lands\\/March2020\\/GuzzAcV2h4zb87AcpYtS.jpg\",\"app-lands\\/March2020\\/jpQ2TEDkQyTtQlJTt4LA.jpg\",\"app-lands\\/March2020\\/ve0MeZ2kQTg4zkFNbKCz.jpg\",\"app-lands\\/March2020\\/VGJ2fqdlejDF2DGLdRfg.jpg\"]', '2020-03-30 09:07:00', '2020-04-03 03:59:03', NULL, 300, 3, 5, 6, 2019, 1, 2, 6.5, 'Thành Phố Hồ Chí Minh');
INSERT INTO `app_lands` VALUES (2, NULL, NULL, 'CH Sun Avenue MT Mai Chí Thọ', 'CH Sun Avenue MT Mai Chí Thọ', 'can-ho-sun-avenue-mt-mai-chi-tho', 'can-ho-sun-avenue-mt-mai-chi-tho', NULL, NULL, 1, 1, 'app-lands/March2020/1sUsMkvOVCpYEScD7WRL.jpg', NULL, NULL, NULL, '2020-04-02 10:44:46', '2020-04-02 10:44:46', NULL, 56, 1, 3, 2, 2017, 0, 2, 2.8, 'Sun Avenue MT Mai Chí Thọ, Q.2');
INSERT INTO `app_lands` VALUES (3, NULL, NULL, 'CH Sun Avenue MT Mai Chí Thọ', 'CH Sun Avenue MT Mai Chí Thọ', 'can-ho-sun-avenue-mt-mai-chi-tho', 'can-ho-sun-avenue-mt-mai-chi-tho', NULL, NULL, 1, 1, 'app-lands/March2020/1sUsMkvOVCpYEScD7WRL.jpg', NULL, NULL, NULL, '2020-04-02 10:44:46', '2020-04-02 10:44:46', NULL, 56, 1, 3, 2, 2017, 0, 2, 2.8, 'Sun Avenue MT Mai Chí Thọ, Q.2');
INSERT INTO `app_lands` VALUES (4, NULL, NULL, 'CH Sun Avenue MT Mai Chí Thọ', 'CH Sun Avenue MT Mai Chí Thọ', 'can-ho-sun-avenue-mt-mai-chi-tho', 'can-ho-sun-avenue-mt-mai-chi-tho', NULL, NULL, 1, 1, 'app-lands/March2020/1sUsMkvOVCpYEScD7WRL.jpg', NULL, NULL, NULL, '2020-04-02 10:44:46', '2020-04-02 10:44:46', NULL, 56, 1, 3, 2, 2017, 0, 2, 2.8, 'Sun Avenue MT Mai Chí Thọ, Q.2');
INSERT INTO `app_lands` VALUES (5, NULL, NULL, 'CH Sun Avenue MT Mai Chí Thọ', 'CH Sun Avenue MT Mai Chí Thọ', 'can-ho-sun-avenue-mt-mai-chi-tho', 'can-ho-sun-avenue-mt-mai-chi-tho', NULL, NULL, 1, 1, 'app-lands/March2020/1sUsMkvOVCpYEScD7WRL.jpg', NULL, NULL, NULL, '2020-04-02 10:44:46', '2020-04-02 10:44:46', NULL, 56, 1, 3, 2, 2017, 0, 2, 2.8, 'Sun Avenue MT Mai Chí Thọ, Q.2');
INSERT INTO `app_lands` VALUES (6, NULL, NULL, 'CH Sun Avenue MT Mai Chí Thọ', 'CH Sun Avenue MT Mai Chí Thọ', 'can-ho-sun-avenue-mt-mai-chi-tho', 'can-ho-sun-avenue-mt-mai-chi-tho', NULL, NULL, 1, 1, 'app-lands/March2020/1sUsMkvOVCpYEScD7WRL.jpg', NULL, NULL, NULL, '2020-04-02 10:44:46', '2020-04-02 10:44:46', NULL, 56, 1, 3, 2, 2017, 0, 2, 2.8, 'Sun Avenue MT Mai Chí Thọ, Q.2');
INSERT INTO `app_lands` VALUES (7, NULL, NULL, 'CH Sun Avenue MT Mai Chí Thọ', 'CH Sun Avenue MT Mai Chí Thọ', 'can-ho-sun-avenue-mt-mai-chi-tho', 'can-ho-sun-avenue-mt-mai-chi-tho', NULL, NULL, 1, 1, 'app-lands/March2020/1sUsMkvOVCpYEScD7WRL.jpg', NULL, NULL, NULL, '2020-04-02 10:44:46', '2020-04-02 10:44:46', NULL, 56, 1, 3, 2, 2017, 0, 2, 2.8, 'Sun Avenue MT Mai Chí Thọ, Q.2');
INSERT INTO `app_lands` VALUES (8, NULL, NULL, 'CH Sun Avenue MT Mai Chí Thọ', 'CH Sun Avenue MT Mai Chí Thọ', 'can-ho-sun-avenue-mt-mai-chi-tho', 'can-ho-sun-avenue-mt-mai-chi-tho', NULL, NULL, 1, 1, 'app-lands/March2020/1sUsMkvOVCpYEScD7WRL.jpg', NULL, NULL, NULL, '2020-04-02 10:44:46', '2020-04-02 10:44:46', NULL, 56, 1, 3, 2, 2017, 0, 2, 2.8, 'Sun Avenue MT Mai Chí Thọ, Q.2');
INSERT INTO `app_lands` VALUES (9, NULL, NULL, 'CH Sun Avenue MT Mai Chí Thọ', 'CH Sun Avenue MT Mai Chí Thọ', 'can-ho-sun-avenue-mt-mai-chi-tho', 'can-ho-sun-avenue-mt-mai-chi-tho', NULL, NULL, 1, 1, 'app-lands/March2020/1sUsMkvOVCpYEScD7WRL.jpg', NULL, NULL, NULL, '2020-04-02 10:44:46', '2020-04-02 10:44:46', NULL, 56, 1, 3, 2, 2017, 0, 2, 2.8, 'Sun Avenue MT Mai Chí Thọ, Q.2');
INSERT INTO `app_lands` VALUES (10, NULL, NULL, 'CH Sun Avenue MT Mai Chí Thọ', 'CH Sun Avenue MT Mai Chí Thọ', 'can-ho-sun-avenue-mt-mai-chi-tho', 'can-ho-sun-avenue-mt-mai-chi-tho', NULL, NULL, 1, 1, 'app-lands/March2020/1sUsMkvOVCpYEScD7WRL.jpg', NULL, NULL, NULL, '2020-04-02 10:44:46', '2020-04-02 10:44:46', NULL, 56, 1, 3, 2, 2017, 0, 2, 2.8, 'Sun Avenue MT Mai Chí Thọ, Q.2');
INSERT INTO `app_lands` VALUES (11, NULL, NULL, 'CH Sun Avenue MT Mai Chí Thọ', 'CH Sun Avenue MT Mai Chí Thọ', 'can-ho-sun-avenue-mt-mai-chi-tho', 'can-ho-sun-avenue-mt-mai-chi-tho', NULL, NULL, 1, 1, 'app-lands/March2020/1sUsMkvOVCpYEScD7WRL.jpg', NULL, NULL, NULL, '2020-04-02 10:44:46', '2020-04-02 10:44:46', NULL, 56, 1, 3, 2, 2017, 0, 2, 2.8, 'Sun Avenue MT Mai Chí Thọ, Q.2');
INSERT INTO `app_lands` VALUES (12, NULL, NULL, 'CH Sun Avenue MT Mai Chí Thọ', 'CH Sun Avenue MT Mai Chí Thọ', 'can-ho-sun-avenue-mt-mai-chi-tho', 'can-ho-sun-avenue-mt-mai-chi-tho', NULL, NULL, 1, 1, 'app-lands/March2020/1sUsMkvOVCpYEScD7WRL.jpg', NULL, NULL, NULL, '2020-04-02 10:44:46', '2020-04-02 10:44:46', NULL, 56, 1, 3, 2, 2017, 0, 2, 2.8, 'Sun Avenue MT Mai Chí Thọ, Q.2');
COMMIT;

-- ----------------------------
-- Table structure for app_news_posts
-- ----------------------------
DROP TABLE IF EXISTS `app_news_posts`;
CREATE TABLE `app_news_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hashtag` text COLLATE utf8mb4_unicode_ci,
  `slugVI` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugEN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titleVI` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titleEN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contentVI` longtext COLLATE utf8mb4_unicode_ci,
  `contentEN` longtext COLLATE utf8mb4_unicode_ci,
  `isHot` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `imgCoverUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userIdCreated` int(11) DEFAULT NULL,
  `userIdUpdated` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of app_news_posts
-- ----------------------------
BEGIN;
INSERT INTO `app_news_posts` VALUES (1, NULL, '5-yeu-to-tao-nen-co-hoi-dau-tu-thong-minh-tai-flc-luxury-hotel-sam-son', '5-yeu-to-tao-nen-co-hoi-dau-tu-thong-minh-tai-flc-luxury-hotel-sam-son', '5 YẾU TỐ TẠO NÊN CƠ HỘI ĐẦU TƯ THÔNG MINH TẠI FLC LUXURY HOTEL SẦM SƠN', '5 YẾU TỐ TẠO NÊN CƠ HỘI ĐẦU TƯ THÔNG MINH TẠI FLC LUXURY HOTEL SẦM SƠN', '<div class=\"entry-content single-page\">\r\n<div><img class=\"aligncenter lazy-load-active\" src=\"https://batdongsan8.trustweb.vn/wp-content/uploads/2018/07/5-yeu-to-tao-nen-co-hoi-dau-tu-thong-minh-tai-flc-luxury-hotel-sam-son-257-8643.jpg\" alt=\"5 YẾU TỐ TẠO N&Ecirc;N CƠ HỘI ĐẦU TƯ TH&Ocirc;NG MINH TẠI FLC LUXURY HOTEL SẦM SƠN\" width=\"1021\" height=\"576\" data-src=\"https://batdongsan8.trustweb.vn/wp-content/uploads/2018/07/5-yeu-to-tao-nen-co-hoi-dau-tu-thong-minh-tai-flc-luxury-hotel-sam-son-257-8643.jpg\" /></div>\r\n<p>(DĐDN) &ndash; Chỉ mới ra mắt kh&aacute;ch h&agrave;ng v&agrave; nh&agrave; đầu tư chưa l&acirc;u nhưng căn hộ kh&aacute;ch sạn FLC Luxury Hotel Sầm Sơn đ&atilde; trở th&agrave;nh t&acirc;m điểm tr&ecirc;n thị trường bất động sản nghỉ dưỡng hiện nay.</p>\r\n<div>H&agrave;ng trăm kh&aacute;ch h&agrave;ng tham dự buổi lễ &ldquo;Cơ hội đầu tư căn hộ kh&aacute;ch sạn FLC Luxury Hotel Sầm Sơn&rdquo;</div>\r\n<p>Buổi lễ &ldquo;Cơ hội đầu tư căn hộ kh&aacute;ch sạn FLC Luxury Hotel Sầm Sơn&rdquo; được tổ chức tại Quần thể du lịch nghỉ dưỡng sinh th&aacute;i FLC Sầm Sơn th&agrave;nh c&ocirc;ng ngo&agrave;i mong đợi với h&agrave;ng trăm kh&aacute;ch h&agrave;ng tham gia v&agrave; nhiều giao dịch th&agrave;nh c&ocirc;ng.</p>\r\n<p>L&yacute; giải cho sức hấp dẫn đặc biệt của FLC Luxury Hotel Sầm Sơn, nhiều chuy&ecirc;n gia đ&aacute;nh gi&aacute;, căn hộ kh&aacute;ch sạn n&agrave;y đ&atilde; hội tụ cả 5 yếu tố quan trọng để kh&aacute;ch h&agrave;ng v&agrave; nh&agrave; đầu tư &ldquo;nhắm&rdquo; đến. Cũng trong buổi lễ, &ocirc;ng Hồ Văn Hiếu, Việt kiều Đức chia sẻ l&yacute; do quyết định đặt mua FLC Luxury Hotel Sầm Sơn:&ldquo;Lựa chọn FLC Luxury Hotel Sầm Sơn, t&ocirc;i v&agrave; gia đ&igrave;nh kh&ocirc;ng chỉ được tận hưởng cuộc sống nghỉ dưỡng trọn vẹn b&ecirc;n b&atilde;i biển thơ mộng m&agrave; c&ograve;n l&agrave; k&ecirc;nh đầu tư sinh lời an to&agrave;n. Chủ đầu tư uy t&iacute;n c&ugrave;ng sản phẩm c&oacute; nhiều ưu thế từ vị tr&iacute; đến ch&iacute;nh s&aacute;ch b&aacute;n h&agrave;ng đ&atilde; hấp dẫn t&ocirc;i ngay từ ng&agrave;y đầu tiếp cận sản phẩm&rdquo;.</p>\r\n<p>Yếu tố đầu ti&ecirc;n v&agrave; quan trọng nhất để ph&aacute;t triển bất động sản nghỉ dưỡng l&agrave; vị tr&iacute; &ndash; vị tr&iacute; v&agrave; vị tr&iacute;. FLC Luxury Hotel Sầm Sơn tọa lạc ngay s&aacute;t b&atilde;i biển Sầm Sơn (Thanh H&oacute;a) do vậy tất cả c&aacute;c căn hộ kh&aacute;ch sạn đều sở hữu tầm nh&igrave;n hướng biển tuyệt đẹp. Đặc biệt sắp tới khi tuyến đường cao tốc Ph&aacute;p V&acirc;n &ndash; Thanh H&oacute;a ho&agrave;n thiện, thời gian di chuyển từ H&agrave; Nội đến Quần thể du lịch nghỉ dưỡng FLC chỉ c&ograve;n chưa đầy 2 giờ. Vị tr&iacute; đẹp, giao th&ocirc;ng thuận tiện l&agrave; những gi&aacute; trị h&agrave;ng đầu mang đến kh&ocirc;ng gian nghỉ dưỡng l&yacute; tưởng c&ugrave;ng cơ hội đầu tư &ldquo;v&agrave;ng&rdquo;.</p>\r\n<p>&nbsp;</p>\r\n<div><a class=\"photolightbox\" title=\"5 YẾU TỐ TẠO N&Ecirc;N CƠ HỘI ĐẦU TƯ TH&Ocirc;NG MINH TẠI FLC LUXURY HOTEL SẦM SƠN\" href=\"https://batdongsan8.trustweb.vn/wp-content/uploads/2018/07/5-yeu-to-tao-nen-co-hoi-dau-tu-thong-minh-tai-flc-luxury-hotel-sam-son-257-2998.jpg\"><img class=\"aligncenter lazy-load-active\" src=\"https://batdongsan8.trustweb.vn/wp-content/uploads/2018/07/5-yeu-to-tao-nen-co-hoi-dau-tu-thong-minh-tai-flc-luxury-hotel-sam-son-257-2998.jpg\" alt=\"5 YẾU TỐ TẠO N&Ecirc;N CƠ HỘI ĐẦU TƯ TH&Ocirc;NG MINH TẠI FLC LUXURY HOTEL SẦM SƠN\" data-src=\"https://batdongsan8.trustweb.vn/wp-content/uploads/2018/07/5-yeu-to-tao-nen-co-hoi-dau-tu-thong-minh-tai-flc-luxury-hotel-sam-son-257-2998.jpg\" /></a></div>\r\n<div>&nbsp;</div>\r\n<p>Đối với ph&acirc;n kh&uacute;c&nbsp;bất động sản nghỉ dưỡng,&nbsp;yếu tố quan trọng để kh&aacute;ch h&agrave;ng lựa chọn l&agrave; uy t&iacute;n v&agrave; kinh nghiệm của chủ đầu tư. Tập đo&agrave;n FLC hiện đang được đ&aacute;nh gi&aacute; l&agrave; một trong số c&aacute;c chủ đầu tư c&oacute; uy t&iacute;n, năng lực t&agrave;i ch&iacute;nh vững mạnh v&agrave; lu&ocirc;n đảm bảo chất lượng cũng như tiến độ x&acirc;y dựng. Điều n&agrave;y được chứng minh qua rất nhiều c&aacute;c dự &aacute;n đ&atilde; v&agrave; đang được Tập đo&agrave;n triển khai.</p>\r\n<div class=\"blog-share text-center\">\r\n<div class=\"is-divider medium\">&nbsp;</div>\r\n<div class=\"social-icons share-icons share-row relative\">&nbsp;</div>\r\n</div>\r\n</div>', '<div><img class=\"aligncenter lazy-load-active\" src=\"https://batdongsan8.trustweb.vn/wp-content/uploads/2018/07/5-yeu-to-tao-nen-co-hoi-dau-tu-thong-minh-tai-flc-luxury-hotel-sam-son-257-8643.jpg\" alt=\"5 YẾU TỐ TẠO N&Ecirc;N CƠ HỘI ĐẦU TƯ TH&Ocirc;NG MINH TẠI FLC LUXURY HOTEL SẦM SƠN\" width=\"1021\" height=\"576\" data-src=\"https://batdongsan8.trustweb.vn/wp-content/uploads/2018/07/5-yeu-to-tao-nen-co-hoi-dau-tu-thong-minh-tai-flc-luxury-hotel-sam-son-257-8643.jpg\" /></div>\r\n<p>(DĐDN) &ndash; Chỉ mới ra mắt kh&aacute;ch h&agrave;ng v&agrave; nh&agrave; đầu tư chưa l&acirc;u nhưng căn hộ kh&aacute;ch sạn FLC Luxury Hotel Sầm Sơn đ&atilde; trở th&agrave;nh t&acirc;m điểm tr&ecirc;n thị trường bất động sản nghỉ dưỡng hiện nay.</p>\r\n<div>H&agrave;ng trăm kh&aacute;ch h&agrave;ng tham dự buổi lễ &ldquo;Cơ hội đầu tư căn hộ kh&aacute;ch sạn FLC Luxury Hotel Sầm Sơn&rdquo;</div>\r\n<p>Buổi lễ &ldquo;Cơ hội đầu tư căn hộ kh&aacute;ch sạn FLC Luxury Hotel Sầm Sơn&rdquo; được tổ chức tại Quần thể du lịch nghỉ dưỡng sinh th&aacute;i FLC Sầm Sơn th&agrave;nh c&ocirc;ng ngo&agrave;i mong đợi với h&agrave;ng trăm kh&aacute;ch h&agrave;ng tham gia v&agrave; nhiều giao dịch th&agrave;nh c&ocirc;ng.</p>\r\n<p>L&yacute; giải cho sức hấp dẫn đặc biệt của FLC Luxury Hotel Sầm Sơn, nhiều chuy&ecirc;n gia đ&aacute;nh gi&aacute;, căn hộ kh&aacute;ch sạn n&agrave;y đ&atilde; hội tụ cả 5 yếu tố quan trọng để kh&aacute;ch h&agrave;ng v&agrave; nh&agrave; đầu tư &ldquo;nhắm&rdquo; đến. Cũng trong buổi lễ, &ocirc;ng Hồ Văn Hiếu, Việt kiều Đức chia sẻ l&yacute; do quyết định đặt mua FLC Luxury Hotel Sầm Sơn:&ldquo;Lựa chọn FLC Luxury Hotel Sầm Sơn, t&ocirc;i v&agrave; gia đ&igrave;nh kh&ocirc;ng chỉ được tận hưởng cuộc sống nghỉ dưỡng trọn vẹn b&ecirc;n b&atilde;i biển thơ mộng m&agrave; c&ograve;n l&agrave; k&ecirc;nh đầu tư sinh lời an to&agrave;n. Chủ đầu tư uy t&iacute;n c&ugrave;ng sản phẩm c&oacute; nhiều ưu thế từ vị tr&iacute; đến ch&iacute;nh s&aacute;ch b&aacute;n h&agrave;ng đ&atilde; hấp dẫn t&ocirc;i ngay từ ng&agrave;y đầu tiếp cận sản phẩm&rdquo;.</p>\r\n<p>Yếu tố đầu ti&ecirc;n v&agrave; quan trọng nhất để ph&aacute;t triển bất động sản nghỉ dưỡng l&agrave; vị tr&iacute; &ndash; vị tr&iacute; v&agrave; vị tr&iacute;. FLC Luxury Hotel Sầm Sơn tọa lạc ngay s&aacute;t b&atilde;i biển Sầm Sơn (Thanh H&oacute;a) do vậy tất cả c&aacute;c căn hộ kh&aacute;ch sạn đều sở hữu tầm nh&igrave;n hướng biển tuyệt đẹp. Đặc biệt sắp tới khi tuyến đường cao tốc Ph&aacute;p V&acirc;n &ndash; Thanh H&oacute;a ho&agrave;n thiện, thời gian di chuyển từ H&agrave; Nội đến Quần thể du lịch nghỉ dưỡng FLC chỉ c&ograve;n chưa đầy 2 giờ. Vị tr&iacute; đẹp, giao th&ocirc;ng thuận tiện l&agrave; những gi&aacute; trị h&agrave;ng đầu mang đến kh&ocirc;ng gian nghỉ dưỡng l&yacute; tưởng c&ugrave;ng cơ hội đầu tư &ldquo;v&agrave;ng&rdquo;.</p>\r\n<div><a class=\"photolightbox\" title=\"5 YẾU TỐ TẠO N&Ecirc;N CƠ HỘI ĐẦU TƯ TH&Ocirc;NG MINH TẠI FLC LUXURY HOTEL SẦM SƠN\" href=\"https://batdongsan8.trustweb.vn/wp-content/uploads/2018/07/5-yeu-to-tao-nen-co-hoi-dau-tu-thong-minh-tai-flc-luxury-hotel-sam-son-257-2998.jpg\"><img class=\"aligncenter lazy-load-active\" src=\"https://batdongsan8.trustweb.vn/wp-content/uploads/2018/07/5-yeu-to-tao-nen-co-hoi-dau-tu-thong-minh-tai-flc-luxury-hotel-sam-son-257-2998.jpg\" alt=\"5 YẾU TỐ TẠO N&Ecirc;N CƠ HỘI ĐẦU TƯ TH&Ocirc;NG MINH TẠI FLC LUXURY HOTEL SẦM SƠN\" data-src=\"https://batdongsan8.trustweb.vn/wp-content/uploads/2018/07/5-yeu-to-tao-nen-co-hoi-dau-tu-thong-minh-tai-flc-luxury-hotel-sam-son-257-2998.jpg\" /></a></div>\r\n<p>Đối với ph&acirc;n kh&uacute;c&nbsp;bất động sản nghỉ dưỡng,&nbsp;yếu tố quan trọng để kh&aacute;ch h&agrave;ng lựa chọn l&agrave; uy t&iacute;n v&agrave; kinh nghiệm của chủ đầu tư. Tập đo&agrave;n FLC hiện đang được đ&aacute;nh gi&aacute; l&agrave; một trong số c&aacute;c chủ đầu tư c&oacute; uy t&iacute;n, năng lực t&agrave;i ch&iacute;nh vững mạnh v&agrave; lu&ocirc;n đảm bảo chất lượng cũng như tiến độ x&acirc;y dựng. Điều n&agrave;y được chứng minh qua rất nhiều c&aacute;c dự &aacute;n đ&atilde; v&agrave; đang được Tập đo&agrave;n triển khai.</p>\r\n<div class=\"blog-share text-center\">\r\n<div class=\"is-divider medium\">&nbsp;</div>\r\n<div class=\"social-icons share-icons share-row relative\">&nbsp;</div>\r\n</div>', 1, 1, 'app-news-posts/March2020/pK7ea66W6PNJ44ZLxT87.jpg', NULL, NULL, '2020-03-30 09:24:00', '2020-04-02 09:10:45', NULL);
INSERT INTO `app_news_posts` VALUES (2, NULL, 'vinhome-dragon-bay-ra-mat-khu-shop-house-dang-cap', 'vinhome-dragon-bay-ra-mat-khu-shop-house-dang-cap', 'VINHOMES DRAGON BAY RA MẮT KHU SHOPHOUSE ĐẲNG CẤP', 'VINHOMES DRAGON BAY RA MẮT KHU SHOPHOUSE ĐẲNG CẤP', '<p><img src=\"/storage/app-news-posts/April2020/vinhomes-dragon-bay-ra-mat-khu-shophouse-dang-cap-253-2010.jpg\" alt=\"\" /></p>\r\n<p><span style=\"color: #777777; font-family: Lato, sans-serif; font-size: medium;\">(DĐDN) &ndash; Ng&agrave;y 27/3/2016, Tập đo&agrave;n Vingroup tổ chức sự kiện ra mắt Khu đ&ocirc; thị biển Vinhomes Dragon Bay, Hạ Long, Quảng Ninh. Đồng thời ch&iacute;nh thức nhận đăng k&yacute; đặt mua đợt 1 c&aacute;c căn shophous đẳng cấp tại dự &aacute;n.</span></p>\r\n<div style=\"box-sizing: border-box; color: #777777; font-family: Lato, sans-serif; font-size: medium;\">Nh&acirc;n sự kiện ra mắt, chủ đầu tư Vingroup c&ocirc;ng bố chương tr&igrave;nh ưu đ&atilde;i đặc biệt d&agrave;nh cho những kh&aacute;ch h&agrave;ng đăng k&yacute; đặt mua đợt 1 những căn shophouse Vinhomes Dragon Bay.</div>\r\n<div style=\"box-sizing: border-box; color: #777777; font-family: Lato, sans-serif; font-size: medium;\">Theo đ&oacute;, kh&aacute;ch h&agrave;ng sẽ được hỗ trợ vay vốn l&ecirc;n tới 70% gi&aacute; trị căn hộ, với l&atilde;i suất ưu đ&atilde;i 0% trong v&ograve;ng 12 th&aacute;ng; đồng thời được miễn ph&iacute; 3 năm g&oacute;i dịch vụ quản l&yacute;. Đặc biệt, kh&aacute;ch h&agrave;ng đặt mua 50 căn shophouse đầu ti&ecirc;n sẽ được tặng 2 thẻ Bảo hiểm sức khỏe Vinmec Health Platinum d&agrave;nh cho 2 người lớn trong v&ograve;ng 2 năm tại chuỗi Bệnh viện Đa khoa Quốc tế Vinmec.</div>\r\n<div style=\"box-sizing: border-box; color: #777777; font-family: Lato, sans-serif; font-size: medium;\">&nbsp;</div>\r\n<div style=\"box-sizing: border-box; color: #777777; font-family: Lato, sans-serif; font-size: medium;\">\r\n<div style=\"box-sizing: border-box;\">Vinhomes Dragon Bay l&agrave; khu đ&ocirc; thị b&ecirc;n bờ Vịnh đẹp bậc nhất Việt Nam v&agrave; l&agrave; khu đ&ocirc; thị biển đầu ti&ecirc;n của Vingroup.</div>\r\n<div style=\"box-sizing: border-box;\">Dự &aacute;n c&oacute; tổng diện t&iacute;ch 68,35ha bao gồm khu phức hợp nh&agrave; ở, kh&aacute;ch sạn v&agrave; điểm nhấn l&agrave; khu nh&agrave; phố thương mại (shophouse) chia th&agrave;nh 3 ph&acirc;n khu: Ph&uacute; Gia, Ho&agrave;ng Gia, Mỹ Gia. Vị tr&iacute; đắc địa của c&aacute;c khu Shophouse mang đến sự thuận lợi tối đa cho c&aacute;c hoạt động kinh doanh. Trong đ&oacute;, c&aacute;c căn hướng ra quảng trường với mặt tiền tho&aacute;ng rộng ph&ugrave; hợp cho kinh doanh ẩm thực, thời trang; c&aacute;c căn hướng Vịnh Hạ Long thuận lợi cho dịch vụ vui chơi, giải tr&iacute;, bar, c&agrave; ph&ecirc; thư gi&atilde;n&hellip;</div>\r\n</div>\r\n<div style=\"box-sizing: border-box; color: #777777; font-family: Lato, sans-serif; font-size: medium;\">&nbsp;</div>\r\n<div style=\"box-sizing: border-box; color: #777777; font-family: Lato, sans-serif; font-size: medium;\">\r\n<div style=\"box-sizing: border-box;\">To&agrave;n bộ hệ thống shophouse đều c&oacute; 4 tầng, với diện t&iacute;ch linh hoạt từ 90-189m2, mặt tiền từ 6-9m. Tầng 1 phục vụ mục đ&iacute;ch kinh doanh, c&aacute;c tầng tr&ecirc;n được quy hoạch v&agrave; thiết kế th&agrave;nh kh&ocirc;ng gian sinh sống v&agrave; nghỉ dưỡng đẳng cấp d&agrave;nh cho gia chủ. Đ&acirc;y ch&iacute;nh l&agrave; m&ocirc; h&igrave;nh &ldquo;3 trong 1&rdquo; chỉ c&oacute; tại shophouse Vinhomes Dragon Bay.</div>\r\n<div style=\"box-sizing: border-box;\">&nbsp;</div>\r\n<div style=\"box-sizing: border-box;\">Từ vị tr&iacute; trung t&acirc;m của khu shophouse, kh&aacute;ch h&agrave;ng c&oacute; thể kết nối thuận tiện tới 39 tiện &iacute;ch của khu đ&ocirc; thị như phố đi bộ, mặt nước hoa nghệ thuật, quảng trường phong c&aacute;ch ch&acirc;u &Acirc;u, quảng trường nước, s&acirc;n chơi v&agrave; vườn kiểu Ph&aacute;p, khu gi&agrave;n hoa nghỉ ch&acirc;n, thảm c&acirc;y nghệ thuật&hellip;</div>\r\n<div style=\"box-sizing: border-box;\">&nbsp;</div>\r\n<div style=\"box-sizing: border-box;\">Từ vị tr&iacute; trung t&acirc;m của khu shophouse, kh&aacute;ch h&agrave;ng c&oacute; thể kết nối thuận tiện tới 39 tiện &iacute;ch của khu đ&ocirc; thị như phố đi bộ, mặt nước hoa nghệ thuật, quảng trường phong c&aacute;ch ch&acirc;u &Acirc;u, quảng trường nước, s&acirc;n chơi v&agrave; vườn kiểu Ph&aacute;p, khu gi&agrave;n hoa nghỉ ch&acirc;n, thảm c&acirc;y nghệ thuật&hellip;</div>\r\n<div style=\"box-sizing: border-box;\">&nbsp;</div>\r\n<div style=\"box-sizing: border-box;\">\r\n<div style=\"box-sizing: border-box;\">B&ecirc;n cạnh đ&oacute;, với hệ thống dịch vụ, tiện &iacute;ch đồng bộ kết hợp c&ugrave;ng kh&ocirc;ng gian xanh m&aacute;t, hướng biển, chủ sở hữu shophouse sẽ được tận hưởng cuộc sống chất lượng cao trong kh&ocirc;ng kh&iacute; biển trong l&agrave;nh v&agrave; kho&aacute;ng đạt.</div>\r\n<div style=\"box-sizing: border-box;\">Dự &aacute;n Vinhomes Dragon Bay dự kiến b&agrave;n giao th&ocirc; cho kh&aacute;ch h&agrave;ng những căn shophouse đầu ti&ecirc;n trong Qu&yacute; IV/2016.</div>\r\n</div>\r\n</div>', '<p><img src=\"http://wealthland.test/storage/app-news-posts/April2020/vinhomes-dragon-bay-ra-mat-khu-shophouse-dang-cap-253-2010.jpg\" alt=\"\" /></p>\r\n<p><span style=\"color: #777777; font-family: Lato, sans-serif; font-size: medium;\">(DĐDN) &ndash; Ng&agrave;y 27/3/2016, Tập đo&agrave;n Vingroup tổ chức sự kiện ra mắt Khu đ&ocirc; thị biển Vinhomes Dragon Bay, Hạ Long, Quảng Ninh. Đồng thời ch&iacute;nh thức nhận đăng k&yacute; đặt mua đợt 1 c&aacute;c căn shophous đẳng cấp tại dự &aacute;n.</span></p>\r\n<div style=\"box-sizing: border-box; color: #777777; font-family: Lato, sans-serif; font-size: medium;\">Nh&acirc;n sự kiện ra mắt, chủ đầu tư Vingroup c&ocirc;ng bố chương tr&igrave;nh ưu đ&atilde;i đặc biệt d&agrave;nh cho những kh&aacute;ch h&agrave;ng đăng k&yacute; đặt mua đợt 1 những căn shophouse Vinhomes Dragon Bay.</div>\r\n<div style=\"box-sizing: border-box; color: #777777; font-family: Lato, sans-serif; font-size: medium;\">Theo đ&oacute;, kh&aacute;ch h&agrave;ng sẽ được hỗ trợ vay vốn l&ecirc;n tới 70% gi&aacute; trị căn hộ, với l&atilde;i suất ưu đ&atilde;i 0% trong v&ograve;ng 12 th&aacute;ng; đồng thời được miễn ph&iacute; 3 năm g&oacute;i dịch vụ quản l&yacute;. Đặc biệt, kh&aacute;ch h&agrave;ng đặt mua 50 căn shophouse đầu ti&ecirc;n sẽ được tặng 2 thẻ Bảo hiểm sức khỏe Vinmec Health Platinum d&agrave;nh cho 2 người lớn trong v&ograve;ng 2 năm tại chuỗi Bệnh viện Đa khoa Quốc tế Vinmec.</div>\r\n<div style=\"box-sizing: border-box; color: #777777; font-family: Lato, sans-serif; font-size: medium;\">&nbsp;</div>\r\n<div style=\"box-sizing: border-box; color: #777777; font-family: Lato, sans-serif; font-size: medium;\">\r\n<div style=\"box-sizing: border-box;\">Vinhomes Dragon Bay l&agrave; khu đ&ocirc; thị b&ecirc;n bờ Vịnh đẹp bậc nhất Việt Nam v&agrave; l&agrave; khu đ&ocirc; thị biển đầu ti&ecirc;n của Vingroup.</div>\r\n<div style=\"box-sizing: border-box;\">Dự &aacute;n c&oacute; tổng diện t&iacute;ch 68,35ha bao gồm khu phức hợp nh&agrave; ở, kh&aacute;ch sạn v&agrave; điểm nhấn l&agrave; khu nh&agrave; phố thương mại (shophouse) chia th&agrave;nh 3 ph&acirc;n khu: Ph&uacute; Gia, Ho&agrave;ng Gia, Mỹ Gia. Vị tr&iacute; đắc địa của c&aacute;c khu Shophouse mang đến sự thuận lợi tối đa cho c&aacute;c hoạt động kinh doanh. Trong đ&oacute;, c&aacute;c căn hướng ra quảng trường với mặt tiền tho&aacute;ng rộng ph&ugrave; hợp cho kinh doanh ẩm thực, thời trang; c&aacute;c căn hướng Vịnh Hạ Long thuận lợi cho dịch vụ vui chơi, giải tr&iacute;, bar, c&agrave; ph&ecirc; thư gi&atilde;n&hellip;</div>\r\n</div>\r\n<div style=\"box-sizing: border-box; color: #777777; font-family: Lato, sans-serif; font-size: medium;\">&nbsp;</div>\r\n<div style=\"box-sizing: border-box; color: #777777; font-family: Lato, sans-serif; font-size: medium;\">\r\n<div style=\"box-sizing: border-box;\">To&agrave;n bộ hệ thống shophouse đều c&oacute; 4 tầng, với diện t&iacute;ch linh hoạt từ 90-189m2, mặt tiền từ 6-9m. Tầng 1 phục vụ mục đ&iacute;ch kinh doanh, c&aacute;c tầng tr&ecirc;n được quy hoạch v&agrave; thiết kế th&agrave;nh kh&ocirc;ng gian sinh sống v&agrave; nghỉ dưỡng đẳng cấp d&agrave;nh cho gia chủ. Đ&acirc;y ch&iacute;nh l&agrave; m&ocirc; h&igrave;nh &ldquo;3 trong 1&rdquo; chỉ c&oacute; tại shophouse Vinhomes Dragon Bay.</div>\r\n<div style=\"box-sizing: border-box;\">&nbsp;</div>\r\n<div style=\"box-sizing: border-box;\">Từ vị tr&iacute; trung t&acirc;m của khu shophouse, kh&aacute;ch h&agrave;ng c&oacute; thể kết nối thuận tiện tới 39 tiện &iacute;ch của khu đ&ocirc; thị như phố đi bộ, mặt nước hoa nghệ thuật, quảng trường phong c&aacute;ch ch&acirc;u &Acirc;u, quảng trường nước, s&acirc;n chơi v&agrave; vườn kiểu Ph&aacute;p, khu gi&agrave;n hoa nghỉ ch&acirc;n, thảm c&acirc;y nghệ thuật&hellip;</div>\r\n<div style=\"box-sizing: border-box;\">&nbsp;</div>\r\n<div style=\"box-sizing: border-box;\">Từ vị tr&iacute; trung t&acirc;m của khu shophouse, kh&aacute;ch h&agrave;ng c&oacute; thể kết nối thuận tiện tới 39 tiện &iacute;ch của khu đ&ocirc; thị như phố đi bộ, mặt nước hoa nghệ thuật, quảng trường phong c&aacute;ch ch&acirc;u &Acirc;u, quảng trường nước, s&acirc;n chơi v&agrave; vườn kiểu Ph&aacute;p, khu gi&agrave;n hoa nghỉ ch&acirc;n, thảm c&acirc;y nghệ thuật&hellip;</div>\r\n<div style=\"box-sizing: border-box;\">&nbsp;</div>\r\n<div style=\"box-sizing: border-box;\">\r\n<div style=\"box-sizing: border-box;\">B&ecirc;n cạnh đ&oacute;, với hệ thống dịch vụ, tiện &iacute;ch đồng bộ kết hợp c&ugrave;ng kh&ocirc;ng gian xanh m&aacute;t, hướng biển, chủ sở hữu shophouse sẽ được tận hưởng cuộc sống chất lượng cao trong kh&ocirc;ng kh&iacute; biển trong l&agrave;nh v&agrave; kho&aacute;ng đạt.</div>\r\n<div style=\"box-sizing: border-box;\">Dự &aacute;n Vinhomes Dragon Bay dự kiến b&agrave;n giao th&ocirc; cho kh&aacute;ch h&agrave;ng những căn shophouse đầu ti&ecirc;n trong Qu&yacute; IV/2016.</div>\r\n</div>\r\n</div>', NULL, 1, 'app-news-posts/April2020/tBjxJpgLroGAhxSYU6UD.jpg', NULL, NULL, '2020-04-02 08:52:09', '2020-04-02 08:52:21', NULL);
INSERT INTO `app_news_posts` VALUES (3, NULL, 'ngoi-nha-don-gian-tiet-kiem-chi-phi-xay-dung', 'ngoi-nha-don-gian-tiet-kiem-chi-phi-xay-dung', 'Ngôi nhà đơn giản, tiết kiệm chi phí xây dựng', 'Ngôi nhà đơn giản, tiết kiệm chi phí xây dựng', '<p><img src=\"/storage/app-news-posts/April2020/photo-3-15857999402051649387018.jpg\" alt=\"\" /></p>\r\n<p>Một đ&ocirc;i vợ chồng trẻ do chưa c&oacute; nhiều điều kiện kinh tế n&ecirc;n ng&ocirc;i nh&agrave; của họ đơn giản, tốn &iacute;t chi ph&iacute;, chủ yếu sử dụng vật liệu x&acirc;y dựng đơn giản.</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"/storage/app-news-posts/April2020/photo-1-15857999368401010114233.jpg\" alt=\"\" /></p>\r\n<p>Nh&igrave;n b&ecirc;n ngo&agrave;i, c&ocirc;ng tr&igrave;nh được x&acirc;y dựng th&agrave;nh 2 tầng, theo phong c&aacute;ch hiện đại.</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"/storage/app-news-posts/April2020/photo-1-15857999402021522786608-crop-15857999723351017684979.jpg\" alt=\"\" /></p>\r\n<p>&nbsp;</p>\r\n<p>Một khoảng s&acirc;n trước được đổ bằng b&ecirc; t&ocirc;ng để l&agrave;m s&acirc;n chơi cho c&aacute;c con.</p>', NULL, NULL, 1, 'app-news-posts/April2020/y2voJUAWFQJfSWQcBklx.jpg', NULL, NULL, '2020-04-02 08:58:31', '2020-04-02 08:58:48', NULL);
COMMIT;

-- ----------------------------
-- Table structure for app_project_lands
-- ----------------------------
DROP TABLE IF EXISTS `app_project_lands`;
CREATE TABLE `app_project_lands` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `seoAliasVI` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seoAliasEN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_project_land_id` int(11) DEFAULT NULL,
  `titleVI` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titleEN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduceContentVI` longtext COLLATE utf8mb4_unicode_ci,
  `introduceContentEN` longtext COLLATE utf8mb4_unicode_ci,
  `isHot` tinyint(4) DEFAULT '0',
  `status` tinyint(4) DEFAULT '0',
  `imgCoverUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userIdCreated` int(11) DEFAULT NULL,
  `userIdUpdated` int(11) DEFAULT NULL,
  `imgUrls` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of app_project_lands
-- ----------------------------
BEGIN;
INSERT INTO `app_project_lands` VALUES (1, 'du-an-riverside-saigon-river', 'riverside-saigon-river-project', 2, 'Dự Án Riverside - Saigon River', 'Riverside - Saigon River Project', '<article class=\"container intro-details\">\r\n<p class=\"intro\"><strong>Trang giới thiệu</strong> gi&uacute;p kh&aacute;ch h&agrave;ng hiểu r&otilde; hơn về cửa h&agrave;ng của bạn. H&atilde;y cung cấp th&ocirc;ng tin cụ thể về việc kinh doanh, về cửa h&agrave;ng, th&ocirc;ng tin li&ecirc;n hệ. Điều n&agrave;y sẽ gi&uacute;p kh&aacute;ch h&agrave;ng cảm thấy tin tưởng khi mua h&agrave;ng tr&ecirc;n website của bạn.</p>\r\n<div class=\"intro-row\">\r\n<div class=\"media-container\"><img src=\"/assets/images/sp8_master.jpg\" data-original=\"/assets/images/sp8_master.jpg\" /></div>\r\n<div class=\"text-description\">\r\n<h3 class=\"title text-3 text-medium\">M&Ocirc; TẢ CĂN HỘ:</h3>\r\n<p class=\"content text-medium-light\">Ph&ograve;ng kh&aacute;ch ch&iacute;nh l&agrave; nơi để đ&oacute;n tiếp những vị kh&aacute;ch qu&yacute; hay bạn b&egrave; của gia chủ cho n&ecirc;n đ&acirc;y cũng c&oacute; thể được coi l&agrave; bộ mặt ch&iacute;nh của mỗi căn hộ.Ch&uacute;ng ta c&oacute; thể dễ d&agrave;ng nhận thấy đặc điểm chung của nội thất ph&ograve;ng kh&aacute;ch hiện đại đ&oacute; l&agrave; việc sử dụng những mẫu Ghế sofa đẹp đi k&egrave;m với một chiếc b&agrave;n k&iacute;nh hiện đại đặt trước tivi v&agrave; Kệ tivi đẹp.</p>\r\n<h3 class=\"title text-3 text-medium\">TH&Ocirc;NG TIN CHI TIẾT:</h3>\r\n<ul class=\"text-medium-light\">\r\n<li>Gạch l&aacute;t s&agrave;n bằng gỗ tự nhi&ecirc;n</li>\r\n<li>C&oacute; cửa k&iacute;nh trong ph&ograve;ng tắm</li>\r\n<li>Thiết bị tiện nghi v&agrave; chất lượng</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"clearfix\">&nbsp;</div>\r\n<div class=\"intro-row reverse\">\r\n<div class=\"media-container\"><img src=\"/assets/images/sp9_master.jpg\" data-original=\"/assets/images/sp9_master.jpg\" /></div>\r\n<div class=\"text-description\">\r\n<h3 class=\"title text-3 text-medium\">GIỚI THIỆU CĂN HỘ</h3>\r\n<p class=\"content text-medium-light\">Ph&ograve;ng kh&aacute;ch ch&iacute;nh l&agrave; nơi để đ&oacute;n tiếp những vị kh&aacute;ch qu&yacute; hay bạn b&egrave; của gia chủ cho n&ecirc;n đ&acirc;y cũng c&oacute; thể được coi l&agrave; bộ mặt ch&iacute;nh của mỗi căn hộ.Ch&uacute;ng ta c&oacute; thể dễ d&agrave;ng nhận thấy đặc điểm chung của nội thất ph&ograve;ng kh&aacute;ch hiện đại đ&oacute; l&agrave; việc sử dụng những mẫu Ghế sofa đẹp đi k&egrave;m với một chiếc b&agrave;n k&iacute;nh hiện đại đặt trước tivi v&agrave; Kệ tivi đẹp.</p>\r\n<p class=\"content text-medium-light\">B&ecirc;n cạnh đ&oacute;, Q&uacute;y kh&aacute;ch c&ograve;n được tận hưởng những dịch vụ thư gi&atilde;n: ph&ograve;ng x&ocirc;ng hơi, x&ocirc;ng kh&ocirc;, ph&ograve;ng tập thể dục đầy đủ dụng cụ, c&ocirc;ng vi&ecirc;n, khu vui chơi trẻ em.</p>\r\n</div>\r\n</div>\r\n</article>', '<article class=\"container intro-details\">\r\n<p class=\"intro\"><strong>Trang giới thiệu</strong> gi&uacute;p kh&aacute;ch h&agrave;ng hiểu r&otilde; hơn về cửa h&agrave;ng của bạn. H&atilde;y cung cấp th&ocirc;ng tin cụ thể về việc kinh doanh, về cửa h&agrave;ng, th&ocirc;ng tin li&ecirc;n hệ. Điều n&agrave;y sẽ gi&uacute;p kh&aacute;ch h&agrave;ng cảm thấy tin tưởng khi mua h&agrave;ng tr&ecirc;n website của bạn.</p>\r\n<div class=\"intro-row\">\r\n<div class=\"media-container\"><img src=\"/assets/images/sp8_master.jpg\" data-original=\"/assets/images/sp8_master.jpg\" /></div>\r\n<div class=\"text-description\">\r\n<h3 class=\"title text-3 text-medium\">M&Ocirc; TẢ CĂN HỘ:</h3>\r\n<p class=\"content text-medium-light\">Ph&ograve;ng kh&aacute;ch ch&iacute;nh l&agrave; nơi để đ&oacute;n tiếp những vị kh&aacute;ch qu&yacute; hay bạn b&egrave; của gia chủ cho n&ecirc;n đ&acirc;y cũng c&oacute; thể được coi l&agrave; bộ mặt ch&iacute;nh của mỗi căn hộ.Ch&uacute;ng ta c&oacute; thể dễ d&agrave;ng nhận thấy đặc điểm chung của nội thất ph&ograve;ng kh&aacute;ch hiện đại đ&oacute; l&agrave; việc sử dụng những mẫu Ghế sofa đẹp đi k&egrave;m với một chiếc b&agrave;n k&iacute;nh hiện đại đặt trước tivi v&agrave; Kệ tivi đẹp.</p>\r\n<h3 class=\"title text-3 text-medium\">TH&Ocirc;NG TIN CHI TIẾT:</h3>\r\n<ul class=\"text-medium-light\">\r\n<li>Gạch l&aacute;t s&agrave;n bằng gỗ tự nhi&ecirc;n</li>\r\n<li>C&oacute; cửa k&iacute;nh trong ph&ograve;ng tắm</li>\r\n<li>Thiết bị tiện nghi v&agrave; chất lượng</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"clearfix\">&nbsp;</div>\r\n<div class=\"intro-row reverse\">\r\n<div class=\"media-container\"><img src=\"/assets/images/sp9_master.jpg\" data-original=\"/assets/images/sp9_master.jpg\" /></div>\r\n<div class=\"text-description\">\r\n<h3 class=\"title text-3 text-medium\">GIỚI THIỆU CĂN HỘ</h3>\r\n<p class=\"content text-medium-light\">Ph&ograve;ng kh&aacute;ch ch&iacute;nh l&agrave; nơi để đ&oacute;n tiếp những vị kh&aacute;ch qu&yacute; hay bạn b&egrave; của gia chủ cho n&ecirc;n đ&acirc;y cũng c&oacute; thể được coi l&agrave; bộ mặt ch&iacute;nh của mỗi căn hộ.Ch&uacute;ng ta c&oacute; thể dễ d&agrave;ng nhận thấy đặc điểm chung của nội thất ph&ograve;ng kh&aacute;ch hiện đại đ&oacute; l&agrave; việc sử dụng những mẫu Ghế sofa đẹp đi k&egrave;m với một chiếc b&agrave;n k&iacute;nh hiện đại đặt trước tivi v&agrave; Kệ tivi đẹp.</p>\r\n<p class=\"content text-medium-light\">B&ecirc;n cạnh đ&oacute;, Q&uacute;y kh&aacute;ch c&ograve;n được tận hưởng những dịch vụ thư gi&atilde;n: ph&ograve;ng x&ocirc;ng hơi, x&ocirc;ng kh&ocirc;, ph&ograve;ng tập thể dục đầy đủ dụng cụ, c&ocirc;ng vi&ecirc;n, khu vui chơi trẻ em.</p>\r\n</div>\r\n</div>\r\n</article>', 0, 1, 'app-project-lands/March2020/8IHjKRtUGexOoCFhxFHt.jpg', NULL, NULL, '[\"app-project-lands\\/March2020\\/qwtIjgUNh3b24UQQaho3.jpg\",\"app-project-lands\\/March2020\\/gxICthW6NIZb1XTCWuoc.jpg\",\"app-project-lands\\/March2020\\/lgBathOTNIubeJhHjkiK.jpg\",\"app-project-lands\\/March2020\\/ENX4yEQVtnO0kSo5Mf18.jpg\"]', '2020-03-30 08:33:00', '2020-04-02 10:16:09', NULL);
INSERT INTO `app_project_lands` VALUES (2, 'palm-garden-shop-villas', 'palm-garden-shop-villas', NULL, 'Palm Garden Shop Villas', 'Palm Garden Shop Villas', '<article class=\"container intro-details\">\r\n<p class=\"intro\"><strong>Trang giới thiệu</strong> gi&uacute;p kh&aacute;ch h&agrave;ng hiểu r&otilde; hơn về cửa h&agrave;ng của bạn. H&atilde;y cung cấp th&ocirc;ng tin cụ thể về việc kinh doanh, về cửa h&agrave;ng, th&ocirc;ng tin li&ecirc;n hệ. Điều n&agrave;y sẽ gi&uacute;p kh&aacute;ch h&agrave;ng cảm thấy tin tưởng khi mua h&agrave;ng tr&ecirc;n website của bạn.</p>\r\n<div class=\"intro-row\">\r\n<div class=\"media-container\"><img src=\"/assets/images/sp8_master.jpg\" data-original=\"/assets/images/sp8_master.jpg\" /></div>\r\n<div class=\"text-description\">\r\n<h3 class=\"title text-3 text-medium\">M&Ocirc; TẢ CĂN HỘ:</h3>\r\n<p class=\"content text-medium-light\">Ph&ograve;ng kh&aacute;ch ch&iacute;nh l&agrave; nơi để đ&oacute;n tiếp những vị kh&aacute;ch qu&yacute; hay bạn b&egrave; của gia chủ cho n&ecirc;n đ&acirc;y cũng c&oacute; thể được coi l&agrave; bộ mặt ch&iacute;nh của mỗi căn hộ.Ch&uacute;ng ta c&oacute; thể dễ d&agrave;ng nhận thấy đặc điểm chung của nội thất ph&ograve;ng kh&aacute;ch hiện đại đ&oacute; l&agrave; việc sử dụng những mẫu Ghế sofa đẹp đi k&egrave;m với một chiếc b&agrave;n k&iacute;nh hiện đại đặt trước tivi v&agrave; Kệ tivi đẹp.</p>\r\n<h3 class=\"title text-3 text-medium\">TH&Ocirc;NG TIN CHI TIẾT:</h3>\r\n<ul class=\"text-medium-light\">\r\n<li>Gạch l&aacute;t s&agrave;n bằng gỗ tự nhi&ecirc;n</li>\r\n<li>C&oacute; cửa k&iacute;nh trong ph&ograve;ng tắm</li>\r\n<li>Thiết bị tiện nghi v&agrave; chất lượng</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"clearfix\">&nbsp;</div>\r\n<div class=\"intro-row reverse\">\r\n<div class=\"media-container\"><img src=\"/assets/images/sp9_master.jpg\" data-original=\"/assets/images/sp9_master.jpg\" /></div>\r\n<div class=\"text-description\">\r\n<h3 class=\"title text-3 text-medium\">GIỚI THIỆU CĂN HỘ</h3>\r\n<p class=\"content text-medium-light\">Ph&ograve;ng kh&aacute;ch ch&iacute;nh l&agrave; nơi để đ&oacute;n tiếp những vị kh&aacute;ch qu&yacute; hay bạn b&egrave; của gia chủ cho n&ecirc;n đ&acirc;y cũng c&oacute; thể được coi l&agrave; bộ mặt ch&iacute;nh của mỗi căn hộ.Ch&uacute;ng ta c&oacute; thể dễ d&agrave;ng nhận thấy đặc điểm chung của nội thất ph&ograve;ng kh&aacute;ch hiện đại đ&oacute; l&agrave; việc sử dụng những mẫu Ghế sofa đẹp đi k&egrave;m với một chiếc b&agrave;n k&iacute;nh hiện đại đặt trước tivi v&agrave; Kệ tivi đẹp.</p>\r\n<p class=\"content text-medium-light\">B&ecirc;n cạnh đ&oacute;, Q&uacute;y kh&aacute;ch c&ograve;n được tận hưởng những dịch vụ thư gi&atilde;n: ph&ograve;ng x&ocirc;ng hơi, x&ocirc;ng kh&ocirc;, ph&ograve;ng tập thể dục đầy đủ dụng cụ, c&ocirc;ng vi&ecirc;n, khu vui chơi trẻ em.</p>\r\n</div>\r\n</div>\r\n</article>', '<article class=\"container intro-details\">\r\n<p class=\"intro\"><strong>Trang giới thiệu</strong> gi&uacute;p kh&aacute;ch h&agrave;ng hiểu r&otilde; hơn về cửa h&agrave;ng của bạn. H&atilde;y cung cấp th&ocirc;ng tin cụ thể về việc kinh doanh, về cửa h&agrave;ng, th&ocirc;ng tin li&ecirc;n hệ. Điều n&agrave;y sẽ gi&uacute;p kh&aacute;ch h&agrave;ng cảm thấy tin tưởng khi mua h&agrave;ng tr&ecirc;n website của bạn.</p>\r\n<div class=\"intro-row\">\r\n<div class=\"media-container\"><img src=\"/assets/images/sp8_master.jpg\" data-original=\"/assets/images/sp8_master.jpg\" /></div>\r\n<div class=\"text-description\">\r\n<h3 class=\"title text-3 text-medium\">M&Ocirc; TẢ CĂN HỘ:</h3>\r\n<p class=\"content text-medium-light\">Ph&ograve;ng kh&aacute;ch ch&iacute;nh l&agrave; nơi để đ&oacute;n tiếp những vị kh&aacute;ch qu&yacute; hay bạn b&egrave; của gia chủ cho n&ecirc;n đ&acirc;y cũng c&oacute; thể được coi l&agrave; bộ mặt ch&iacute;nh của mỗi căn hộ.Ch&uacute;ng ta c&oacute; thể dễ d&agrave;ng nhận thấy đặc điểm chung của nội thất ph&ograve;ng kh&aacute;ch hiện đại đ&oacute; l&agrave; việc sử dụng những mẫu Ghế sofa đẹp đi k&egrave;m với một chiếc b&agrave;n k&iacute;nh hiện đại đặt trước tivi v&agrave; Kệ tivi đẹp.</p>\r\n<h3 class=\"title text-3 text-medium\">TH&Ocirc;NG TIN CHI TIẾT:</h3>\r\n<ul class=\"text-medium-light\">\r\n<li>Gạch l&aacute;t s&agrave;n bằng gỗ tự nhi&ecirc;n</li>\r\n<li>C&oacute; cửa k&iacute;nh trong ph&ograve;ng tắm</li>\r\n<li>Thiết bị tiện nghi v&agrave; chất lượng</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"clearfix\">&nbsp;</div>\r\n<div class=\"intro-row reverse\">\r\n<div class=\"media-container\"><img src=\"/assets/images/sp9_master.jpg\" data-original=\"/assets/images/sp9_master.jpg\" /></div>\r\n<div class=\"text-description\">\r\n<h3 class=\"title text-3 text-medium\">GIỚI THIỆU CĂN HỘ</h3>\r\n<p class=\"content text-medium-light\">Ph&ograve;ng kh&aacute;ch ch&iacute;nh l&agrave; nơi để đ&oacute;n tiếp những vị kh&aacute;ch qu&yacute; hay bạn b&egrave; của gia chủ cho n&ecirc;n đ&acirc;y cũng c&oacute; thể được coi l&agrave; bộ mặt ch&iacute;nh của mỗi căn hộ.Ch&uacute;ng ta c&oacute; thể dễ d&agrave;ng nhận thấy đặc điểm chung của nội thất ph&ograve;ng kh&aacute;ch hiện đại đ&oacute; l&agrave; việc sử dụng những mẫu Ghế sofa đẹp đi k&egrave;m với một chiếc b&agrave;n k&iacute;nh hiện đại đặt trước tivi v&agrave; Kệ tivi đẹp.</p>\r\n<p class=\"content text-medium-light\">B&ecirc;n cạnh đ&oacute;, Q&uacute;y kh&aacute;ch c&ograve;n được tận hưởng những dịch vụ thư gi&atilde;n: ph&ograve;ng x&ocirc;ng hơi, x&ocirc;ng kh&ocirc;, ph&ograve;ng tập thể dục đầy đủ dụng cụ, c&ocirc;ng vi&ecirc;n, khu vui chơi trẻ em.</p>\r\n</div>\r\n</div>\r\n</article>', 1, 1, 'app-project-lands/April2020/zY6zDV7e3NtzN5Ni3Vht.jpg', NULL, NULL, '[\"app-project-lands\\/April2020\\/jCmExJAOk2aO6XP3Uzxe.jpg\"]', '2020-04-02 09:26:40', '2020-04-02 10:15:57', NULL);
INSERT INTO `app_project_lands` VALUES (3, 'mayhome-capital-phu-quoc', 'mayhome-capital-phu-quoc', NULL, 'Meyhomes Capital Phú Quốc', 'Meyhomes Capital Phú Quốc', '<article class=\"container intro-details\">\r\n<p class=\"intro\"><strong>Trang giới thiệu</strong> gi&uacute;p kh&aacute;ch h&agrave;ng hiểu r&otilde; hơn về cửa h&agrave;ng của bạn. H&atilde;y cung cấp th&ocirc;ng tin cụ thể về việc kinh doanh, về cửa h&agrave;ng, th&ocirc;ng tin li&ecirc;n hệ. Điều n&agrave;y sẽ gi&uacute;p kh&aacute;ch h&agrave;ng cảm thấy tin tưởng khi mua h&agrave;ng tr&ecirc;n website của bạn.</p>\r\n<div class=\"intro-row\">\r\n<div class=\"media-container\"><img src=\"/assets/images/sp8_master.jpg\" data-original=\"/assets/images/sp8_master.jpg\" /></div>\r\n<div class=\"text-description\">\r\n<h3 class=\"title text-3 text-medium\">M&Ocirc; TẢ CĂN HỘ:</h3>\r\n<p class=\"content text-medium-light\">Ph&ograve;ng kh&aacute;ch ch&iacute;nh l&agrave; nơi để đ&oacute;n tiếp những vị kh&aacute;ch qu&yacute; hay bạn b&egrave; của gia chủ cho n&ecirc;n đ&acirc;y cũng c&oacute; thể được coi l&agrave; bộ mặt ch&iacute;nh của mỗi căn hộ.Ch&uacute;ng ta c&oacute; thể dễ d&agrave;ng nhận thấy đặc điểm chung của nội thất ph&ograve;ng kh&aacute;ch hiện đại đ&oacute; l&agrave; việc sử dụng những mẫu Ghế sofa đẹp đi k&egrave;m với một chiếc b&agrave;n k&iacute;nh hiện đại đặt trước tivi v&agrave; Kệ tivi đẹp.</p>\r\n<h3 class=\"title text-3 text-medium\">TH&Ocirc;NG TIN CHI TIẾT:</h3>\r\n<ul class=\"text-medium-light\">\r\n<li>Gạch l&aacute;t s&agrave;n bằng gỗ tự nhi&ecirc;n</li>\r\n<li>C&oacute; cửa k&iacute;nh trong ph&ograve;ng tắm</li>\r\n<li>Thiết bị tiện nghi v&agrave; chất lượng</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"clearfix\">&nbsp;</div>\r\n<div class=\"intro-row reverse\">\r\n<div class=\"media-container\"><img src=\"/assets/images/sp9_master.jpg\" data-original=\"/assets/images/sp9_master.jpg\" /></div>\r\n<div class=\"text-description\">\r\n<h3 class=\"title text-3 text-medium\">GIỚI THIỆU CĂN HỘ</h3>\r\n<p class=\"content text-medium-light\">Ph&ograve;ng kh&aacute;ch ch&iacute;nh l&agrave; nơi để đ&oacute;n tiếp những vị kh&aacute;ch qu&yacute; hay bạn b&egrave; của gia chủ cho n&ecirc;n đ&acirc;y cũng c&oacute; thể được coi l&agrave; bộ mặt ch&iacute;nh của mỗi căn hộ.Ch&uacute;ng ta c&oacute; thể dễ d&agrave;ng nhận thấy đặc điểm chung của nội thất ph&ograve;ng kh&aacute;ch hiện đại đ&oacute; l&agrave; việc sử dụng những mẫu Ghế sofa đẹp đi k&egrave;m với một chiếc b&agrave;n k&iacute;nh hiện đại đặt trước tivi v&agrave; Kệ tivi đẹp.</p>\r\n<p class=\"content text-medium-light\">B&ecirc;n cạnh đ&oacute;, Q&uacute;y kh&aacute;ch c&ograve;n được tận hưởng những dịch vụ thư gi&atilde;n: ph&ograve;ng x&ocirc;ng hơi, x&ocirc;ng kh&ocirc;, ph&ograve;ng tập thể dục đầy đủ dụng cụ, c&ocirc;ng vi&ecirc;n, khu vui chơi trẻ em.</p>\r\n</div>\r\n</div>\r\n</article>', '<article class=\"container intro-details\">\r\n<p class=\"intro\"><strong>Trang giới thiệu</strong> gi&uacute;p kh&aacute;ch h&agrave;ng hiểu r&otilde; hơn về cửa h&agrave;ng của bạn. H&atilde;y cung cấp th&ocirc;ng tin cụ thể về việc kinh doanh, về cửa h&agrave;ng, th&ocirc;ng tin li&ecirc;n hệ. Điều n&agrave;y sẽ gi&uacute;p kh&aacute;ch h&agrave;ng cảm thấy tin tưởng khi mua h&agrave;ng tr&ecirc;n website của bạn.</p>\r\n<div class=\"intro-row\">\r\n<div class=\"media-container\"><img src=\"/assets/images/sp8_master.jpg\" data-original=\"/assets/images/sp8_master.jpg\" /></div>\r\n<div class=\"text-description\">\r\n<h3 class=\"title text-3 text-medium\">M&Ocirc; TẢ CĂN HỘ:</h3>\r\n<p class=\"content text-medium-light\">Ph&ograve;ng kh&aacute;ch ch&iacute;nh l&agrave; nơi để đ&oacute;n tiếp những vị kh&aacute;ch qu&yacute; hay bạn b&egrave; của gia chủ cho n&ecirc;n đ&acirc;y cũng c&oacute; thể được coi l&agrave; bộ mặt ch&iacute;nh của mỗi căn hộ.Ch&uacute;ng ta c&oacute; thể dễ d&agrave;ng nhận thấy đặc điểm chung của nội thất ph&ograve;ng kh&aacute;ch hiện đại đ&oacute; l&agrave; việc sử dụng những mẫu Ghế sofa đẹp đi k&egrave;m với một chiếc b&agrave;n k&iacute;nh hiện đại đặt trước tivi v&agrave; Kệ tivi đẹp.</p>\r\n<h3 class=\"title text-3 text-medium\">TH&Ocirc;NG TIN CHI TIẾT:</h3>\r\n<ul class=\"text-medium-light\">\r\n<li>Gạch l&aacute;t s&agrave;n bằng gỗ tự nhi&ecirc;n</li>\r\n<li>C&oacute; cửa k&iacute;nh trong ph&ograve;ng tắm</li>\r\n<li>Thiết bị tiện nghi v&agrave; chất lượng</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"clearfix\">&nbsp;</div>\r\n<div class=\"intro-row reverse\">\r\n<div class=\"media-container\"><img src=\"/assets/images/sp9_master.jpg\" data-original=\"/assets/images/sp9_master.jpg\" /></div>\r\n<div class=\"text-description\">\r\n<h3 class=\"title text-3 text-medium\">GIỚI THIỆU CĂN HỘ</h3>\r\n<p class=\"content text-medium-light\">Ph&ograve;ng kh&aacute;ch ch&iacute;nh l&agrave; nơi để đ&oacute;n tiếp những vị kh&aacute;ch qu&yacute; hay bạn b&egrave; của gia chủ cho n&ecirc;n đ&acirc;y cũng c&oacute; thể được coi l&agrave; bộ mặt ch&iacute;nh của mỗi căn hộ.Ch&uacute;ng ta c&oacute; thể dễ d&agrave;ng nhận thấy đặc điểm chung của nội thất ph&ograve;ng kh&aacute;ch hiện đại đ&oacute; l&agrave; việc sử dụng những mẫu Ghế sofa đẹp đi k&egrave;m với một chiếc b&agrave;n k&iacute;nh hiện đại đặt trước tivi v&agrave; Kệ tivi đẹp.</p>\r\n<p class=\"content text-medium-light\">B&ecirc;n cạnh đ&oacute;, Q&uacute;y kh&aacute;ch c&ograve;n được tận hưởng những dịch vụ thư gi&atilde;n: ph&ograve;ng x&ocirc;ng hơi, x&ocirc;ng kh&ocirc;, ph&ograve;ng tập thể dục đầy đủ dụng cụ, c&ocirc;ng vi&ecirc;n, khu vui chơi trẻ em.</p>\r\n</div>\r\n</div>\r\n</article>', 0, 1, 'app-project-lands/April2020/uw1AmfLu4msq7EeoTPHT.jpg', NULL, NULL, '[\"app-project-lands\\/April2020\\/GRpgwUU4yw08RBApvVBs.jpg\"]', '2020-04-02 09:27:46', '2020-04-02 10:15:48', NULL);
INSERT INTO `app_project_lands` VALUES (4, 'lancaster-luminaire', 'lancaster-luminaire', NULL, 'Lancaster Luminaire', 'Lancaster Luminaire', '<article class=\"container intro-details\">\r\n<p class=\"intro\"><strong>Trang giới thiệu</strong> gi&uacute;p kh&aacute;ch h&agrave;ng hiểu r&otilde; hơn về cửa h&agrave;ng của bạn. H&atilde;y cung cấp th&ocirc;ng tin cụ thể về việc kinh doanh, về cửa h&agrave;ng, th&ocirc;ng tin li&ecirc;n hệ. Điều n&agrave;y sẽ gi&uacute;p kh&aacute;ch h&agrave;ng cảm thấy tin tưởng khi mua h&agrave;ng tr&ecirc;n website của bạn.</p>\r\n<div class=\"intro-row\">\r\n<div class=\"media-container\"><img src=\"/assets/images/sp8_master.jpg\" data-original=\"/assets/images/sp8_master.jpg\" /></div>\r\n<div class=\"text-description\">\r\n<h3 class=\"title text-3 text-medium\">M&Ocirc; TẢ CĂN HỘ:</h3>\r\n<p class=\"content text-medium-light\">Ph&ograve;ng kh&aacute;ch ch&iacute;nh l&agrave; nơi để đ&oacute;n tiếp những vị kh&aacute;ch qu&yacute; hay bạn b&egrave; của gia chủ cho n&ecirc;n đ&acirc;y cũng c&oacute; thể được coi l&agrave; bộ mặt ch&iacute;nh của mỗi căn hộ.Ch&uacute;ng ta c&oacute; thể dễ d&agrave;ng nhận thấy đặc điểm chung của nội thất ph&ograve;ng kh&aacute;ch hiện đại đ&oacute; l&agrave; việc sử dụng những mẫu Ghế sofa đẹp đi k&egrave;m với một chiếc b&agrave;n k&iacute;nh hiện đại đặt trước tivi v&agrave; Kệ tivi đẹp.</p>\r\n<h3 class=\"title text-3 text-medium\">TH&Ocirc;NG TIN CHI TIẾT:</h3>\r\n<ul class=\"text-medium-light\">\r\n<li>Gạch l&aacute;t s&agrave;n bằng gỗ tự nhi&ecirc;n</li>\r\n<li>C&oacute; cửa k&iacute;nh trong ph&ograve;ng tắm</li>\r\n<li>Thiết bị tiện nghi v&agrave; chất lượng</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"clearfix\">&nbsp;</div>\r\n<div class=\"intro-row reverse\">\r\n<div class=\"media-container\"><img src=\"/assets/images/sp9_master.jpg\" data-original=\"/assets/images/sp9_master.jpg\" /></div>\r\n<div class=\"text-description\">\r\n<h3 class=\"title text-3 text-medium\">GIỚI THIỆU CĂN HỘ</h3>\r\n<p class=\"content text-medium-light\">Ph&ograve;ng kh&aacute;ch ch&iacute;nh l&agrave; nơi để đ&oacute;n tiếp những vị kh&aacute;ch qu&yacute; hay bạn b&egrave; của gia chủ cho n&ecirc;n đ&acirc;y cũng c&oacute; thể được coi l&agrave; bộ mặt ch&iacute;nh của mỗi căn hộ.Ch&uacute;ng ta c&oacute; thể dễ d&agrave;ng nhận thấy đặc điểm chung của nội thất ph&ograve;ng kh&aacute;ch hiện đại đ&oacute; l&agrave; việc sử dụng những mẫu Ghế sofa đẹp đi k&egrave;m với một chiếc b&agrave;n k&iacute;nh hiện đại đặt trước tivi v&agrave; Kệ tivi đẹp.</p>\r\n<p class=\"content text-medium-light\">B&ecirc;n cạnh đ&oacute;, Q&uacute;y kh&aacute;ch c&ograve;n được tận hưởng những dịch vụ thư gi&atilde;n: ph&ograve;ng x&ocirc;ng hơi, x&ocirc;ng kh&ocirc;, ph&ograve;ng tập thể dục đầy đủ dụng cụ, c&ocirc;ng vi&ecirc;n, khu vui chơi trẻ em.</p>\r\n</div>\r\n</div>\r\n</article>', '<article class=\"container intro-details\">\r\n<p class=\"intro\"><strong>Trang giới thiệu</strong> gi&uacute;p kh&aacute;ch h&agrave;ng hiểu r&otilde; hơn về cửa h&agrave;ng của bạn. H&atilde;y cung cấp th&ocirc;ng tin cụ thể về việc kinh doanh, về cửa h&agrave;ng, th&ocirc;ng tin li&ecirc;n hệ. Điều n&agrave;y sẽ gi&uacute;p kh&aacute;ch h&agrave;ng cảm thấy tin tưởng khi mua h&agrave;ng tr&ecirc;n website của bạn.</p>\r\n<div class=\"intro-row\">\r\n<div class=\"media-container\"><img src=\"/assets/images/sp8_master.jpg\" data-original=\"/assets/images/sp8_master.jpg\" /></div>\r\n<div class=\"text-description\">\r\n<h3 class=\"title text-3 text-medium\">M&Ocirc; TẢ CĂN HỘ:</h3>\r\n<p class=\"content text-medium-light\">Ph&ograve;ng kh&aacute;ch ch&iacute;nh l&agrave; nơi để đ&oacute;n tiếp những vị kh&aacute;ch qu&yacute; hay bạn b&egrave; của gia chủ cho n&ecirc;n đ&acirc;y cũng c&oacute; thể được coi l&agrave; bộ mặt ch&iacute;nh của mỗi căn hộ.Ch&uacute;ng ta c&oacute; thể dễ d&agrave;ng nhận thấy đặc điểm chung của nội thất ph&ograve;ng kh&aacute;ch hiện đại đ&oacute; l&agrave; việc sử dụng những mẫu Ghế sofa đẹp đi k&egrave;m với một chiếc b&agrave;n k&iacute;nh hiện đại đặt trước tivi v&agrave; Kệ tivi đẹp.</p>\r\n<h3 class=\"title text-3 text-medium\">TH&Ocirc;NG TIN CHI TIẾT:</h3>\r\n<ul class=\"text-medium-light\">\r\n<li>Gạch l&aacute;t s&agrave;n bằng gỗ tự nhi&ecirc;n</li>\r\n<li>C&oacute; cửa k&iacute;nh trong ph&ograve;ng tắm</li>\r\n<li>Thiết bị tiện nghi v&agrave; chất lượng</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"clearfix\">&nbsp;</div>\r\n<div class=\"intro-row reverse\">\r\n<div class=\"media-container\"><img src=\"/assets/images/sp9_master.jpg\" data-original=\"/assets/images/sp9_master.jpg\" /></div>\r\n<div class=\"text-description\">\r\n<h3 class=\"title text-3 text-medium\">GIỚI THIỆU CĂN HỘ</h3>\r\n<p class=\"content text-medium-light\">Ph&ograve;ng kh&aacute;ch ch&iacute;nh l&agrave; nơi để đ&oacute;n tiếp những vị kh&aacute;ch qu&yacute; hay bạn b&egrave; của gia chủ cho n&ecirc;n đ&acirc;y cũng c&oacute; thể được coi l&agrave; bộ mặt ch&iacute;nh của mỗi căn hộ.Ch&uacute;ng ta c&oacute; thể dễ d&agrave;ng nhận thấy đặc điểm chung của nội thất ph&ograve;ng kh&aacute;ch hiện đại đ&oacute; l&agrave; việc sử dụng những mẫu Ghế sofa đẹp đi k&egrave;m với một chiếc b&agrave;n k&iacute;nh hiện đại đặt trước tivi v&agrave; Kệ tivi đẹp.</p>\r\n<p class=\"content text-medium-light\">B&ecirc;n cạnh đ&oacute;, Q&uacute;y kh&aacute;ch c&ograve;n được tận hưởng những dịch vụ thư gi&atilde;n: ph&ograve;ng x&ocirc;ng hơi, x&ocirc;ng kh&ocirc;, ph&ograve;ng tập thể dục đầy đủ dụng cụ, c&ocirc;ng vi&ecirc;n, khu vui chơi trẻ em.</p>\r\n</div>\r\n</div>\r\n</article>', 1, 1, 'app-project-lands/April2020/1xFFalo2cK7lESCAtxgO.jpg', NULL, NULL, '[\"app-project-lands\\/April2020\\/0bl9oIgaxMjI0AMmhXWP.jpg\"]', '2020-04-02 09:28:57', '2020-04-02 10:15:39', NULL);
INSERT INTO `app_project_lands` VALUES (5, 'the-east-gate', 'the-east-gate', NULL, 'The East Gate', 'The East Gate', '<article class=\"container intro-details\">\r\n<p class=\"intro\"><strong>Trang giới thiệu</strong> gi&uacute;p kh&aacute;ch h&agrave;ng hiểu r&otilde; hơn về cửa h&agrave;ng của bạn. H&atilde;y cung cấp th&ocirc;ng tin cụ thể về việc kinh doanh, về cửa h&agrave;ng, th&ocirc;ng tin li&ecirc;n hệ. Điều n&agrave;y sẽ gi&uacute;p kh&aacute;ch h&agrave;ng cảm thấy tin tưởng khi mua h&agrave;ng tr&ecirc;n website của bạn.</p>\r\n<div class=\"intro-row\">\r\n<div class=\"media-container\"><img src=\"/assets/images/sp8_master.jpg\" data-original=\"/assets/images/sp8_master.jpg\" /></div>\r\n<div class=\"text-description\">\r\n<h3 class=\"title text-3 text-medium\">M&Ocirc; TẢ CĂN HỘ:</h3>\r\n<p class=\"content text-medium-light\">Ph&ograve;ng kh&aacute;ch ch&iacute;nh l&agrave; nơi để đ&oacute;n tiếp những vị kh&aacute;ch qu&yacute; hay bạn b&egrave; của gia chủ cho n&ecirc;n đ&acirc;y cũng c&oacute; thể được coi l&agrave; bộ mặt ch&iacute;nh của mỗi căn hộ.Ch&uacute;ng ta c&oacute; thể dễ d&agrave;ng nhận thấy đặc điểm chung của nội thất ph&ograve;ng kh&aacute;ch hiện đại đ&oacute; l&agrave; việc sử dụng những mẫu Ghế sofa đẹp đi k&egrave;m với một chiếc b&agrave;n k&iacute;nh hiện đại đặt trước tivi v&agrave; Kệ tivi đẹp.</p>\r\n<h3 class=\"title text-3 text-medium\">TH&Ocirc;NG TIN CHI TIẾT:</h3>\r\n<ul class=\"text-medium-light\">\r\n<li>Gạch l&aacute;t s&agrave;n bằng gỗ tự nhi&ecirc;n</li>\r\n<li>C&oacute; cửa k&iacute;nh trong ph&ograve;ng tắm</li>\r\n<li>Thiết bị tiện nghi v&agrave; chất lượng</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"clearfix\">&nbsp;</div>\r\n<div class=\"intro-row reverse\">\r\n<div class=\"media-container\"><img src=\"/assets/images/sp9_master.jpg\" data-original=\"/assets/images/sp9_master.jpg\" /></div>\r\n<div class=\"text-description\">\r\n<h3 class=\"title text-3 text-medium\">GIỚI THIỆU CĂN HỘ</h3>\r\n<p class=\"content text-medium-light\">Ph&ograve;ng kh&aacute;ch ch&iacute;nh l&agrave; nơi để đ&oacute;n tiếp những vị kh&aacute;ch qu&yacute; hay bạn b&egrave; của gia chủ cho n&ecirc;n đ&acirc;y cũng c&oacute; thể được coi l&agrave; bộ mặt ch&iacute;nh của mỗi căn hộ.Ch&uacute;ng ta c&oacute; thể dễ d&agrave;ng nhận thấy đặc điểm chung của nội thất ph&ograve;ng kh&aacute;ch hiện đại đ&oacute; l&agrave; việc sử dụng những mẫu Ghế sofa đẹp đi k&egrave;m với một chiếc b&agrave;n k&iacute;nh hiện đại đặt trước tivi v&agrave; Kệ tivi đẹp.</p>\r\n<p class=\"content text-medium-light\">B&ecirc;n cạnh đ&oacute;, Q&uacute;y kh&aacute;ch c&ograve;n được tận hưởng những dịch vụ thư gi&atilde;n: ph&ograve;ng x&ocirc;ng hơi, x&ocirc;ng kh&ocirc;, ph&ograve;ng tập thể dục đầy đủ dụng cụ, c&ocirc;ng vi&ecirc;n, khu vui chơi trẻ em.</p>\r\n</div>\r\n</div>\r\n</article>', '<article class=\"container intro-details\">\r\n<p class=\"intro\"><strong>Trang giới thiệu</strong> gi&uacute;p kh&aacute;ch h&agrave;ng hiểu r&otilde; hơn về cửa h&agrave;ng của bạn. H&atilde;y cung cấp th&ocirc;ng tin cụ thể về việc kinh doanh, về cửa h&agrave;ng, th&ocirc;ng tin li&ecirc;n hệ. Điều n&agrave;y sẽ gi&uacute;p kh&aacute;ch h&agrave;ng cảm thấy tin tưởng khi mua h&agrave;ng tr&ecirc;n website của bạn.</p>\r\n<div class=\"intro-row\">\r\n<div class=\"media-container\"><img src=\"/assets/images/sp8_master.jpg\" data-original=\"/assets/images/sp8_master.jpg\" /></div>\r\n<div class=\"text-description\">\r\n<h3 class=\"title text-3 text-medium\">M&Ocirc; TẢ CĂN HỘ:</h3>\r\n<p class=\"content text-medium-light\">Ph&ograve;ng kh&aacute;ch ch&iacute;nh l&agrave; nơi để đ&oacute;n tiếp những vị kh&aacute;ch qu&yacute; hay bạn b&egrave; của gia chủ cho n&ecirc;n đ&acirc;y cũng c&oacute; thể được coi l&agrave; bộ mặt ch&iacute;nh của mỗi căn hộ.Ch&uacute;ng ta c&oacute; thể dễ d&agrave;ng nhận thấy đặc điểm chung của nội thất ph&ograve;ng kh&aacute;ch hiện đại đ&oacute; l&agrave; việc sử dụng những mẫu Ghế sofa đẹp đi k&egrave;m với một chiếc b&agrave;n k&iacute;nh hiện đại đặt trước tivi v&agrave; Kệ tivi đẹp.</p>\r\n<h3 class=\"title text-3 text-medium\">TH&Ocirc;NG TIN CHI TIẾT:</h3>\r\n<ul class=\"text-medium-light\">\r\n<li>Gạch l&aacute;t s&agrave;n bằng gỗ tự nhi&ecirc;n</li>\r\n<li>C&oacute; cửa k&iacute;nh trong ph&ograve;ng tắm</li>\r\n<li>Thiết bị tiện nghi v&agrave; chất lượng</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"clearfix\">&nbsp;</div>\r\n<div class=\"intro-row reverse\">\r\n<div class=\"media-container\"><img src=\"/assets/images/sp9_master.jpg\" data-original=\"/assets/images/sp9_master.jpg\" /></div>\r\n<div class=\"text-description\">\r\n<h3 class=\"title text-3 text-medium\">GIỚI THIỆU CĂN HỘ</h3>\r\n<p class=\"content text-medium-light\">Ph&ograve;ng kh&aacute;ch ch&iacute;nh l&agrave; nơi để đ&oacute;n tiếp những vị kh&aacute;ch qu&yacute; hay bạn b&egrave; của gia chủ cho n&ecirc;n đ&acirc;y cũng c&oacute; thể được coi l&agrave; bộ mặt ch&iacute;nh của mỗi căn hộ.Ch&uacute;ng ta c&oacute; thể dễ d&agrave;ng nhận thấy đặc điểm chung của nội thất ph&ograve;ng kh&aacute;ch hiện đại đ&oacute; l&agrave; việc sử dụng những mẫu Ghế sofa đẹp đi k&egrave;m với một chiếc b&agrave;n k&iacute;nh hiện đại đặt trước tivi v&agrave; Kệ tivi đẹp.</p>\r\n<p class=\"content text-medium-light\">B&ecirc;n cạnh đ&oacute;, Q&uacute;y kh&aacute;ch c&ograve;n được tận hưởng những dịch vụ thư gi&atilde;n: ph&ograve;ng x&ocirc;ng hơi, x&ocirc;ng kh&ocirc;, ph&ograve;ng tập thể dục đầy đủ dụng cụ, c&ocirc;ng vi&ecirc;n, khu vui chơi trẻ em.</p>\r\n</div>\r\n</div>\r\n</article>', 0, 1, 'app-project-lands/April2020/AsTGi3ht9L7hjNOA3xan.jpg', NULL, NULL, '[\"app-project-lands\\/April2020\\/zrIRBqUR9ndbbCd2x8ik.jpg\"]', '2020-04-02 09:30:00', '2020-04-02 10:15:28', NULL);
INSERT INTO `app_project_lands` VALUES (6, 'my-khe-angkora-park', 'my-khe-angkora-park', NULL, 'Mỹ Khê Angkora Park', 'Mỹ Khê Angkora Park', '<article class=\"container intro-details\">\r\n<p class=\"intro\"><strong>Trang giới thiệu</strong> gi&uacute;p kh&aacute;ch h&agrave;ng hiểu r&otilde; hơn về cửa h&agrave;ng của bạn. H&atilde;y cung cấp th&ocirc;ng tin cụ thể về việc kinh doanh, về cửa h&agrave;ng, th&ocirc;ng tin li&ecirc;n hệ. Điều n&agrave;y sẽ gi&uacute;p kh&aacute;ch h&agrave;ng cảm thấy tin tưởng khi mua h&agrave;ng tr&ecirc;n website của bạn.</p>\r\n<div class=\"intro-row\">\r\n<div class=\"media-container\"><img src=\"/assets/images/sp8_master.jpg\" data-original=\"/assets/images/sp8_master.jpg\" /></div>\r\n<div class=\"text-description\">\r\n<h3 class=\"title text-3 text-medium\">M&Ocirc; TẢ CĂN HỘ:</h3>\r\n<p class=\"content text-medium-light\">Ph&ograve;ng kh&aacute;ch ch&iacute;nh l&agrave; nơi để đ&oacute;n tiếp những vị kh&aacute;ch qu&yacute; hay bạn b&egrave; của gia chủ cho n&ecirc;n đ&acirc;y cũng c&oacute; thể được coi l&agrave; bộ mặt ch&iacute;nh của mỗi căn hộ.Ch&uacute;ng ta c&oacute; thể dễ d&agrave;ng nhận thấy đặc điểm chung của nội thất ph&ograve;ng kh&aacute;ch hiện đại đ&oacute; l&agrave; việc sử dụng những mẫu Ghế sofa đẹp đi k&egrave;m với một chiếc b&agrave;n k&iacute;nh hiện đại đặt trước tivi v&agrave; Kệ tivi đẹp.</p>\r\n<h3 class=\"title text-3 text-medium\">TH&Ocirc;NG TIN CHI TIẾT:</h3>\r\n<ul class=\"text-medium-light\">\r\n<li>Gạch l&aacute;t s&agrave;n bằng gỗ tự nhi&ecirc;n</li>\r\n<li>C&oacute; cửa k&iacute;nh trong ph&ograve;ng tắm</li>\r\n<li>Thiết bị tiện nghi v&agrave; chất lượng</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"clearfix\">&nbsp;</div>\r\n<div class=\"intro-row reverse\">\r\n<div class=\"media-container\"><img src=\"/assets/images/sp9_master.jpg\" data-original=\"/assets/images/sp9_master.jpg\" /></div>\r\n<div class=\"text-description\">\r\n<h3 class=\"title text-3 text-medium\">GIỚI THIỆU CĂN HỘ</h3>\r\n<p class=\"content text-medium-light\">Ph&ograve;ng kh&aacute;ch ch&iacute;nh l&agrave; nơi để đ&oacute;n tiếp những vị kh&aacute;ch qu&yacute; hay bạn b&egrave; của gia chủ cho n&ecirc;n đ&acirc;y cũng c&oacute; thể được coi l&agrave; bộ mặt ch&iacute;nh của mỗi căn hộ.Ch&uacute;ng ta c&oacute; thể dễ d&agrave;ng nhận thấy đặc điểm chung của nội thất ph&ograve;ng kh&aacute;ch hiện đại đ&oacute; l&agrave; việc sử dụng những mẫu Ghế sofa đẹp đi k&egrave;m với một chiếc b&agrave;n k&iacute;nh hiện đại đặt trước tivi v&agrave; Kệ tivi đẹp.</p>\r\n<p class=\"content text-medium-light\">B&ecirc;n cạnh đ&oacute;, Q&uacute;y kh&aacute;ch c&ograve;n được tận hưởng những dịch vụ thư gi&atilde;n: ph&ograve;ng x&ocirc;ng hơi, x&ocirc;ng kh&ocirc;, ph&ograve;ng tập thể dục đầy đủ dụng cụ, c&ocirc;ng vi&ecirc;n, khu vui chơi trẻ em.</p>\r\n</div>\r\n</div>\r\n</article>', '<article class=\"container intro-details\">\r\n<p class=\"intro\"><strong>Trang giới thiệu</strong> gi&uacute;p kh&aacute;ch h&agrave;ng hiểu r&otilde; hơn về cửa h&agrave;ng của bạn. H&atilde;y cung cấp th&ocirc;ng tin cụ thể về việc kinh doanh, về cửa h&agrave;ng, th&ocirc;ng tin li&ecirc;n hệ. Điều n&agrave;y sẽ gi&uacute;p kh&aacute;ch h&agrave;ng cảm thấy tin tưởng khi mua h&agrave;ng tr&ecirc;n website của bạn.</p>\r\n<div class=\"intro-row\">\r\n<div class=\"media-container\"><img src=\"/assets/images/sp8_master.jpg\" data-original=\"/assets/images/sp8_master.jpg\" /></div>\r\n<div class=\"text-description\">\r\n<h3 class=\"title text-3 text-medium\">M&Ocirc; TẢ CĂN HỘ:</h3>\r\n<p class=\"content text-medium-light\">Ph&ograve;ng kh&aacute;ch ch&iacute;nh l&agrave; nơi để đ&oacute;n tiếp những vị kh&aacute;ch qu&yacute; hay bạn b&egrave; của gia chủ cho n&ecirc;n đ&acirc;y cũng c&oacute; thể được coi l&agrave; bộ mặt ch&iacute;nh của mỗi căn hộ.Ch&uacute;ng ta c&oacute; thể dễ d&agrave;ng nhận thấy đặc điểm chung của nội thất ph&ograve;ng kh&aacute;ch hiện đại đ&oacute; l&agrave; việc sử dụng những mẫu Ghế sofa đẹp đi k&egrave;m với một chiếc b&agrave;n k&iacute;nh hiện đại đặt trước tivi v&agrave; Kệ tivi đẹp.</p>\r\n<h3 class=\"title text-3 text-medium\">TH&Ocirc;NG TIN CHI TIẾT:</h3>\r\n<ul class=\"text-medium-light\">\r\n<li>Gạch l&aacute;t s&agrave;n bằng gỗ tự nhi&ecirc;n</li>\r\n<li>C&oacute; cửa k&iacute;nh trong ph&ograve;ng tắm</li>\r\n<li>Thiết bị tiện nghi v&agrave; chất lượng</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"clearfix\">&nbsp;</div>\r\n<div class=\"intro-row reverse\">\r\n<div class=\"media-container\"><img src=\"/assets/images/sp9_master.jpg\" data-original=\"/assets/images/sp9_master.jpg\" /></div>\r\n<div class=\"text-description\">\r\n<h3 class=\"title text-3 text-medium\">GIỚI THIỆU CĂN HỘ</h3>\r\n<p class=\"content text-medium-light\">Ph&ograve;ng kh&aacute;ch ch&iacute;nh l&agrave; nơi để đ&oacute;n tiếp những vị kh&aacute;ch qu&yacute; hay bạn b&egrave; của gia chủ cho n&ecirc;n đ&acirc;y cũng c&oacute; thể được coi l&agrave; bộ mặt ch&iacute;nh của mỗi căn hộ.Ch&uacute;ng ta c&oacute; thể dễ d&agrave;ng nhận thấy đặc điểm chung của nội thất ph&ograve;ng kh&aacute;ch hiện đại đ&oacute; l&agrave; việc sử dụng những mẫu Ghế sofa đẹp đi k&egrave;m với một chiếc b&agrave;n k&iacute;nh hiện đại đặt trước tivi v&agrave; Kệ tivi đẹp.</p>\r\n<p class=\"content text-medium-light\">B&ecirc;n cạnh đ&oacute;, Q&uacute;y kh&aacute;ch c&ograve;n được tận hưởng những dịch vụ thư gi&atilde;n: ph&ograve;ng x&ocirc;ng hơi, x&ocirc;ng kh&ocirc;, ph&ograve;ng tập thể dục đầy đủ dụng cụ, c&ocirc;ng vi&ecirc;n, khu vui chơi trẻ em.</p>\r\n</div>\r\n</div>\r\n</article>', 1, 1, 'app-project-lands/April2020/mRYOo8EWNjC0Ja6T1lRD.jpg', NULL, NULL, NULL, '2020-04-02 09:31:10', '2020-04-02 10:15:15', NULL);
COMMIT;

-- ----------------------------
-- Table structure for app_user_comments
-- ----------------------------
DROP TABLE IF EXISTS `app_user_comments`;
CREATE TABLE `app_user_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uPhone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uAddress` text COLLATE utf8mb4_unicode_ci,
  `uComment` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `isReply` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of app_user_comments
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for data_rows
-- ----------------------------
DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of data_rows
-- ----------------------------
BEGIN;
INSERT INTO `data_rows` VALUES (1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1);
INSERT INTO `data_rows` VALUES (2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2);
INSERT INTO `data_rows` VALUES (3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3);
INSERT INTO `data_rows` VALUES (4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4);
INSERT INTO `data_rows` VALUES (5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5);
INSERT INTO `data_rows` VALUES (6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6);
INSERT INTO `data_rows` VALUES (7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7);
INSERT INTO `data_rows` VALUES (8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8);
INSERT INTO `data_rows` VALUES (9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10);
INSERT INTO `data_rows` VALUES (10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11);
INSERT INTO `data_rows` VALUES (11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12);
INSERT INTO `data_rows` VALUES (12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1);
INSERT INTO `data_rows` VALUES (13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2);
INSERT INTO `data_rows` VALUES (14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3);
INSERT INTO `data_rows` VALUES (15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4);
INSERT INTO `data_rows` VALUES (16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1);
INSERT INTO `data_rows` VALUES (17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2);
INSERT INTO `data_rows` VALUES (18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3);
INSERT INTO `data_rows` VALUES (19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4);
INSERT INTO `data_rows` VALUES (20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5);
INSERT INTO `data_rows` VALUES (21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9);
INSERT INTO `data_rows` VALUES (29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1);
INSERT INTO `data_rows` VALUES (30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2);
INSERT INTO `data_rows` VALUES (31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3);
INSERT INTO `data_rows` VALUES (32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4);
INSERT INTO `data_rows` VALUES (33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5);
INSERT INTO `data_rows` VALUES (34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6);
INSERT INTO `data_rows` VALUES (35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7);
INSERT INTO `data_rows` VALUES (36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8);
INSERT INTO `data_rows` VALUES (37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9);
INSERT INTO `data_rows` VALUES (38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10);
INSERT INTO `data_rows` VALUES (39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11);
INSERT INTO `data_rows` VALUES (40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12);
INSERT INTO `data_rows` VALUES (41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13);
INSERT INTO `data_rows` VALUES (42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14);
INSERT INTO `data_rows` VALUES (43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15);
INSERT INTO `data_rows` VALUES (56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1);
INSERT INTO `data_rows` VALUES (57, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2);
INSERT INTO `data_rows` VALUES (58, 7, 'longtitude', 'number', 'Longtitude', 0, 1, 1, 1, 1, 1, '{}', 3);
INSERT INTO `data_rows` VALUES (59, 7, 'latitude', 'number', 'Latitude', 0, 1, 1, 1, 1, 1, '{}', 4);
INSERT INTO `data_rows` VALUES (60, 7, 'address', 'text_area', 'Address', 0, 1, 1, 1, 1, 1, '{}', 5);
INSERT INTO `data_rows` VALUES (61, 7, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 7);
INSERT INTO `data_rows` VALUES (62, 7, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 6);
INSERT INTO `data_rows` VALUES (63, 7, 'branch', 'text_area', 'Branch', 0, 1, 1, 1, 1, 1, '{}', 8);
INSERT INTO `data_rows` VALUES (64, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1);
INSERT INTO `data_rows` VALUES (65, 10, 'categoryLandNameVI', 'text', 'CategoryLandNameVI', 1, 1, 1, 1, 1, 1, '{}', 2);
INSERT INTO `data_rows` VALUES (66, 10, 'categoryLandNameEN', 'text', 'CategoryLandNameEN', 1, 1, 1, 1, 1, 1, '{}', 3);
INSERT INTO `data_rows` VALUES (67, 10, 'isNotActive', 'text', 'IsNotActive', 0, 1, 1, 1, 1, 1, '{}', 4);
INSERT INTO `data_rows` VALUES (68, 10, 'imgCoverUrl', 'text', 'ImgCoverUrl', 0, 1, 1, 1, 1, 1, '{}', 5);
INSERT INTO `data_rows` VALUES (69, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1);
INSERT INTO `data_rows` VALUES (72, 11, 'isNotActive', 'checkbox', 'Trạng thái hiệu lực', 0, 1, 1, 1, 1, 1, '{\"on\":\"V\\u00f4 hi\\u1ec7u ho\\u00e1\",\"off\":\"Hi\\u1ec7u l\\u1ef1c\",\"checked\":true}', 4);
INSERT INTO `data_rows` VALUES (73, 11, 'imgCoverUrl', 'image', 'Hình đại diện', 0, 1, 1, 1, 1, 1, '{}', 5);
INSERT INTO `data_rows` VALUES (74, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 6);
INSERT INTO `data_rows` VALUES (75, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7);
INSERT INTO `data_rows` VALUES (76, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1);
INSERT INTO `data_rows` VALUES (79, 12, 'isNotActive', 'checkbox', 'Trạng Thái Hiệu Lực', 0, 1, 1, 1, 1, 1, '{\"on\":\"V\\u00f4 hi\\u1ec7u ho\\u00e1\",\"off\":\"Hi\\u1ec7u l\\u1ef1c\",\"checked\":true}', 4);
INSERT INTO `data_rows` VALUES (80, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 6);
INSERT INTO `data_rows` VALUES (81, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7);
INSERT INTO `data_rows` VALUES (82, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1);
INSERT INTO `data_rows` VALUES (83, 13, 'hashtag', 'text', 'Hashtag', 0, 0, 1, 1, 1, 1, '{}', 2);
INSERT INTO `data_rows` VALUES (84, 13, 'slugVI', 'text', 'Đường dẫn (VI)', 1, 0, 1, 1, 1, 1, '{}', 5);
INSERT INTO `data_rows` VALUES (85, 13, 'slugEN', 'text', 'Slug (EN)', 1, 0, 1, 1, 1, 1, '{}', 6);
INSERT INTO `data_rows` VALUES (86, 13, 'titleVI', 'text', 'Tiêu đề', 1, 1, 1, 1, 1, 1, '{}', 3);
INSERT INTO `data_rows` VALUES (87, 13, 'titleEN', 'text', 'Title', 1, 0, 1, 1, 1, 1, '{}', 4);
INSERT INTO `data_rows` VALUES (88, 13, 'contentVI', 'rich_text_box', 'Nội dung', 0, 0, 1, 1, 1, 1, '{}', 7);
INSERT INTO `data_rows` VALUES (89, 13, 'contentEN', 'rich_text_box', 'Content', 0, 0, 1, 1, 1, 1, '{}', 8);
INSERT INTO `data_rows` VALUES (90, 13, 'isHot', 'radio_btn', 'Là Tin tức Hot', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"Kh\\u00f4ng\",\"1\":\"\\u0110\\u00fang\"}}', 9);
INSERT INTO `data_rows` VALUES (91, 13, 'status', 'radio_btn', 'Trạng thái bài đăng', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u1edd duy\\u1ec7t\",\"1\":\"\\u0110\\u00e3 duy\\u1ec7t\",\"2\":\"H\\u1ebft hi\\u1ec7u l\\u1ef1c\"}}', 10);
INSERT INTO `data_rows` VALUES (93, 13, 'userIdCreated', 'text', 'UserIdCreated', 0, 0, 0, 0, 0, 0, '{}', 12);
INSERT INTO `data_rows` VALUES (94, 13, 'userIdUpdated', 'text', 'UserIdUpdated', 0, 0, 0, 0, 0, 0, '{}', 13);
INSERT INTO `data_rows` VALUES (95, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 14);
INSERT INTO `data_rows` VALUES (96, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 15);
INSERT INTO `data_rows` VALUES (97, 13, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 16);
INSERT INTO `data_rows` VALUES (134, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1);
INSERT INTO `data_rows` VALUES (137, 17, 'titleVI', 'text', 'Tên Bất động sản', 1, 1, 1, 1, 1, 1, '{}', 4);
INSERT INTO `data_rows` VALUES (138, 17, 'titleEN', 'text', 'Title', 1, 0, 1, 1, 1, 1, '{}', 6);
INSERT INTO `data_rows` VALUES (139, 17, 'seoAliasVI', 'text', 'Tên SEO', 1, 0, 1, 1, 1, 1, '{}', 8);
INSERT INTO `data_rows` VALUES (140, 17, 'seoAliasEN', 'text', 'SEO Alias', 1, 0, 1, 1, 1, 1, '{}', 9);
INSERT INTO `data_rows` VALUES (141, 17, 'introduceContentVI', 'rich_text_box', 'Nội dung giới thiệu', 0, 0, 1, 1, 1, 1, '{}', 10);
INSERT INTO `data_rows` VALUES (142, 17, 'introduceContentEN', 'rich_text_box', 'Introduce Content', 0, 0, 1, 1, 1, 1, '{}', 11);
INSERT INTO `data_rows` VALUES (143, 17, 'isHot', 'checkbox', 'Là BĐS Hot', 0, 1, 1, 1, 1, 1, '{\"on\":\"HOT\",\"off\":\"Kh\\u00f4ng\",\"checked\":false}', 12);
INSERT INTO `data_rows` VALUES (144, 17, 'status', 'radio_btn', 'Trạng thái', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u1edd duy\\u1ec7t\",\"1\":\"\\u0110\\u00e3 duy\\u1ec7t\",\"2\":\"H\\u1ebft hi\\u1ec7u l\\u1ef1c\"}}', 13);
INSERT INTO `data_rows` VALUES (145, 17, 'imgCoverUrl', 'image', 'Hình đại diện', 0, 1, 1, 1, 1, 1, '{}', 14);
INSERT INTO `data_rows` VALUES (146, 17, 'userCreatedId', 'text', 'UserCreatedId', 0, 0, 0, 0, 0, 0, '{}', 15);
INSERT INTO `data_rows` VALUES (147, 17, 'userUpdatedId', 'text', 'UserUpdatedId', 0, 0, 0, 0, 0, 0, '{}', 16);
INSERT INTO `data_rows` VALUES (148, 17, 'imgUrls', 'multiple_images', 'Hình ảnh BĐS', 0, 0, 1, 1, 1, 1, '{}', 17);
INSERT INTO `data_rows` VALUES (149, 17, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 18);
INSERT INTO `data_rows` VALUES (150, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 19);
INSERT INTO `data_rows` VALUES (151, 17, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 20);
INSERT INTO `data_rows` VALUES (152, 17, 'iArea', 'number', 'Diện tích (m2)', 0, 1, 1, 1, 1, 1, '{}', 22);
INSERT INTO `data_rows` VALUES (153, 17, 'iFloor', 'number', 'Số sàn(Thập phân)', 0, 0, 1, 1, 1, 1, '{}', 23);
INSERT INTO `data_rows` VALUES (154, 17, 'iBedroom', 'number', 'Số Phòng ngủ', 0, 0, 1, 1, 1, 1, '{}', 24);
INSERT INTO `data_rows` VALUES (155, 17, 'iBathroom', 'number', 'Số Phòng tắm(Thập phân)', 0, 0, 1, 1, 1, 1, '{}', 25);
INSERT INTO `data_rows` VALUES (156, 17, 'iBuiltYear', 'number', 'Năm xây dựng', 0, 1, 1, 1, 1, 1, '{}', 26);
INSERT INTO `data_rows` VALUES (157, 17, 'iHasGarage', 'checkbox', 'Có Garage?', 0, 0, 1, 1, 1, 1, '{\"on\":\"HOT\",\"off\":\"Kh\\u00f4ng\",\"checked\":false}', 27);
INSERT INTO `data_rows` VALUES (158, 17, 'iParking', 'number', 'Gần bao nhiêu Bãi đậu xe', 0, 0, 1, 1, 1, 1, '{}', 28);
INSERT INTO `data_rows` VALUES (159, 17, 'iPrice', 'number', 'Gía bán', 0, 1, 1, 1, 1, 1, '{}', 29);
INSERT INTO `data_rows` VALUES (163, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1);
INSERT INTO `data_rows` VALUES (164, 19, 'seoAliasVI', 'text', 'Tên SEO (Tiếng Việt)', 1, 0, 1, 1, 1, 1, '{}', 6);
INSERT INTO `data_rows` VALUES (165, 19, 'seoAliasEN', 'text', 'SEO Alias (English)', 1, 0, 1, 1, 1, 1, '{}', 7);
INSERT INTO `data_rows` VALUES (167, 19, 'titleVI', 'text', 'Tiêu đề (Tiếng Việt)', 1, 1, 1, 1, 1, 1, '{}', 2);
INSERT INTO `data_rows` VALUES (168, 19, 'titleEN', 'text', 'Title (English)', 1, 0, 1, 1, 1, 1, '{}', 3);
INSERT INTO `data_rows` VALUES (169, 19, 'introduceContentVI', 'rich_text_box', 'Nội dung giới thiệu (Tiếng Việt)', 0, 0, 1, 1, 1, 1, '{}', 8);
INSERT INTO `data_rows` VALUES (170, 19, 'introduceContentEN', 'rich_text_box', 'Introduce Content (English)', 0, 0, 1, 1, 1, 1, '{}', 9);
INSERT INTO `data_rows` VALUES (171, 19, 'isHot', 'checkbox', 'Là Dự Án Hot', 0, 1, 1, 1, 1, 1, '{\"on\":\"HOT\",\"off\":\"Kh\\u00f4ng\",\"checked\":false}', 10);
INSERT INTO `data_rows` VALUES (172, 19, 'status', 'radio_btn', 'Trạng thái', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u1edd duy\\u1ec7t\",\"1\":\"\\u0110\\u00e3 duy\\u1ec7t\",\"2\":\"H\\u1ebft hi\\u1ec7u l\\u1ef1c\"}}', 11);
INSERT INTO `data_rows` VALUES (173, 19, 'imgCoverUrl', 'image', 'Hình đại diện', 0, 1, 1, 1, 1, 1, '{}', 12);
INSERT INTO `data_rows` VALUES (174, 19, 'userIdCreated', 'text', 'UserIdCreated', 0, 0, 0, 0, 0, 0, '{}', 13);
INSERT INTO `data_rows` VALUES (175, 19, 'userIdUpdated', 'text', 'UserIdUpdated', 0, 0, 0, 0, 0, 0, '{}', 14);
INSERT INTO `data_rows` VALUES (176, 19, 'imgUrls', 'multiple_images', 'Ảnh về Dự án', 0, 0, 1, 1, 1, 1, '{}', 15);
INSERT INTO `data_rows` VALUES (177, 19, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 1, '{}', 16);
INSERT INTO `data_rows` VALUES (178, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 17);
INSERT INTO `data_rows` VALUES (179, 19, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 18);
INSERT INTO `data_rows` VALUES (180, 17, 'app_land_belongsto_app_category_land_relationship', 'relationship', 'Chọn Thể loại BĐS', 0, 0, 1, 1, 1, 1, '{\"model\":\"App\\\\AppCategoryLand\",\"table\":\"app_category_lands\",\"type\":\"belongsTo\",\"column\":\"category_land_id\",\"key\":\"id\",\"label\":\"category_land_name_vi\",\"pivot_table\":\"app_category_lands\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7);
INSERT INTO `data_rows` VALUES (182, 12, 'imgCoverUrl', 'image', 'Hình đại diện', 0, 1, 1, 1, 1, 1, '{}', 5);
INSERT INTO `data_rows` VALUES (183, 13, 'imgCoverUrl', 'image', 'Hình đại diện', 0, 1, 1, 1, 1, 1, '{}', 11);
INSERT INTO `data_rows` VALUES (184, 12, 'category_project_land_name_vi', 'text', 'Tên Thể loại Dự Án BĐS (VI)', 1, 1, 1, 1, 1, 1, '{}', 2);
INSERT INTO `data_rows` VALUES (185, 12, 'category_project_land_name_en', 'text', 'Category Project Land Name (EN)', 1, 1, 1, 1, 1, 1, '{}', 3);
INSERT INTO `data_rows` VALUES (186, 11, 'category_land_name_vi', 'text', 'Tên Thể loại BĐS (VI)', 1, 1, 1, 1, 1, 1, '{}', 2);
INSERT INTO `data_rows` VALUES (187, 11, 'category_land_name_en', 'text', 'Category Land Name (EN)', 1, 1, 1, 1, 1, 1, '{}', 3);
INSERT INTO `data_rows` VALUES (188, 19, 'app_project_land_belongsto_app_category_land_relationship', 'relationship', 'Thể loại Dự Án BĐS', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\AppCategoryProjectLand\",\"table\":\"app_category_project_lands\",\"type\":\"belongsTo\",\"column\":\"category_project_land_id\",\"key\":\"id\",\"label\":\"category_project_land_name_vi\",\"pivot_table\":\"app_category_lands\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4);
INSERT INTO `data_rows` VALUES (189, 19, 'category_project_land_id', 'text', 'Category Project Land Id', 0, 0, 0, 0, 0, 0, '{}', 5);
INSERT INTO `data_rows` VALUES (190, 17, 'category_land_id', 'text', 'Category Land Id', 0, 0, 0, 0, 0, 0, '{}', 2);
INSERT INTO `data_rows` VALUES (191, 17, 'project_land_id', 'text', 'Project Land Id', 0, 0, 0, 0, 0, 0, '{}', 3);
INSERT INTO `data_rows` VALUES (192, 17, 'iAddress', 'text', 'Địa chỉ', 0, 1, 1, 1, 1, 1, '{}', 21);
INSERT INTO `data_rows` VALUES (193, 17, 'app_land_belongsto_app_project_land_relationship', 'relationship', 'Thuộc dự án nào?', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\AppProjectLand\",\"table\":\"app_project_lands\",\"type\":\"belongsTo\",\"column\":\"project_land_id\",\"key\":\"id\",\"label\":\"titleVI\",\"pivot_table\":\"app_category_lands\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5);
INSERT INTO `data_rows` VALUES (194, 20, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1);
INSERT INTO `data_rows` VALUES (195, 20, 'uName', 'text', 'Tên khách hàng', 0, 1, 1, 0, 0, 0, '{}', 2);
INSERT INTO `data_rows` VALUES (196, 20, 'uPhone', 'text', 'Số điện thoại', 0, 1, 1, 0, 0, 0, '{}', 3);
INSERT INTO `data_rows` VALUES (197, 20, 'uAddress', 'text', 'Địa chỉ', 0, 0, 1, 0, 0, 0, '{}', 4);
INSERT INTO `data_rows` VALUES (198, 20, 'uComment', 'text', 'Nội dung phản hồi', 0, 1, 1, 0, 0, 0, '{}', 5);
INSERT INTO `data_rows` VALUES (199, 20, 'created_at', 'timestamp', 'Gửi ngày', 0, 1, 1, 0, 0, 0, '{}', 6);
INSERT INTO `data_rows` VALUES (200, 20, 'updated_at', 'timestamp', 'Cập nhật ngày', 0, 0, 0, 0, 0, 0, '{}', 7);
INSERT INTO `data_rows` VALUES (201, 20, 'deleted_at', 'timestamp', 'Xoá vào ngày', 0, 0, 1, 1, 0, 0, '{}', 8);
INSERT INTO `data_rows` VALUES (202, 20, 'isReply', 'checkbox', 'Đã xử lý', 0, 1, 1, 1, 0, 0, '{\"on\":\"\\u0110\\u00e3 x\\u1eed l\\u00fd\",\"off\":\"Ch\\u01b0a x\\u1eed l\\u00fd\",\"checked\":false}', 9);
COMMIT;

-- ----------------------------
-- Table structure for data_types
-- ----------------------------
DROP TABLE IF EXISTS `data_types`;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of data_types
-- ----------------------------
BEGIN;
INSERT INTO `data_types` VALUES (1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-03-30 04:33:10', '2020-03-30 04:33:10');
INSERT INTO `data_types` VALUES (2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-03-30 04:33:10', '2020-03-30 04:33:10');
INSERT INTO `data_types` VALUES (3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-03-30 04:33:10', '2020-03-30 04:33:10');
INSERT INTO `data_types` VALUES (5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `data_types` VALUES (7, 'companies', 'companies', 'Company', 'Companies', NULL, 'App\\Company', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":\"id\"}', '2020-03-30 04:51:35', '2020-03-30 04:51:35');
INSERT INTO `data_types` VALUES (10, 'AppCategoryLands', 'appcategorylands', 'Appcategoryland', 'Appcategorylands', NULL, 'App\\AppCategoryLand', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-03-30 07:28:35', '2020-03-30 07:30:16');
INSERT INTO `data_types` VALUES (11, 'app_category_lands', 'app-category-lands', 'Thể loại BĐS', 'Thể loại BĐS', NULL, 'App\\AppCategoryLand', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-03-30 07:34:54', '2020-03-30 09:01:35');
INSERT INTO `data_types` VALUES (12, 'app_category_project_lands', 'app-category-project-lands', 'Thể loại Dự án Bất động sản', 'Thể loại Dự án Bất động sản', NULL, 'App\\AppCategoryProjectLand', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-03-30 07:38:04', '2020-03-30 09:03:06');
INSERT INTO `data_types` VALUES (13, 'app_news_posts', 'app-news-posts', 'Tin tức Bất động sản', 'Tin tức Bất động sản', NULL, 'App\\AppNewsPost', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-03-30 07:44:03', '2020-03-30 09:25:28');
INSERT INTO `data_types` VALUES (17, 'app_lands', 'app-lands', 'Bất động sản', 'Bất động sản', NULL, 'App\\AppLand', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-03-30 08:00:11', '2020-04-02 10:37:47');
INSERT INTO `data_types` VALUES (19, 'app_project_lands', 'app-project-lands', 'Dự án Bất động sản', 'Dự án Bất động sản', NULL, 'App\\AppProjectLand', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-03-30 08:17:23', '2020-03-30 09:19:47');
INSERT INTO `data_types` VALUES (20, 'app_user_comments', 'app-user-comments', 'Khách hàng hỏi', 'Khách hàng hỏi', 'voyager-documentation', 'App\\AppUserComment', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-04-03 04:49:01', '2020-04-03 04:49:01');
COMMIT;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for menu_items
-- ----------------------------
DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of menu_items
-- ----------------------------
BEGIN;
INSERT INTO `menu_items` VALUES (1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-03-30 04:33:10', '2020-03-30 04:33:10', 'voyager.dashboard', NULL);
INSERT INTO `menu_items` VALUES (2, 1, 'Media', '', '_self', 'voyager-images', NULL, 22, 3, '2020-03-30 04:33:10', '2020-03-30 08:22:18', 'voyager.media.index', NULL);
INSERT INTO `menu_items` VALUES (3, 1, 'Users', '', '_self', 'voyager-person', NULL, 22, 2, '2020-03-30 04:33:10', '2020-03-30 08:22:09', 'voyager.users.index', NULL);
INSERT INTO `menu_items` VALUES (4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 22, 1, '2020-03-30 04:33:10', '2020-03-30 08:22:07', 'voyager.roles.index', NULL);
INSERT INTO `menu_items` VALUES (5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2020-03-30 04:33:10', '2020-04-03 04:49:13', NULL, NULL);
INSERT INTO `menu_items` VALUES (6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-03-30 04:33:10', '2020-03-30 08:20:15', 'voyager.menus.index', NULL);
INSERT INTO `menu_items` VALUES (7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-03-30 04:33:10', '2020-03-30 08:20:15', 'voyager.database.index', NULL);
INSERT INTO `menu_items` VALUES (8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-03-30 04:33:10', '2020-03-30 08:20:15', 'voyager.compass.index', NULL);
INSERT INTO `menu_items` VALUES (9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-03-30 04:33:10', '2020-03-30 08:20:15', 'voyager.bread.index', NULL);
INSERT INTO `menu_items` VALUES (10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 10, '2020-03-30 04:33:10', '2020-04-03 04:49:13', 'voyager.settings.index', NULL);
INSERT INTO `menu_items` VALUES (12, 1, 'Posts', '', '_self', 'voyager-news', NULL, 22, 4, '2020-03-30 04:33:11', '2020-03-30 08:22:22', 'voyager.posts.index', NULL);
INSERT INTO `menu_items` VALUES (14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2020-03-30 04:33:11', '2020-03-30 08:20:15', 'voyager.hooks', NULL);
INSERT INTO `menu_items` VALUES (17, 1, 'Thể loại Bất động sản', '', '_self', 'voyager-categories', '#000000', NULL, 6, '2020-03-30 07:34:54', '2020-04-03 04:49:13', 'voyager.app-category-lands.index', 'null');
INSERT INTO `menu_items` VALUES (18, 1, 'Thể loại Dự án Bất động sản', '', '_self', 'voyager-folder', '#000000', NULL, 7, '2020-03-30 07:38:04', '2020-04-03 04:49:13', 'voyager.app-category-project-lands.index', 'null');
INSERT INTO `menu_items` VALUES (19, 1, 'Tin tức Bất động sản', '', '_self', 'voyager-news', '#000000', NULL, 3, '2020-03-30 07:44:03', '2020-04-03 04:49:13', 'voyager.app-news-posts.index', 'null');
INSERT INTO `menu_items` VALUES (20, 1, 'Bất động sản', '', '_self', 'voyager-data', '#000000', NULL, 4, '2020-03-30 08:00:11', '2020-04-03 04:49:13', 'voyager.app-lands.index', 'null');
INSERT INTO `menu_items` VALUES (21, 1, 'Dự án Bất động sản', '', '_self', 'voyager-wallet', '#000000', NULL, 5, '2020-03-30 08:17:23', '2020-04-03 04:49:13', 'voyager.app-project-lands.index', 'null');
INSERT INTO `menu_items` VALUES (22, 1, 'Hệ thống', '', '_self', 'voyager-laptop', '#000000', NULL, 8, '2020-03-30 08:21:59', '2020-04-03 04:49:13', NULL, '');
INSERT INTO `menu_items` VALUES (23, 1, 'Khách hàng hỏi', '', '_self', 'voyager-documentation', NULL, NULL, 2, '2020-04-03 04:49:01', '2020-04-03 04:49:13', 'voyager.app-user-comments.index', NULL);
COMMIT;

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of menus
-- ----------------------------
BEGIN;
INSERT INTO `menus` VALUES (1, 'admin', '2020-03-30 04:33:10', '2020-03-30 04:33:10');
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2016_01_01_000000_add_voyager_user_fields', 1);
INSERT INTO `migrations` VALUES (3, '2016_01_01_000000_create_data_types_table', 1);
INSERT INTO `migrations` VALUES (4, '2016_05_19_173453_create_menu_table', 1);
INSERT INTO `migrations` VALUES (5, '2016_10_21_190000_create_roles_table', 1);
INSERT INTO `migrations` VALUES (6, '2016_10_21_190000_create_settings_table', 1);
INSERT INTO `migrations` VALUES (7, '2016_11_30_135954_create_permission_table', 1);
INSERT INTO `migrations` VALUES (8, '2016_11_30_141208_create_permission_role_table', 1);
INSERT INTO `migrations` VALUES (9, '2016_12_26_201236_data_types__add__server_side', 1);
INSERT INTO `migrations` VALUES (10, '2017_01_13_000000_add_route_to_menu_items_table', 1);
INSERT INTO `migrations` VALUES (11, '2017_01_14_005015_create_translations_table', 1);
INSERT INTO `migrations` VALUES (12, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1);
INSERT INTO `migrations` VALUES (13, '2017_03_06_000000_add_controller_to_data_types_table', 1);
INSERT INTO `migrations` VALUES (14, '2017_04_21_000000_add_order_to_data_rows_table', 1);
INSERT INTO `migrations` VALUES (15, '2017_07_05_210000_add_policyname_to_data_types_table', 1);
INSERT INTO `migrations` VALUES (16, '2017_08_05_000000_add_group_to_settings_table', 1);
INSERT INTO `migrations` VALUES (17, '2017_11_26_013050_add_user_role_relationship', 1);
INSERT INTO `migrations` VALUES (18, '2017_11_26_015000_create_user_roles_table', 1);
INSERT INTO `migrations` VALUES (19, '2018_03_11_000000_add_user_settings', 1);
INSERT INTO `migrations` VALUES (20, '2018_03_14_000000_add_details_to_data_types_table', 1);
INSERT INTO `migrations` VALUES (21, '2018_03_16_000000_make_settings_value_nullable', 1);
INSERT INTO `migrations` VALUES (22, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (23, '2020_03_28_033415_create_category_lands_table', 1);
INSERT INTO `migrations` VALUES (24, '2016_01_01_000000_create_pages_table', 2);
INSERT INTO `migrations` VALUES (25, '2016_01_01_000000_create_posts_table', 2);
INSERT INTO `migrations` VALUES (26, '2016_02_15_204651_create_categories_table', 2);
INSERT INTO `migrations` VALUES (27, '2017_04_11_000000_alter_post_nullable_fields_table', 2);
COMMIT;

-- ----------------------------
-- Table structure for permission_role
-- ----------------------------
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permission_role
-- ----------------------------
BEGIN;
INSERT INTO `permission_role` VALUES (1, 1);
INSERT INTO `permission_role` VALUES (2, 1);
INSERT INTO `permission_role` VALUES (3, 1);
INSERT INTO `permission_role` VALUES (4, 1);
INSERT INTO `permission_role` VALUES (5, 1);
INSERT INTO `permission_role` VALUES (6, 1);
INSERT INTO `permission_role` VALUES (7, 1);
INSERT INTO `permission_role` VALUES (8, 1);
INSERT INTO `permission_role` VALUES (9, 1);
INSERT INTO `permission_role` VALUES (10, 1);
INSERT INTO `permission_role` VALUES (11, 1);
INSERT INTO `permission_role` VALUES (12, 1);
INSERT INTO `permission_role` VALUES (13, 1);
INSERT INTO `permission_role` VALUES (14, 1);
INSERT INTO `permission_role` VALUES (15, 1);
INSERT INTO `permission_role` VALUES (16, 1);
INSERT INTO `permission_role` VALUES (17, 1);
INSERT INTO `permission_role` VALUES (18, 1);
INSERT INTO `permission_role` VALUES (19, 1);
INSERT INTO `permission_role` VALUES (20, 1);
INSERT INTO `permission_role` VALUES (21, 1);
INSERT INTO `permission_role` VALUES (22, 1);
INSERT INTO `permission_role` VALUES (23, 1);
INSERT INTO `permission_role` VALUES (24, 1);
INSERT INTO `permission_role` VALUES (25, 1);
INSERT INTO `permission_role` VALUES (31, 1);
INSERT INTO `permission_role` VALUES (32, 1);
INSERT INTO `permission_role` VALUES (33, 1);
INSERT INTO `permission_role` VALUES (34, 1);
INSERT INTO `permission_role` VALUES (35, 1);
INSERT INTO `permission_role` VALUES (41, 1);
INSERT INTO `permission_role` VALUES (42, 1);
INSERT INTO `permission_role` VALUES (43, 1);
INSERT INTO `permission_role` VALUES (44, 1);
INSERT INTO `permission_role` VALUES (45, 1);
INSERT INTO `permission_role` VALUES (46, 1);
INSERT INTO `permission_role` VALUES (47, 1);
INSERT INTO `permission_role` VALUES (48, 1);
INSERT INTO `permission_role` VALUES (49, 1);
INSERT INTO `permission_role` VALUES (50, 1);
INSERT INTO `permission_role` VALUES (51, 1);
INSERT INTO `permission_role` VALUES (52, 1);
INSERT INTO `permission_role` VALUES (53, 1);
INSERT INTO `permission_role` VALUES (54, 1);
INSERT INTO `permission_role` VALUES (55, 1);
INSERT INTO `permission_role` VALUES (56, 1);
INSERT INTO `permission_role` VALUES (57, 1);
INSERT INTO `permission_role` VALUES (58, 1);
INSERT INTO `permission_role` VALUES (59, 1);
INSERT INTO `permission_role` VALUES (60, 1);
INSERT INTO `permission_role` VALUES (61, 1);
INSERT INTO `permission_role` VALUES (62, 1);
INSERT INTO `permission_role` VALUES (63, 1);
INSERT INTO `permission_role` VALUES (64, 1);
INSERT INTO `permission_role` VALUES (65, 1);
INSERT INTO `permission_role` VALUES (66, 1);
INSERT INTO `permission_role` VALUES (67, 1);
INSERT INTO `permission_role` VALUES (68, 1);
INSERT INTO `permission_role` VALUES (69, 1);
INSERT INTO `permission_role` VALUES (70, 1);
INSERT INTO `permission_role` VALUES (71, 1);
INSERT INTO `permission_role` VALUES (72, 1);
INSERT INTO `permission_role` VALUES (73, 1);
INSERT INTO `permission_role` VALUES (74, 1);
INSERT INTO `permission_role` VALUES (75, 1);
INSERT INTO `permission_role` VALUES (76, 1);
INSERT INTO `permission_role` VALUES (77, 1);
INSERT INTO `permission_role` VALUES (78, 1);
INSERT INTO `permission_role` VALUES (79, 1);
INSERT INTO `permission_role` VALUES (80, 1);
INSERT INTO `permission_role` VALUES (81, 1);
COMMIT;

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------
BEGIN;
INSERT INTO `permissions` VALUES (1, 'browse_admin', NULL, '2020-03-30 04:33:10', '2020-03-30 04:33:10');
INSERT INTO `permissions` VALUES (2, 'browse_bread', NULL, '2020-03-30 04:33:10', '2020-03-30 04:33:10');
INSERT INTO `permissions` VALUES (3, 'browse_database', NULL, '2020-03-30 04:33:10', '2020-03-30 04:33:10');
INSERT INTO `permissions` VALUES (4, 'browse_media', NULL, '2020-03-30 04:33:10', '2020-03-30 04:33:10');
INSERT INTO `permissions` VALUES (5, 'browse_compass', NULL, '2020-03-30 04:33:10', '2020-03-30 04:33:10');
INSERT INTO `permissions` VALUES (6, 'browse_menus', 'menus', '2020-03-30 04:33:10', '2020-03-30 04:33:10');
INSERT INTO `permissions` VALUES (7, 'read_menus', 'menus', '2020-03-30 04:33:10', '2020-03-30 04:33:10');
INSERT INTO `permissions` VALUES (8, 'edit_menus', 'menus', '2020-03-30 04:33:10', '2020-03-30 04:33:10');
INSERT INTO `permissions` VALUES (9, 'add_menus', 'menus', '2020-03-30 04:33:10', '2020-03-30 04:33:10');
INSERT INTO `permissions` VALUES (10, 'delete_menus', 'menus', '2020-03-30 04:33:10', '2020-03-30 04:33:10');
INSERT INTO `permissions` VALUES (11, 'browse_roles', 'roles', '2020-03-30 04:33:10', '2020-03-30 04:33:10');
INSERT INTO `permissions` VALUES (12, 'read_roles', 'roles', '2020-03-30 04:33:10', '2020-03-30 04:33:10');
INSERT INTO `permissions` VALUES (13, 'edit_roles', 'roles', '2020-03-30 04:33:10', '2020-03-30 04:33:10');
INSERT INTO `permissions` VALUES (14, 'add_roles', 'roles', '2020-03-30 04:33:10', '2020-03-30 04:33:10');
INSERT INTO `permissions` VALUES (15, 'delete_roles', 'roles', '2020-03-30 04:33:10', '2020-03-30 04:33:10');
INSERT INTO `permissions` VALUES (16, 'browse_users', 'users', '2020-03-30 04:33:10', '2020-03-30 04:33:10');
INSERT INTO `permissions` VALUES (17, 'read_users', 'users', '2020-03-30 04:33:10', '2020-03-30 04:33:10');
INSERT INTO `permissions` VALUES (18, 'edit_users', 'users', '2020-03-30 04:33:10', '2020-03-30 04:33:10');
INSERT INTO `permissions` VALUES (19, 'add_users', 'users', '2020-03-30 04:33:10', '2020-03-30 04:33:10');
INSERT INTO `permissions` VALUES (20, 'delete_users', 'users', '2020-03-30 04:33:10', '2020-03-30 04:33:10');
INSERT INTO `permissions` VALUES (21, 'browse_settings', 'settings', '2020-03-30 04:33:10', '2020-03-30 04:33:10');
INSERT INTO `permissions` VALUES (22, 'read_settings', 'settings', '2020-03-30 04:33:10', '2020-03-30 04:33:10');
INSERT INTO `permissions` VALUES (23, 'edit_settings', 'settings', '2020-03-30 04:33:10', '2020-03-30 04:33:10');
INSERT INTO `permissions` VALUES (24, 'add_settings', 'settings', '2020-03-30 04:33:10', '2020-03-30 04:33:10');
INSERT INTO `permissions` VALUES (25, 'delete_settings', 'settings', '2020-03-30 04:33:10', '2020-03-30 04:33:10');
INSERT INTO `permissions` VALUES (31, 'browse_posts', 'posts', '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `permissions` VALUES (32, 'read_posts', 'posts', '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `permissions` VALUES (33, 'edit_posts', 'posts', '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `permissions` VALUES (34, 'add_posts', 'posts', '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `permissions` VALUES (35, 'delete_posts', 'posts', '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `permissions` VALUES (41, 'browse_hooks', NULL, '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `permissions` VALUES (42, 'browse_companies', 'companies', '2020-03-30 04:51:35', '2020-03-30 04:51:35');
INSERT INTO `permissions` VALUES (43, 'read_companies', 'companies', '2020-03-30 04:51:35', '2020-03-30 04:51:35');
INSERT INTO `permissions` VALUES (44, 'edit_companies', 'companies', '2020-03-30 04:51:35', '2020-03-30 04:51:35');
INSERT INTO `permissions` VALUES (45, 'add_companies', 'companies', '2020-03-30 04:51:35', '2020-03-30 04:51:35');
INSERT INTO `permissions` VALUES (46, 'delete_companies', 'companies', '2020-03-30 04:51:35', '2020-03-30 04:51:35');
INSERT INTO `permissions` VALUES (47, 'browse_AppCategoryLands', 'AppCategoryLands', '2020-03-30 07:28:35', '2020-03-30 07:28:35');
INSERT INTO `permissions` VALUES (48, 'read_AppCategoryLands', 'AppCategoryLands', '2020-03-30 07:28:35', '2020-03-30 07:28:35');
INSERT INTO `permissions` VALUES (49, 'edit_AppCategoryLands', 'AppCategoryLands', '2020-03-30 07:28:35', '2020-03-30 07:28:35');
INSERT INTO `permissions` VALUES (50, 'add_AppCategoryLands', 'AppCategoryLands', '2020-03-30 07:28:35', '2020-03-30 07:28:35');
INSERT INTO `permissions` VALUES (51, 'delete_AppCategoryLands', 'AppCategoryLands', '2020-03-30 07:28:35', '2020-03-30 07:28:35');
INSERT INTO `permissions` VALUES (52, 'browse_app_category_lands', 'app_category_lands', '2020-03-30 07:34:54', '2020-03-30 07:34:54');
INSERT INTO `permissions` VALUES (53, 'read_app_category_lands', 'app_category_lands', '2020-03-30 07:34:54', '2020-03-30 07:34:54');
INSERT INTO `permissions` VALUES (54, 'edit_app_category_lands', 'app_category_lands', '2020-03-30 07:34:54', '2020-03-30 07:34:54');
INSERT INTO `permissions` VALUES (55, 'add_app_category_lands', 'app_category_lands', '2020-03-30 07:34:54', '2020-03-30 07:34:54');
INSERT INTO `permissions` VALUES (56, 'delete_app_category_lands', 'app_category_lands', '2020-03-30 07:34:54', '2020-03-30 07:34:54');
INSERT INTO `permissions` VALUES (57, 'browse_app_category_project_lands', 'app_category_project_lands', '2020-03-30 07:38:04', '2020-03-30 07:38:04');
INSERT INTO `permissions` VALUES (58, 'read_app_category_project_lands', 'app_category_project_lands', '2020-03-30 07:38:04', '2020-03-30 07:38:04');
INSERT INTO `permissions` VALUES (59, 'edit_app_category_project_lands', 'app_category_project_lands', '2020-03-30 07:38:04', '2020-03-30 07:38:04');
INSERT INTO `permissions` VALUES (60, 'add_app_category_project_lands', 'app_category_project_lands', '2020-03-30 07:38:04', '2020-03-30 07:38:04');
INSERT INTO `permissions` VALUES (61, 'delete_app_category_project_lands', 'app_category_project_lands', '2020-03-30 07:38:04', '2020-03-30 07:38:04');
INSERT INTO `permissions` VALUES (62, 'browse_app_news_posts', 'app_news_posts', '2020-03-30 07:44:03', '2020-03-30 07:44:03');
INSERT INTO `permissions` VALUES (63, 'read_app_news_posts', 'app_news_posts', '2020-03-30 07:44:03', '2020-03-30 07:44:03');
INSERT INTO `permissions` VALUES (64, 'edit_app_news_posts', 'app_news_posts', '2020-03-30 07:44:03', '2020-03-30 07:44:03');
INSERT INTO `permissions` VALUES (65, 'add_app_news_posts', 'app_news_posts', '2020-03-30 07:44:03', '2020-03-30 07:44:03');
INSERT INTO `permissions` VALUES (66, 'delete_app_news_posts', 'app_news_posts', '2020-03-30 07:44:03', '2020-03-30 07:44:03');
INSERT INTO `permissions` VALUES (67, 'browse_app_lands', 'app_lands', '2020-03-30 08:00:11', '2020-03-30 08:00:11');
INSERT INTO `permissions` VALUES (68, 'read_app_lands', 'app_lands', '2020-03-30 08:00:11', '2020-03-30 08:00:11');
INSERT INTO `permissions` VALUES (69, 'edit_app_lands', 'app_lands', '2020-03-30 08:00:11', '2020-03-30 08:00:11');
INSERT INTO `permissions` VALUES (70, 'add_app_lands', 'app_lands', '2020-03-30 08:00:11', '2020-03-30 08:00:11');
INSERT INTO `permissions` VALUES (71, 'delete_app_lands', 'app_lands', '2020-03-30 08:00:11', '2020-03-30 08:00:11');
INSERT INTO `permissions` VALUES (72, 'browse_app_project_lands', 'app_project_lands', '2020-03-30 08:17:23', '2020-03-30 08:17:23');
INSERT INTO `permissions` VALUES (73, 'read_app_project_lands', 'app_project_lands', '2020-03-30 08:17:23', '2020-03-30 08:17:23');
INSERT INTO `permissions` VALUES (74, 'edit_app_project_lands', 'app_project_lands', '2020-03-30 08:17:23', '2020-03-30 08:17:23');
INSERT INTO `permissions` VALUES (75, 'add_app_project_lands', 'app_project_lands', '2020-03-30 08:17:23', '2020-03-30 08:17:23');
INSERT INTO `permissions` VALUES (76, 'delete_app_project_lands', 'app_project_lands', '2020-03-30 08:17:23', '2020-03-30 08:17:23');
INSERT INTO `permissions` VALUES (77, 'browse_app_user_comments', 'app_user_comments', '2020-04-03 04:49:01', '2020-04-03 04:49:01');
INSERT INTO `permissions` VALUES (78, 'read_app_user_comments', 'app_user_comments', '2020-04-03 04:49:01', '2020-04-03 04:49:01');
INSERT INTO `permissions` VALUES (79, 'edit_app_user_comments', 'app_user_comments', '2020-04-03 04:49:01', '2020-04-03 04:49:01');
INSERT INTO `permissions` VALUES (80, 'add_app_user_comments', 'app_user_comments', '2020-04-03 04:49:01', '2020-04-03 04:49:01');
INSERT INTO `permissions` VALUES (81, 'delete_app_user_comments', 'app_user_comments', '2020-04-03 04:49:01', '2020-04-03 04:49:01');
COMMIT;

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of posts
-- ----------------------------
BEGIN;
INSERT INTO `posts` VALUES (1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `posts` VALUES (2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `posts` VALUES (3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `posts` VALUES (4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-03-30 04:33:11', '2020-03-30 04:33:11');
COMMIT;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
INSERT INTO `roles` VALUES (1, 'admin', 'Administrator', '2020-03-30 04:33:10', '2020-03-30 04:33:10');
INSERT INTO `roles` VALUES (2, 'user', 'Normal User', '2020-03-30 04:33:10', '2020-03-30 04:33:10');
COMMIT;

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of settings
-- ----------------------------
BEGIN;
INSERT INTO `settings` VALUES (1, 'site.title', 'Site Title', 'WealthLand - Dự án Bất Động Sản Thịnh Vượng', '', 'text', 1, 'Site');
INSERT INTO `settings` VALUES (2, 'site.description', 'Site Description', NULL, '', 'text', 2, 'Site');
INSERT INTO `settings` VALUES (3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site');
INSERT INTO `settings` VALUES (4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site');
INSERT INTO `settings` VALUES (5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin');
INSERT INTO `settings` VALUES (6, 'admin.title', 'Admin Title', 'WealthLand', '', 'text', 1, 'Admin');
INSERT INTO `settings` VALUES (7, 'admin.description', 'Admin Description', 'Trang Quản trị - WealthLand Website', '', 'text', 2, 'Admin');
INSERT INTO `settings` VALUES (8, 'admin.loader', 'Admin Loader', '', '', 'image', 4, 'Admin');
INSERT INTO `settings` VALUES (9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 3, 'Admin');
INSERT INTO `settings` VALUES (10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');
COMMIT;

-- ----------------------------
-- Table structure for translations
-- ----------------------------
DROP TABLE IF EXISTS `translations`;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of translations
-- ----------------------------
BEGIN;
INSERT INTO `translations` VALUES (1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `translations` VALUES (2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `translations` VALUES (3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `translations` VALUES (4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `translations` VALUES (5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `translations` VALUES (6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `translations` VALUES (7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `translations` VALUES (8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `translations` VALUES (9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `translations` VALUES (10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `translations` VALUES (11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `translations` VALUES (12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `translations` VALUES (13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `translations` VALUES (14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `translations` VALUES (15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `translations` VALUES (16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `translations` VALUES (17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `translations` VALUES (18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `translations` VALUES (19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `translations` VALUES (20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `translations` VALUES (21, 'menu_items', 'title', 2, 'pt', 'Media', '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `translations` VALUES (22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `translations` VALUES (23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `translations` VALUES (24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `translations` VALUES (25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `translations` VALUES (26, 'menu_items', 'title', 4, 'pt', 'Funções', '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `translations` VALUES (27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `translations` VALUES (28, 'menu_items', 'title', 6, 'pt', 'Menus', '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `translations` VALUES (29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2020-03-30 04:33:11', '2020-03-30 04:33:11');
INSERT INTO `translations` VALUES (30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2020-03-30 04:33:11', '2020-03-30 04:33:11');
COMMIT;

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 1, 'Quản trị viên', 'admin', 'users/default.png', NULL, '$2y$10$jnW29BRvYZ4J27Gu8boty.IEvYx1GYhhHwMj/l/ilhmmqVZFrybJS', 'qwmpOIX1S1898DxgL1CHailfdcrYpzieW2ElmWVLIMitHh46jX7oygjuuidr', '{\"locale\":\"en\"}', '2020-03-30 04:33:11', '2020-03-30 09:56:47');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;