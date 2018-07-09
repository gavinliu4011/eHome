/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : ehome

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 22/06/2018 15:11:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for alembic_version
-- ----------------------------
DROP TABLE IF EXISTS `alembic_version`;
CREATE TABLE `alembic_version`  (
  `version_num` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`version_num`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of alembic_version
-- ----------------------------
INSERT INTO `alembic_version` VALUES ('2da0b9ad30da');

-- ----------------------------
-- Table structure for eh_area_info
-- ----------------------------
DROP TABLE IF EXISTS `eh_area_info`;
CREATE TABLE `eh_area_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of eh_area_info
-- ----------------------------
INSERT INTO `eh_area_info` VALUES (1, '锦江', NULL, NULL);
INSERT INTO `eh_area_info` VALUES (2, '青羊', NULL, NULL);
INSERT INTO `eh_area_info` VALUES (3, '武侯', NULL, NULL);
INSERT INTO `eh_area_info` VALUES (4, '成华', NULL, NULL);
INSERT INTO `eh_area_info` VALUES (5, '高新', NULL, NULL);
INSERT INTO `eh_area_info` VALUES (6, '金牛', NULL, NULL);
INSERT INTO `eh_area_info` VALUES (7, '都江堰', NULL, NULL);
INSERT INTO `eh_area_info` VALUES (8, '双流', NULL, NULL);
INSERT INTO `eh_area_info` VALUES (9, '郫都', NULL, NULL);
INSERT INTO `eh_area_info` VALUES (10, '温江', NULL, NULL);
INSERT INTO `eh_area_info` VALUES (11, '龙泉驿', NULL, NULL);
INSERT INTO `eh_area_info` VALUES (12, '新都', NULL, NULL);
INSERT INTO `eh_area_info` VALUES (13, '邛崃', NULL, NULL);
INSERT INTO `eh_area_info` VALUES (14, '崇州', NULL, NULL);
INSERT INTO `eh_area_info` VALUES (15, '大邑', NULL, NULL);
INSERT INTO `eh_area_info` VALUES (16, '彭州', NULL, NULL);
INSERT INTO `eh_area_info` VALUES (17, '新津', NULL, NULL);
INSERT INTO `eh_area_info` VALUES (18, '金堂', NULL, NULL);
INSERT INTO `eh_area_info` VALUES (19, '蒲江', NULL, NULL);
INSERT INTO `eh_area_info` VALUES (20, '青白江', NULL, NULL);

-- ----------------------------
-- Table structure for eh_facility_info
-- ----------------------------
DROP TABLE IF EXISTS `eh_facility_info`;
CREATE TABLE `eh_facility_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of eh_facility_info
-- ----------------------------
INSERT INTO `eh_facility_info` VALUES (1, '无线网络', NULL, NULL);
INSERT INTO `eh_facility_info` VALUES (2, '热水淋浴', NULL, NULL);
INSERT INTO `eh_facility_info` VALUES (3, '空调', NULL, NULL);
INSERT INTO `eh_facility_info` VALUES (4, '暖气', NULL, NULL);
INSERT INTO `eh_facility_info` VALUES (5, '允许吸烟', NULL, NULL);
INSERT INTO `eh_facility_info` VALUES (6, '饮水设备', NULL, NULL);
INSERT INTO `eh_facility_info` VALUES (7, '牙具', NULL, NULL);
INSERT INTO `eh_facility_info` VALUES (8, '香皂', NULL, NULL);
INSERT INTO `eh_facility_info` VALUES (9, '拖鞋', NULL, NULL);
INSERT INTO `eh_facility_info` VALUES (10, '手纸', NULL, NULL);
INSERT INTO `eh_facility_info` VALUES (11, '毛巾', NULL, NULL);
INSERT INTO `eh_facility_info` VALUES (12, '沐浴露、洗发露', NULL, NULL);
INSERT INTO `eh_facility_info` VALUES (13, '冰箱', NULL, NULL);
INSERT INTO `eh_facility_info` VALUES (14, '洗衣机', NULL, NULL);
INSERT INTO `eh_facility_info` VALUES (15, '电梯', NULL, NULL);
INSERT INTO `eh_facility_info` VALUES (16, '允许做饭', NULL, NULL);
INSERT INTO `eh_facility_info` VALUES (17, '允许带宠物', NULL, NULL);
INSERT INTO `eh_facility_info` VALUES (18, '允许聚会', NULL, NULL);
INSERT INTO `eh_facility_info` VALUES (19, '门禁系统', NULL, NULL);
INSERT INTO `eh_facility_info` VALUES (20, '停车位', NULL, NULL);
INSERT INTO `eh_facility_info` VALUES (21, '有线网络', NULL, NULL);
INSERT INTO `eh_facility_info` VALUES (22, '电视', NULL, NULL);
INSERT INTO `eh_facility_info` VALUES (23, '浴缸', NULL, NULL);

-- ----------------------------
-- Table structure for eh_house_facility
-- ----------------------------
DROP TABLE IF EXISTS `eh_house_facility`;
CREATE TABLE `eh_house_facility`  (
  `house_id` int(11) NOT NULL,
  `facility_id` int(11) NOT NULL,
  PRIMARY KEY (`house_id`, `facility_id`) USING BTREE,
  INDEX `facility_id`(`facility_id`) USING BTREE,
  CONSTRAINT `eh_house_facility_ibfk_1` FOREIGN KEY (`facility_id`) REFERENCES `eh_facility_info` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `eh_house_facility_ibfk_2` FOREIGN KEY (`house_id`) REFERENCES `eh_house_info` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of eh_house_facility
-- ----------------------------
INSERT INTO `eh_house_facility` VALUES (1, 1);
INSERT INTO `eh_house_facility` VALUES (2, 1);
INSERT INTO `eh_house_facility` VALUES (1, 2);
INSERT INTO `eh_house_facility` VALUES (2, 2);
INSERT INTO `eh_house_facility` VALUES (1, 3);
INSERT INTO `eh_house_facility` VALUES (2, 3);
INSERT INTO `eh_house_facility` VALUES (1, 4);
INSERT INTO `eh_house_facility` VALUES (1, 5);
INSERT INTO `eh_house_facility` VALUES (2, 5);
INSERT INTO `eh_house_facility` VALUES (1, 6);
INSERT INTO `eh_house_facility` VALUES (1, 7);
INSERT INTO `eh_house_facility` VALUES (2, 7);
INSERT INTO `eh_house_facility` VALUES (1, 8);
INSERT INTO `eh_house_facility` VALUES (1, 9);
INSERT INTO `eh_house_facility` VALUES (2, 9);
INSERT INTO `eh_house_facility` VALUES (1, 10);
INSERT INTO `eh_house_facility` VALUES (2, 10);
INSERT INTO `eh_house_facility` VALUES (1, 11);
INSERT INTO `eh_house_facility` VALUES (2, 11);
INSERT INTO `eh_house_facility` VALUES (1, 12);
INSERT INTO `eh_house_facility` VALUES (2, 12);
INSERT INTO `eh_house_facility` VALUES (1, 13);
INSERT INTO `eh_house_facility` VALUES (2, 13);
INSERT INTO `eh_house_facility` VALUES (2, 14);
INSERT INTO `eh_house_facility` VALUES (2, 15);
INSERT INTO `eh_house_facility` VALUES (1, 16);
INSERT INTO `eh_house_facility` VALUES (2, 16);
INSERT INTO `eh_house_facility` VALUES (1, 17);
INSERT INTO `eh_house_facility` VALUES (1, 18);
INSERT INTO `eh_house_facility` VALUES (1, 20);
INSERT INTO `eh_house_facility` VALUES (1, 21);
INSERT INTO `eh_house_facility` VALUES (1, 22);
INSERT INTO `eh_house_facility` VALUES (1, 23);

-- ----------------------------
-- Table structure for eh_house_image
-- ----------------------------
DROP TABLE IF EXISTS `eh_house_image`;
CREATE TABLE `eh_house_image`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` int(11) NOT NULL,
  `url` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `house_id`(`house_id`) USING BTREE,
  CONSTRAINT `eh_house_image_ibfk_1` FOREIGN KEY (`house_id`) REFERENCES `eh_house_info` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of eh_house_image
-- ----------------------------
INSERT INTO `eh_house_image` VALUES (1, 1, 'FpmZg3Bns1gi-rdPckV3CcknhVRB', '2018-06-20 14:06:28', '2018-06-20 14:06:31');
INSERT INTO `eh_house_image` VALUES (2, 2, 'FudRuZFtsOjYHFo8bMdeeQJPLc5y', '2018-06-20 14:55:38', '2018-06-20 14:55:38');
INSERT INTO `eh_house_image` VALUES (3, 2, 'FhDLsY6zwJoZ8JUs1CwVgsMht9HN', '2018-06-20 14:57:08', '2018-06-20 14:57:08');
INSERT INTO `eh_house_image` VALUES (4, 2, 'FnnSbs-GZVhcR3LCLf2-qV4fIepy', '2018-06-20 14:57:50', '2018-06-20 14:57:50');
INSERT INTO `eh_house_image` VALUES (5, 2, 'Fn9mEbPC8Hq7rcV90NCp8OboNQq-', '2018-06-20 14:58:38', '2018-06-20 14:58:38');
INSERT INTO `eh_house_image` VALUES (6, 2, 'FljtcSYiP1AOopcnZvQVf2yPajz1', '2018-06-20 14:59:10', '2018-06-20 14:59:10');
INSERT INTO `eh_house_image` VALUES (7, 2, 'FhbVNecN1g1PdbnKYBYTe3SWeLE6', '2018-06-20 15:01:48', '2018-06-20 15:01:48');
INSERT INTO `eh_house_image` VALUES (8, 2, 'FqKnmL85CzgpOOdcg4WPyCPz_ire', '2018-06-20 15:04:06', '2018-06-20 15:04:06');
INSERT INTO `eh_house_image` VALUES (9, 1, '14,0,99,25766,1800,1200,4440398c.jpg', '2018-06-20 15:14:47', '2018-06-20 15:14:50');
INSERT INTO `eh_house_image` VALUES (11, 1, '14,0,80,25428,1800,1200,d4f73a35.jpg', '2018-06-20 15:20:19', '2018-06-20 15:20:23');

-- ----------------------------
-- Table structure for eh_house_info
-- ----------------------------
DROP TABLE IF EXISTS `eh_house_info`;
CREATE TABLE `eh_house_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `address` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `room_count` int(11) NULL DEFAULT NULL,
  `acreage` int(11) NULL DEFAULT NULL,
  `unit` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `capacity` int(11) NULL DEFAULT NULL,
  `beds` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deposit` int(11) NULL DEFAULT NULL,
  `min_days` int(11) NULL DEFAULT NULL,
  `max_days` int(11) NULL DEFAULT NULL,
  `order_count` int(11) NULL DEFAULT NULL,
  `index_image_url` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `area_id`(`area_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `eh_house_info_ibfk_1` FOREIGN KEY (`area_id`) REFERENCES `eh_area_info` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `eh_house_info_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `eh_user_profile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of eh_house_info
-- ----------------------------
INSERT INTO `eh_house_info` VALUES (1, 1, 7, '摩登青城-青城山/街子古镇，聚主题独院别墅', 368800, '四川省成都市都江堰市大观镇双凤路5号附近', 7, 500, '7室3厅6卫1厨3阳台', 10, '双人床:2x1.8×4张 单人床:1.2×2×2张', 200000, 1, 0, 0, 'FpmZg3Bns1gi-rdPckV3CcknhVRB', '2018-06-20 13:53:57', '2018-06-20 13:53:57');
INSERT INTO `eh_house_info` VALUES (2, 1, 1, '【邂逅时光·夏】太古里IFS春熙路地铁口套二', 29800, '四川省成都市锦江区锦兴路1号雕墅', 2, 73, '2室1厅1卫1厨1阳台', 5, '双人床:2x1.8x1张 1.5x2x1张', 30000, 1, 0, 0, 'FudRuZFtsOjYHFo8bMdeeQJPLc5y', '2018-06-20 14:51:11', '2018-06-20 14:55:38');

-- ----------------------------
-- Table structure for eh_order_info
-- ----------------------------
DROP TABLE IF EXISTS `eh_order_info`;
CREATE TABLE `eh_order_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `house_id` int(11) NOT NULL,
  `begin_date` datetime(0) NOT NULL,
  `end_date` datetime(0) NOT NULL,
  `days` int(11) NOT NULL,
  `house_price` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` enum('WAIT_ACCEPT','WAIT_PAYMENT','PAID','WAIT_COMMENT','COMPLETE','CANCELED','REJECTED') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `trade_no` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `house_id`(`house_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `ix_eh_order_info_status`(`status`) USING BTREE,
  CONSTRAINT `eh_order_info_ibfk_1` FOREIGN KEY (`house_id`) REFERENCES `eh_house_info` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `eh_order_info_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `eh_user_profile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of eh_order_info
-- ----------------------------
INSERT INTO `eh_order_info` VALUES (13, 2, 2, '2018-06-21 00:00:00', '2018-06-21 00:00:00', 1, 200, 200, 'WAIT_COMMENT', NULL, '2018062121001004730200443124', '2018-06-21 15:55:09', '2018-06-21 20:40:45');

-- ----------------------------
-- Table structure for eh_user_profile
-- ----------------------------
DROP TABLE IF EXISTS `eh_user_profile`;
CREATE TABLE `eh_user_profile`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password_hash` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `real_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_card` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar_url` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `mobile`(`mobile`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of eh_user_profile
-- ----------------------------
INSERT INTO `eh_user_profile` VALUES (1, 'L先森', 'pbkdf2:sha256:50000$lka738T1$c26f4a043491a40d7ebaa03d1b44d0d793a73739cc49f0dbda7d9742479cb8a1', '18086869080', 'L先森', '511002199610154011', 'Fhi4OWPByJdF9mQ26Y1x0wutICTt', '2018-06-19 17:29:22', '2018-06-20 15:57:47');
INSERT INTO `eh_user_profile` VALUES (2, '萍', 'pbkdf2:sha256:50000$2EMcQO4a$1811bb240195a9801ff22d0ac5b0b11a82522a08f7783aa3155ad415d64a329f', '17358688766', NULL, NULL, NULL, '2018-06-21 11:25:11', '2018-06-21 11:25:39');

SET FOREIGN_KEY_CHECKS = 1;
