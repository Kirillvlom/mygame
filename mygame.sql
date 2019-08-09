/*
 Navicat Premium Data Transfer

 Source Server         : win10
 Source Server Type    : MySQL
 Source Server Version : 50643
 Source Host           : localhost:3306
 Source Schema         : mygame

 Target Server Type    : MySQL
 Target Server Version : 50643
 File Encoding         : 65001

 Date: 09/08/2019 12:48:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for questions
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions`  (
  `id_question` int(255) NOT NULL AUTO_INCREMENT,
  `id_topics` int(11) NULL DEFAULT NULL,
  `round` int(11) NULL DEFAULT NULL,
  `picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `audio` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `answers` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `answer` int(11) NULL DEFAULT NULL,
  `ready` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  PRIMARY KEY (`id_question`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of questions
-- ----------------------------
INSERT INTO `questions` VALUES (1, 1, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.Lorem ipsum, dolor sit amet consectetur adipisicing elit.Lorem ipsum, dolor sit amet consectetur adipisicing elit.Lorem ipsum, dolor sit amet consectetur adipisicing elit.Lorem ipsum, dolor sit amet consectetur adipisicing elit.Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question_1.mp3', 100, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '1');
INSERT INTO `questions` VALUES (2, 1, 1, '/img/default/NoPicture.png', '', '', 200, '', NULL, '0');
INSERT INTO `questions` VALUES (3, 1, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 300, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '1');
INSERT INTO `questions` VALUES (4, 1, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 400, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '1');
INSERT INTO `questions` VALUES (5, 1, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 500, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '1');
INSERT INTO `questions` VALUES (6, 2, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 100, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '1');
INSERT INTO `questions` VALUES (7, 2, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '1');
INSERT INTO `questions` VALUES (8, 2, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 300, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '1');
INSERT INTO `questions` VALUES (9, 2, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 400, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '1');
INSERT INTO `questions` VALUES (10, 2, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 500, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '1');
INSERT INTO `questions` VALUES (11, 3, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 100, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '1');
INSERT INTO `questions` VALUES (12, 3, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '1');
INSERT INTO `questions` VALUES (13, 3, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 300, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '1');
INSERT INTO `questions` VALUES (14, 3, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 400, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '1');
INSERT INTO `questions` VALUES (15, 3, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 500, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '1');
INSERT INTO `questions` VALUES (16, 4, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 100, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (17, 4, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (18, 4, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 300, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (19, 4, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 400, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (20, 4, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 500, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (21, 5, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 100, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (22, 5, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (23, 5, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 300, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (24, 5, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 400, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (25, 5, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 500, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (26, 6, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 100, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (27, 6, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (28, 6, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 300, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (29, 6, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 400, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (30, 6, 1, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 500, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (31, 7, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (32, 7, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 400, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (33, 7, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 600, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (34, 7, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 800, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (35, 7, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 1000, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (36, 8, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (37, 8, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 400, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (38, 8, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 600, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (39, 8, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 800, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (40, 8, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 1000, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (41, 9, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (42, 9, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 400, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (43, 9, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 600, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (44, 9, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 800, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (45, 9, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 1000, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (46, 10, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (47, 10, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 400, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (48, 10, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 600, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (49, 10, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 800, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (50, 10, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 1000, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (51, 11, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (52, 11, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 400, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (53, 11, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 600, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (54, 11, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 800, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (55, 11, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 1000, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (56, 12, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (57, 12, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 400, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (58, 12, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 600, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (59, 12, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 800, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (60, 12, 2, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 1000, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (61, 13, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 300, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (62, 13, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 600, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (63, 13, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 900, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (64, 13, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 1200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (65, 13, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 1500, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (66, 14, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 300, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (67, 14, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 600, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (68, 14, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 900, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (69, 14, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 1200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (70, 14, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 1500, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (71, 15, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 300, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (72, 15, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 600, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (73, 15, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 900, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (74, 15, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 1200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (75, 15, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 1500, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (76, 16, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 300, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (77, 16, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 600, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (78, 16, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 900, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (79, 16, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 1200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (80, 16, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 1500, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (81, 17, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 300, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (82, 17, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 600, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (83, 17, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 900, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (84, 17, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 1200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (85, 17, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 1500, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (86, 18, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 300, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (87, 18, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 600, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (88, 18, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 900, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (89, 18, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 1200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (90, 18, 3, '/img/default/NoPicture.png', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', '/audio/question.mp3', 1500, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');

-- ----------------------------
-- Table structure for results
-- ----------------------------
DROP TABLE IF EXISTS `results`;
CREATE TABLE `results`  (
  `id_results` int(255) NOT NULL AUTO_INCREMENT,
  `dateTime` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `player_1` int(255) NULL DEFAULT NULL,
  `player_2` int(255) NULL DEFAULT NULL,
  `player_3` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id_results`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of results
-- ----------------------------
INSERT INTO `results` VALUES (1, '05.08.19 18:36', 7500, 3600, 12500);
INSERT INTO `results` VALUES (2, '2019-08-05 21:07', 500, 400, 0);
INSERT INTO `results` VALUES (3, '2019-08-05 21:08', 700, 400, -4500);
INSERT INTO `results` VALUES (4, '2019-08-05 21:09', 1900, 400, 750);
INSERT INTO `results` VALUES (5, '2019-08-05 21:13', 2300, 1300, 3200);

-- ----------------------------
-- Table structure for topics
-- ----------------------------
DROP TABLE IF EXISTS `topics`;
CREATE TABLE `topics`  (
  `id_topics` int(255) NOT NULL AUTO_INCREMENT,
  `name_topics` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_topics`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of topics
-- ----------------------------
INSERT INTO `topics` VALUES (1, 'Тема 1');
INSERT INTO `topics` VALUES (2, 'Тема 2');
INSERT INTO `topics` VALUES (3, 'Тема 3');
INSERT INTO `topics` VALUES (4, 'Тема 4');
INSERT INTO `topics` VALUES (5, 'Тема 5');
INSERT INTO `topics` VALUES (6, 'Тема 6');
INSERT INTO `topics` VALUES (7, 'Тема 7');
INSERT INTO `topics` VALUES (8, 'Тема 8');
INSERT INTO `topics` VALUES (9, 'Тема 9');
INSERT INTO `topics` VALUES (10, 'Тема 10');
INSERT INTO `topics` VALUES (11, 'Тема 11');
INSERT INTO `topics` VALUES (12, 'Тема 12');
INSERT INTO `topics` VALUES (13, 'Тема 13');
INSERT INTO `topics` VALUES (14, 'Тема 14');
INSERT INTO `topics` VALUES (15, 'Тема 15');
INSERT INTO `topics` VALUES (16, 'Тема 16');
INSERT INTO `topics` VALUES (17, 'Тема 17');
INSERT INTO `topics` VALUES (18, 'Тема 18');

SET FOREIGN_KEY_CHECKS = 1;
