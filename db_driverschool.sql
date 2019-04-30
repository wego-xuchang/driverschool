/*
 Navicat Premium Data Transfer

 Source Server         : con
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : db_driverschool

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 15/12/2018 20:36:00
*/

drop database if exists `db_driverschool`;
create database `db_driverschool`;
-- 使用数据库
use db_driverschool;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `admin_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('95C706E690B7446BB31AF42C72B0DE87', '管理员', 'aaaa', 'xuchang1@xu.com', '15813058131');

-- ----------------------------
-- Table structure for mark
-- ----------------------------
DROP TABLE IF EXISTS `mark`;
CREATE TABLE `mark`  (
  `mark_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trainee_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mark` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `testTime` date NULL DEFAULT NULL,
  PRIMARY KEY (`mark_id`) USING BTREE,
  INDEX `mark_fk_01`(`trainee_id`) USING BTREE,
  CONSTRAINT `mark_fk_01` FOREIGN KEY (`trainee_id`) REFERENCES `trainee` (`trainee_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `question_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `q_type` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `categor` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `optionA` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `optionB` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `optionC` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `optionD` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `optionImg` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tips` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `answer` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `explain` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`question_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', 0, '驾驶机动车在道路上违反道路交通安全法的行为，属于什么行为？', '科目一', '对', '错', '', '', 'images/nav14.png', '提示', 'B', '“违反道路交通安全法”，违反法律法规即为违法行为。官方已无违章/违规的说法。');
INSERT INTO `question` VALUES ('10', 0, '驾驶机动车在道路上违反道路交通安全法的行为，属于什么行为？', '科目一', '对', '错', '', '', '', '提示', 'B', '违反道路交通安全法，违反法律法规即为违法行为。官方已无违章/违规的说法。');
INSERT INTO `question` VALUES ('11', 0, '驾驶机动车在道路上违反道路交通安全法的行为，属于什么行为？', '科目一', '对', '错', '', '', '', '提示', 'B', '违反道路交通安全法，违反法律法规即为违法行为。官方已无违章/违规的说法。');
INSERT INTO `question` VALUES ('12', 0, '驾驶机动车在道路上违反道路交通安全法的行为，属于什么行为？', '科目一', '对', '错', '', '', 'images/nav14.png', '提示', 'B', '违反道路交通安全法，违反法律法规即为违法行为。官方已无违章/违规的说法。');
INSERT INTO `question` VALUES ('13', 0, '驾驶机动车在道路上违反道路交通安全法的行为，属于什么行为？', '科目一', '对', '错', '', '', '', '提示', 'B', '违反道路交通安全法，违反法律法规即为违法行为。官方已无违章/违规的说法。');
INSERT INTO `question` VALUES ('14', 0, '驾驶机动车在道路上违反道路交通安全法的行为，属于什么行为？', '科目一', '对', '错', '', '', '', '提示', 'B', '违反道路交通安全法，违反法律法规即为违法行为。官方已无违章/违规的说法。');
INSERT INTO `question` VALUES ('15', 0, '驾驶机动车在道路上违反道路交通安全法的行为，属于什么行为？', '科目一', '对', '错', '', '', 'images/nav14.png', '提示', 'B', '违反道路交通安全法，违反法律法规即为违法行为。官方已无违章/违规的说法。');
INSERT INTO `question` VALUES ('16', 0, '驾驶机动车在道路上违反道路交通安全法的行为，属于什么行为？', '科目四', '对', '错', '', '', 'images/nav14.png', '提示', 'B', '违反道路交通安全法，违反法律法规即为违法行为。官方已无违章/违规的说法。');
INSERT INTO `question` VALUES ('17', 1, '驾驶机动车在道路上违反道路交通安全法的行为，属于什么行为？', '科目一', '违章行为', '违法行为', '过失行为', '违规行为', '', '提示', 'B', '违反道路交通安全法，违反法律法规即为违法行为。官方已无违章/违规的说法。');
INSERT INTO `question` VALUES ('18', 1, '驾驶机动车在道路上违反道路交通安全法的行为，属于什么行为？', '科目一', '违章行为', '违法行为', '过失行为', '违规行为', '', '提示', 'B', '违反道路交通安全法，违反法律法规即为违法行为。官方已无违章/违规的说法。');
INSERT INTO `question` VALUES ('19', 1, '驾驶机动车在道路上违反道路交通安全法的行为，属于什么行为？', '科目四', '违章行为', '违法行为', '过失行为', '违规行为', '', '提示', 'B', '违反道路交通安全法，违反法律法规即为违法行为。官方已无违章/违规的说法。');
INSERT INTO `question` VALUES ('2', 0, '驾驶机动车在道路上违反道路交通安全法的行为，属于什么行为？', '科目一', '对', '错', '', '', 'images/nav14.png', '提示', 'B', '违反道路交通安全法，违反法律法规即为违法行为。官方已无违章/违规的说法。');
INSERT INTO `question` VALUES ('20', 1, '驾驶机动车在道路上违反道路交通安全法的行为，属于什么行为？', '科目一', '违章行为', '违法行为', '过失行为', '违规行为', '', '提示', 'B', '违反道路交通安全法，违反法律法规即为违法行为。官方已无违章/违规的说法。');
INSERT INTO `question` VALUES ('21', 1, '驾驶机动车在道路上违反道路交通安全法的行为，属于什么行为？', '科目一', '违章行为', '违法行为', '过失行为', '违规行为', '', '提示', 'B', '违反道路交通安全法，违反法律法规即为违法行为。官方已无违章/违规的说法。');
INSERT INTO `question` VALUES ('22', 1, '驾驶机动车在道路上违反道路交通安全法的行为，属于什么行为？', '科目一', '违章行为', '违法行为', '过失行为', '违规行为', '', '提示', 'B', '违反道路交通安全法，违反法律法规即为违法行为。官方已无违章/违规的说法。');
INSERT INTO `question` VALUES ('2D041C6A1EA44D0AB0989A87C59C0A51', 0, '啊啊啊啊啊啊大大大大大大的', '科目三', '你好', '你好1', '你好2', '你好3', 'upload/questionImages/4/d/74739671FE76456981A19AEE062C7301.jpg', NULL, 'D', '爱迪生大所大所所多');
INSERT INTO `question` VALUES ('3', 1, '驾驶机动车在道路上违反道路交通安全法的行为，属于什么行为？', '科目一', '违章行为', '违法行为', '过失行为', '违规行为', 'images/nav16.png', '提示', 'B', '违反道路交通安全法，违反法律法规即为违法行为。官方已无违章/违规的说法。');
INSERT INTO `question` VALUES ('4', 1, '驾驶机动车在道路上违反道路交通安全法的行为，属于什么行为？', '科目一', '违章行为', '违法行为', '过失行为', '违规行为', 'images/nav16.png', '提示', 'B', '违反道路交通安全法，违反法律法规即为违法行为。官方已无违章/违规的说法。');
INSERT INTO `question` VALUES ('5', 1, '驾驶机动车在道路上违反道路交通安全法的行为，属于什么行为？', '科目一', '违章行为', '违法行为', '过失行为', '违规行为', 'images/nav16.png', '提示', 'B', '违反道路交通安全法，违反法律法规即为违法行为。官方已无违章/违规的说法。');
INSERT INTO `question` VALUES ('6', 1, '驾驶机动车在道路上违反道路交通安全法的行为，属于什么行为？', '科目一', '违章行为', '违法行为', '过失行为', '违规行为', 'images/nav16.png', '提示', 'B', '“违反道路交通安全法”，违反法律法规即为违法行为。官方已无违章/违规的说法。');
INSERT INTO `question` VALUES ('7', 1, '驾驶机动车在道路上违反道路交通安全法的行为，属于什么行为？', '科目一', '违章行为', '违法行为', '过失行为', '违规行为', 'images/nav16.png', '提示', 'B', '“违反道路交通安全法”，违反法律法规即为违法行为。官方已无违章/违规的说法。');
INSERT INTO `question` VALUES ('8', 1, '驾驶机动车在道路上违反道路交通安全法的行为，属于什么行为？', '科目一', '违章行为', '违法行为', '过失行为', '违规行为', 'images/nav16.png', '提示', 'B', '“违反道路交通安全法”，违反法律法规即为违法行为。官方已无违章/违规的说法。');
INSERT INTO `question` VALUES ('9', 0, '驾驶机动车在道路上违反道路交通安全法的行为，属于什么行为？', '科目一', '违章行为', '违法行为', '过失行为', '违规行为', '', '提示', 'B', '“违反道路交通安全法”，违反法律法规即为违法行为。官方已无违章/违规的说法。');

-- ----------------------------
-- Table structure for school
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school`  (
  `school_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `school_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `position` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `introduce` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`school_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of school
-- ----------------------------
INSERT INTO `school` VALUES ('01', '华软驾校', '广州从化太平', 'helloworld');
INSERT INTO `school` VALUES ('02', '驾校1', '广州从化太平', 'aa');
INSERT INTO `school` VALUES ('03', '驾校2', '广州从化太平', 'aasss');

-- ----------------------------
-- Table structure for trainee
-- ----------------------------
DROP TABLE IF EXISTS `trainee`;
CREATE TABLE `trainee`  (
  `trainee_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trainee_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_card` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trainee_img` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_card_img` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` int(11) NULL DEFAULT 0,
  `telephone` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `position` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pass_test` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `school_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trainer_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tuition` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `registrationDate` date NULL DEFAULT NULL,
  `graduationTime` date NULL DEFAULT NULL,
  `trainee_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`trainee_id`) USING BTREE,
  INDEX `trainee_01`(`trainer_id`) USING BTREE,
  INDEX `trainee_02`(`school_id`) USING BTREE,
  CONSTRAINT `trainee_01` FOREIGN KEY (`trainer_id`) REFERENCES `trainer` (`trainer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `trainee_02` FOREIGN KEY (`school_id`) REFERENCES `school` (`school_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of trainee
-- ----------------------------
INSERT INTO `trainee` VALUES ('20A42D8744554E609C55BCE340ADBB02', '你好吗123abc', 'aaaa', 'xuchang10@xu.com', NULL, NULL, NULL, 1, '15813058131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trainee` VALUES ('2C3EEA549B314ECA8EC0BA619D0FB631', 'hello', 'aaaa', 'xuchang9@xu.com', '', NULL, 'upload/trainee/2/e/83A3291374D247CBB96B1977F130F1D5.jpg', 1, '13450125527', '男', '北京', NULL, '02', '32C2E23340924EFBA0BBC4E20066411B', NULL, '2018-01-03', NULL, NULL);
INSERT INTO `trainee` VALUES ('3D309C2F07804C70B36ECDB1F95D77CC', 'xuchang1', 'aaaa', 'xuchang2@xu.com', NULL, 'images/man.png', NULL, 1, '13450125526', '男', '广东广州', NULL, '01', '32C2E23340924EFBA0BBC4E20066411B', NULL, '2018-01-01', NULL, NULL);
INSERT INTO `trainee` VALUES ('4D99408E44A5452ABC67614AE3D43854', '你好吗？123abc', 'aaaa', 'xuchang8@xu.com', NULL, NULL, NULL, 1, '15813058131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trainee` VALUES ('50E8C4DD46C1478589DD64F8EF0DB6B4', 'NI你好123', 'aaaa', 'xuchang11@xu.com', NULL, NULL, NULL, 1, '15813058131', NULL, NULL, NULL, '01', '751EFA27EEE04E40959BFA8BCB697545', NULL, NULL, NULL, NULL);
INSERT INTO `trainee` VALUES ('8E1E05B0A0B0467EABAA760085B647B4', 'xuchang2', 'aaaa', 'xuchang3@xu.com', NULL, 'images/man.png', NULL, 1, '13800138001', '男', '广东茂名', NULL, '01', '32C2E23340924EFBA0BBC4E20066411B', NULL, '2018-01-01', NULL, '4A1804B150F44B4FB5E2969CB3B4666A');
INSERT INTO `trainee` VALUES ('95C706E690B7446BB31AF42C72B0DE87', 'xuchang3', 'aaaa', 'xuchang2@xu.com', '1111111111111112', 'images/man.png', 'images/nav2.png', 2, '15813058131', '男', '广东茂名', NULL, '01', '32C2E23340924EFBA0BBC4E20066411B', '5000', '2018-01-03', NULL, NULL);
INSERT INTO `trainee` VALUES ('9FE8492A85AB4D51B4A9B278ED0FA927', 'xuchang4', 'aaaa', 'xuchang5@xu.com', NULL, 'images/man.png', '', 1, '13800138000', '男', '广东茂名', NULL, '01', '751EFA27EEE04E40959BFA8BCB697545', NULL, '2018-01-01', NULL, NULL);
INSERT INTO `trainee` VALUES ('B88E6755DA8B48A1BD0BB19C94EE3FCD', '许昌', 'aaaa', 'xuchang1@xu.com', '1111111111111111111', NULL, 'upload/trainee/3/6/B93492C37F4B4835B6E5678B17FA4DED.jpg', 1, '15813058131', '', '广东茂名', NULL, '02', '32C2E23340924EFBA0BBC4E20066411B', NULL, '2018-01-02', NULL, NULL);
INSERT INTO `trainee` VALUES ('EC9FCEEBA2C14936911CA4057347E1C2', 'xuchang5', 'aaaa', 'trainer1@xu.com', NULL, 'images/man.png', NULL, 0, '15813058130', '男', '广东茂名', NULL, '01', '751EFA27EEE04E40959BFA8BCB697545', NULL, '2018-01-01', NULL, '8532BA72E41440319EF998EA8276C402');

-- ----------------------------
-- Table structure for trainer
-- ----------------------------
DROP TABLE IF EXISTS `trainer`;
CREATE TABLE `trainer`  (
  `trainer_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trainer_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trainer_img` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_card` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_card_img` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `car_img` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` int(11) NULL DEFAULT 0,
  `telephone` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `position` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trainer_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `school_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `entry_time` date NULL DEFAULT NULL,
  `trainer_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`trainer_id`) USING BTREE,
  INDEX `trainer_01`(`school_id`) USING BTREE,
  CONSTRAINT `fk_trainer_01` FOREIGN KEY (`school_id`) REFERENCES `school` (`school_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of trainer
-- ----------------------------
INSERT INTO `trainer` VALUES ('32C2E23340924EFBA0BBC4E20066411B', '教练11', 'aaaa', 'xuchang1@xu.com', 'images/man.png', NULL, NULL, NULL, 2, '15813058130', NULL, NULL, '教练', '02', NULL, '7264C0DAA64347D09989E1AFE09B3E98');
INSERT INTO `trainer` VALUES ('751EFA27EEE04E40959BFA8BCB697545', '教练12', 'aaaa', 'xuchang2@xu.com', 'images/man.png', '11111111111111', 'images/nav2.png', 'images/nav2.png', 2, '13800138000', '男', '广东茂名', '教练', '01', '2018-01-01', NULL);
INSERT INTO `trainer` VALUES ('aaa', 'aaaa', 'aaaa', 'xuchang3@xu.com', 'images/man.png', NULL, NULL, NULL, 3, '15813058131', NULL, NULL, '教练', '01', NULL, NULL);
INSERT INTO `trainer` VALUES ('EE36AD38C06A466280041F8835F185E6', 'xuchang666', 'aaaa', 'xuchang1@xu.com', 'images/man.png', '11111111111112', 'images/nav2.png', 'images/nav2.png', 3, '15813058131', ' 男', '广东茂名', '教练', '01', '2018-01-03', NULL);

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `video_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `video_url` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `video_author` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `video_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `video_title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `video_introduce` varchar(1020) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `video_img` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `video_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `upload_time` date NULL DEFAULT NULL,
  PRIMARY KEY (`video_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('01', 'https://quirksmode.org/html5/videos/big_buck_bunny.mp4', '管理员1', '科目二', '武动乾坤之冰心在玉壶(第4集)', '武动乾坤之冰心在玉壶(第6集) 导演: 张黎 主演: 杨洋 / 张天爱 / 吴尊 / 王丽坤 / 释小龙 / 柳岩 / 索笑坤 / 董晴 地区: 内地 简介: 该剧改编自天蚕土豆的同名网络小说，讲述了小镇家族中不受宠的边缘子弟林动，经历无数艰难险阻，一步步战胜奸邪恶人，最终蜕变成长为救世大英雄并收获爱情和友情的热血励志故事 。', 'images/nav16.png', '视频类型', '2018-01-01');
INSERT INTO `video` VALUES ('02', 'https://quirksmode.org/html5/videos/big_buck_bunny.mp4', '管理员2', '科目一', '武动乾坤之冰心在玉壶(第6集)', '武动乾坤之冰心在玉壶(第6集) 导演: 张黎 主演: 杨洋 / 张天爱 / 吴尊 / 王丽坤 / 释小龙 / 柳岩 / 索笑坤 / 董晴 地区: 内地 简介: 该剧改编自天蚕土豆的同名网络小说，讲述了小镇家族中不受宠的边缘子弟林动，经历无数艰难险阻，一步步战胜奸邪恶人，最终蜕变成长为救世大英雄并收获爱情和友情的热血励志故事 。', 'images/nav16.png', '视频类型', '2018-01-01');
INSERT INTO `video` VALUES ('03', 'https://quirksmode.org/html5/videos/big_buck_bunny.mp4', '管理员3', '科目二', '武动乾坤之冰心在玉壶(第6集)', '武动乾坤之冰心在玉壶(第6集) 导演: 张黎 主演: 杨洋 / 张天爱 / 吴尊 / 王丽坤 / 释小龙 / 柳岩 / 索笑坤 / 董晴 地区: 内地 简介: 该剧改编自天蚕土豆的同名网络小说，讲述了小镇家族中不受宠的边缘子弟林动，经历无数艰难险阻，一步步战胜奸邪恶人，最终蜕变成长为救世大英雄并收获爱情和友情的热血励志故事 。', 'images/nav14.png', '视频类型', '2018-01-01');
INSERT INTO `video` VALUES ('04', 'https://quirksmode.org/html5/videos/big_buck_bunny.mp4', '管理员4', '科目三', '武动乾坤之冰心在玉壶(第6集)', '武动乾坤之冰心在玉壶(第6集) 导演: 张黎 主演: 杨洋 / 张天爱 / 吴尊 / 王丽坤 / 释小龙 / 柳岩 / 索笑坤 / 董晴 地区: 内地 简介: 该剧改编自天蚕土豆的同名网络小说，讲述了小镇家族中不受宠的边缘子弟林动，经历无数艰难险阻，一步步战胜奸邪恶人，最终蜕变成长为救世大英雄并收获爱情和友情的热血励志故事 。', 'images/nav16.png', '视频类型', '2018-01-01');
INSERT INTO `video` VALUES ('05', 'https://quirksmode.org/html5/videos/big_buck_bunny.mp4', '管理员1', '科目二', '武动乾坤之冰心在玉壶(第7集)', '武动乾坤之冰心在玉壶(第6集) 导演: 张黎 主演: 杨洋 / 张天爱 / 吴尊 / 王丽坤 / 释小龙 / 柳岩 / 索笑坤 / 董晴 地区: 内地 简介: 该剧改编自天蚕土豆的同名网络小说，讲述了小镇家族中不受宠的边缘子弟林动，经历无数艰难险阻，一步步战胜奸邪恶人，最终蜕变成长为救世大英雄并收获爱情和友情的热血励志故事 。', 'images/nav15.png', '视频类型', '2018-01-01');
INSERT INTO `video` VALUES ('06', 'https://quirksmode.org/html5/videos/big_buck_bunny.mp4', '管理员1', '科目二', '武动乾坤之冰心在玉壶(第9集)', '武动乾坤之冰心在玉壶(第6集) 导演: 张黎 主演: 杨洋 / 张天爱 / 吴尊 / 王丽坤 / 释小龙 / 柳岩 / 索笑坤 / 董晴 地区: 内地 简介: 该剧改编自天蚕土豆的同名网络小说，讲述了小镇家族中不受宠的边缘子弟林动，经历无数艰难险阻，一步步战胜奸邪恶人，最终蜕变成长为救世大英雄并收获爱情和友情的热血励志故事 。', 'images/nav14.png', '视频类型', '2018-01-01');
INSERT INTO `video` VALUES ('07', 'https://quirksmode.org/html5/videos/big_buck_bunny.mp4', '管理员1', '科目二', '武动乾坤之冰心在玉壶(第6集)', '武动乾坤之冰心在玉壶(第6集) 导演: 张黎 主演: 杨洋 / 张天爱 / 吴尊 / 王丽坤 / 释小龙 / 柳岩 / 索笑坤 / 董晴 地区: 内地 简介: 该剧改编自天蚕土豆的同名网络小说，讲述了小镇家族中不受宠的边缘子弟林动，经历无数艰难险阻，一步步战胜奸邪恶人，最终蜕变成长为救世大英雄并收获爱情和友情的热血励志故事 。', 'images/nav15.png', '视频类型', '2018-01-01');
INSERT INTO `video` VALUES ('08', 'https://quirksmode.org/html5/videos/big_buck_bunny.mp4', '管理员1', '科目二', '武动乾坤之冰心在玉壶(第3集)', '武动乾坤之冰心在玉壶(第6集) 导演: 张黎 主演: 杨洋 / 张天爱 / 吴尊 / 王丽坤 / 释小龙 / 柳岩 / 索笑坤 / 董晴 地区: 内地 简介: 该剧改编自天蚕土豆的同名网络小说，讲述了小镇家族中不受宠的边缘子弟林动，经历无数艰难险阻，一步步战胜奸邪恶人，最终蜕变成长为救世大英雄并收获爱情和友情的热血励志故事 。', 'images/nav14.png', '视频类型', '2018-01-01');
INSERT INTO `video` VALUES ('09', 'https://quirksmode.org/html5/videos/big_buck_bunny.mp4', '管理员1', '科目二', '武动乾坤之冰心在玉壶(第6集)', '武动乾坤之冰心在玉壶(第6集) 导演: 张黎 主演: 杨洋 / 张天爱 / 吴尊 / 王丽坤 / 释小龙 / 柳岩 / 索笑坤 / 董晴 地区: 内地 简介: 该剧改编自天蚕土豆的同名网络小说，讲述了小镇家族中不受宠的边缘子弟林动，经历无数艰难险阻，一步步战胜奸邪恶人，最终蜕变成长为救世大英雄并收获爱情和友情的热血励志故事 。', 'images/nav14.png', '视频类型', '2018-01-01');

-- ----------------------------
-- Table structure for videolook
-- ----------------------------
DROP TABLE IF EXISTS `videolook`;
CREATE TABLE `videolook`  (
  `video_look_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `video_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trainee_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trainer_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `look_time` date NULL DEFAULT NULL,
  PRIMARY KEY (`video_look_id`) USING BTREE,
  INDEX `video_fk_01`(`video_id`) USING BTREE,
  INDEX `video_fk_02`(`trainee_id`) USING BTREE,
  INDEX `video_fk_03`(`trainer_id`) USING BTREE,
  CONSTRAINT `video_fk_01` FOREIGN KEY (`video_id`) REFERENCES `video` (`video_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `video_fk_02` FOREIGN KEY (`trainee_id`) REFERENCES `trainee` (`trainee_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `video_fk_03` FOREIGN KEY (`trainer_id`) REFERENCES `trainer` (`trainer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
