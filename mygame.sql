/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : mygame

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 04/08/2019 15:15:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Questions
-- ----------------------------
DROP TABLE IF EXISTS `Questions`;
CREATE TABLE `Questions`  (
  `id_question` int(255) NOT NULL AUTO_INCREMENT,
  `id_topics` int(11) NULL DEFAULT NULL,
  `round` int(11) NULL DEFAULT NULL,
  `picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `audio` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `answers` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `answer` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_question`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Questions
-- ----------------------------
INSERT INTO `Questions` VALUES (1, 1, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question_1.mp3', 100, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (2, 1, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (3, 1, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 300, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (4, 1, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 400, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (5, 1, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 500, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (6, 2, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 100, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (7, 2, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (8, 2, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 300, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (9, 2, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 400, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (10, 2, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 500, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (11, 3, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 100, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (12, 3, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (13, 3, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 300, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (14, 3, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 400, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (15, 3, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 500, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (16, 4, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 100, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (17, 4, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (18, 4, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 300, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (19, 4, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 400, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (20, 4, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 500, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (21, 5, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 100, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (22, 5, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (23, 5, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 300, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (24, 5, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 400, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (25, 5, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 500, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (26, 6, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 100, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (27, 6, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (28, 6, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 300, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (29, 6, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 400, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (30, 6, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 500, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (31, 7, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (32, 7, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 400, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (33, 7, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 600, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (34, 7, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 800, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (35, 7, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 1000, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (36, 8, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (37, 8, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 400, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (38, 8, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 600, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (39, 8, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 800, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (40, 8, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 1000, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (41, 9, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (42, 9, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 400, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (43, 9, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 600, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (44, 9, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 800, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (45, 9, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 1000, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (46, 10, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (47, 10, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 400, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (48, 10, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 600, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (49, 10, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 800, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (50, 10, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 1000, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (51, 11, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (52, 11, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 400, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (53, 11, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 600, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (54, 11, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 800, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (55, 11, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 1000, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (56, 12, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (57, 12, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 400, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (58, 12, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 600, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (59, 12, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 800, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (60, 12, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 1000, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (61, 13, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 300, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (62, 13, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 600, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (63, 13, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 900, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (64, 13, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 1200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (65, 13, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 1500, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (66, 14, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 300, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (67, 14, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 600, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (68, 14, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 900, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (69, 14, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 1200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (70, 14, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 1500, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (71, 15, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 300, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (72, 15, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 600, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (73, 15, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 900, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (74, 15, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 1200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (75, 15, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 1500, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (76, 16, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 300, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (77, 16, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 600, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (78, 16, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 900, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (79, 16, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 1200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (80, 16, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 1500, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (81, 17, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 300, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (82, 17, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 600, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (83, 17, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 900, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (84, 17, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 1200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (85, 17, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 1500, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (86, 18, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 300, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (87, 18, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 600, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (88, 18, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 900, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (89, 18, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 1200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);
INSERT INTO `Questions` VALUES (90, 18, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 1500, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3);

-- ----------------------------
-- Table structure for Topics
-- ----------------------------
DROP TABLE IF EXISTS `Topics`;
CREATE TABLE `Topics`  (
  `id_topics` int(255) NOT NULL AUTO_INCREMENT,
  `name_topics` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_topics`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Topics
-- ----------------------------
INSERT INTO `Topics` VALUES (1, 'Тема 1');
INSERT INTO `Topics` VALUES (2, 'Тема 2');
INSERT INTO `Topics` VALUES (3, 'Тема 3');
INSERT INTO `Topics` VALUES (4, 'Тема 4');
INSERT INTO `Topics` VALUES (5, 'Тема 5');
INSERT INTO `Topics` VALUES (6, 'Тема 6');
INSERT INTO `Topics` VALUES (7, 'Тема 7');
INSERT INTO `Topics` VALUES (8, 'Тема 8');
INSERT INTO `Topics` VALUES (9, 'Тема 9');
INSERT INTO `Topics` VALUES (10, 'Тема 10');
INSERT INTO `Topics` VALUES (11, 'Тема 11');
INSERT INTO `Topics` VALUES (12, 'Тема 12');
INSERT INTO `Topics` VALUES (13, 'Тема 13');
INSERT INTO `Topics` VALUES (14, 'Тема 14');
INSERT INTO `Topics` VALUES (15, 'Тема 15');
INSERT INTO `Topics` VALUES (16, 'Тема 16');
INSERT INTO `Topics` VALUES (17, 'Тема 17');
INSERT INTO `Topics` VALUES (18, 'Тема 18');

SET FOREIGN_KEY_CHECKS = 1;
