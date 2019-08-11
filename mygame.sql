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

 Date: 11/08/2019 21:09:01
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
INSERT INTO `questions` VALUES (1, 1, 1, '/img/question_1.jpg', 'Разрешен ли Вам разворот на указанном участке дороги?', '/audio/question_1.mp3', 100, 'a:4:{i:0;s:22:\"Не разрешен.\";i:1;s:87:\"Разрешен только при видимости дороги более 100 м.\";i:2;s:17:\"Разрешен.\";i:3;s:86:\"Разрешен только при видимости дороги более 50 м.\";}', 2, '1');
INSERT INTO `questions` VALUES (2, 1, 1, '/img/question_2.jpg', 'Какой из знаков обозначает пешеходную дорожку?', NULL, 200, 'a:4:{i:0;s:18:\"Все знаки.\";i:1;s:22:\"Только Б и В.\";i:2;s:16:\"Только Б.\";i:3;s:14:\"Никакой\";}', 3, '1');
INSERT INTO `questions` VALUES (3, 1, 1, '/img/question_3.jpg', 'Сколько пересечений проезжих частей имеет этот перекресток?', NULL, 300, 'a:4:{i:0;s:13:\"Четыре.\";i:1;s:7:\"Два.\";i:2;s:9:\"Одно.\";i:3;s:13:\"Восемь.\";}', 2, '1');
INSERT INTO `questions` VALUES (4, 1, 1, '/img/question_4.jpg', 'В каком случае на автомагистрали Вам разрешено остановиться правее линии, обозначающей край проезжей части?', NULL, 400, 'a:4:{i:0;s:53:\"Только в светлое время суток.\";i:1;s:27:\"В любом случае.\";i:2;s:71:\"Только в случае вынужденной остановки.\";i:3;s:51:\"Только в темное время суток.\";}', 3, '1');
INSERT INTO `questions` VALUES (5, 1, 1, '/img/question_5.jpg', 'На каких рисунках показана главная дорога?', NULL, 500, 'a:4:{i:0;s:46:\"Только на правом верхнем.\";i:1;s:44:\"Только на левом верхнем.\";i:2;s:14:\"На всех.\";i:3;s:33:\"Только на верхних.\";}', 4, '1');
INSERT INTO `questions` VALUES (6, 2, 1, NULL, 'Биополимером не является:', NULL, 100, 'a:4:{i:0;s:10:\"белок\";i:1;s:6:\"ДНК\";i:2;s:14:\"глюкоза\";i:3;s:14:\"крахмал\";}', 3, '1');
INSERT INTO `questions` VALUES (7, 2, 1, NULL, 'Постоянство внутренней среды организма обозначается термином', NULL, 200, 'a:4:{i:0;s:20:\"гомозигота\";i:1;s:18:\"гомеостаз\";i:2;s:16:\"гемостаз\";i:3;s:22:\"гомеоморфия\";}', 2, '1');
INSERT INTO `questions` VALUES (8, 2, 1, NULL, 'Учение о биосфере было создано', NULL, 300, 'a:4:{i:0;s:46:\"Н.В. Тимофеевым-Ресовским\";i:1;s:25:\"Л.Н. Гумилевым\";i:2;s:27:\"В.И. Вернадским\";i:3;s:25:\"А.Л. Чижевским\";}', 3, '1');
INSERT INTO `questions` VALUES (9, 2, 1, NULL, 'С помощью митоза не делятся клетки:', NULL, 400, 'a:4:{i:0;s:16:\"бактерий\";i:1;s:12:\"грибов\";i:2;s:20:\"простейших\";i:3;s:16:\"растений\";}', 1, '1');
INSERT INTO `questions` VALUES (10, 2, 1, NULL, 'Гаструляция — это процесс образования ...', NULL, 500, 'a:4:{i:0;s:43:\"многослойного зародыша\";i:1;s:12:\"зиготы\";i:2;s:47:\"многоклеточного зародыша\";i:3;s:27:\"половых клеток\";}', 1, '1');
INSERT INTO `questions` VALUES (11, 3, 1, NULL, 'По степени самостоятельности учащихся при выполнении упражнений выделяют упражнения:', NULL, 100, 'a:4:{i:0;s:34:\"устные, письменные\";i:1;s:58:\"воспроизводящие, тренировочные\";i:2;s:54:\"продуктивные, репродуктивные\";i:3;s:53:\"графические, учебно-трудовые\";}', 2, '1');
INSERT INTO `questions` VALUES (12, 3, 1, NULL, 'Если учитель предпочитает собственные, свернутые, схематичные планы, оставляющие возможность экспромта, то он относится к группе:', NULL, 200, 'a:4:{i:0;s:2:\"SP\";i:1;s:2:\"NF\";i:2;s:2:\"SJ\";i:3;s:2:\"NT\";}', 2, '1');
INSERT INTO `questions` VALUES (13, 3, 1, NULL, 'Усвоение человеком норм, эталонов поведения, взглядов, которые характерны для его семьи и ближайшего окружения представляет собой ...\n', NULL, 300, 'a:4:{i:0;s:66:\"традиционный механизм социализации\";i:1;s:68:\"стилизованный механизм социализации\";i:2;s:76:\"институциональный механизм социализации\";i:3;s:68:\"межличностный механизм социализации\";}', 1, '1');
INSERT INTO `questions` VALUES (14, 3, 1, NULL, 'Если к достижению цели учитель идет через создание у учащихся положительной мотивации, то он относится к группе:', NULL, 400, 'a:4:{i:0;s:2:\"NT\";i:1;s:2:\"SP\";i:2;s:2:\"NF\";i:3;s:2:\"SJ\";}', 3, '1');
INSERT INTO `questions` VALUES (15, 3, 1, NULL, 'Тактика невмешательства, основу которой составляют равнодушие и незаинтересованность проблемами как школы, так и учащихся, сопровождается стилем общен', NULL, 500, 'a:4:{i:0;s:30:\"гуманистическим\";i:1;s:30:\"попустительским\";i:2;s:30:\"демократическим\";i:3;s:24:\"авторитарным\";}', 2, '1');
INSERT INTO `questions` VALUES (16, 4, 1, '/img/question_16.jpg', 'Если звездный период обращения Юпитера вокруг Солнца составляет 12 лет, то среднее расстояние от Юпитера до Солнца составляет:', NULL, 100, 'a:4:{i:0;s:10:\"5,0 а.е.\";i:1;s:10:\"5,6 а.е.\";i:2;s:10:\"5,2 а.е.\";i:3;s:10:\"4,8 а.е.\";}', 3, '1');
INSERT INTO `questions` VALUES (17, 4, 1, NULL, 'При удалении наблюдателя от источника света линии спектра ...', NULL, 200, 'a:4:{i:0;s:25:\"не изменяются\";i:1;s:56:\"смещаются к его красному концу\";i:2;s:33:\"становятся белыми\";i:3;s:62:\"смещаются к его фиолетовому концу\";}', 2, '1');
INSERT INTO `questions` VALUES (18, 4, 1, '/img/question_18.jpg', 'Если расстояние от Земли до Луны в перигее составляет 363 тыс. км, то горизонтальный параллакс Луны составит:', NULL, 300, 'a:4:{i:0;s:3:\"1°\";i:1;s:5:\"1,2°\";i:2;s:6:\"0,52°\";i:3;s:5:\"0,5°\";}', 1, '1');
INSERT INTO `questions` VALUES (19, 4, 1, '/img/question_19.jpg', 'Ближайшее полное затмение Солнца, которое можно будет наблюдать в Москве, произойдет в:', NULL, 400, 'a:4:{i:0;s:13:\"2126 году\";i:1;s:13:\"2056 году\";i:2;s:13:\"2032 году\";i:3;s:13:\"2095 году\";}', 1, '1');
INSERT INTO `questions` VALUES (20, 4, 1, NULL, 'В 1922 году все небо было разделено на 88 созвездий, из них ... (число) находится в северной полусфере, (...) в южной, а остальные (...) расположены п', NULL, 500, 'a:4:{i:0;s:10:\"40, 32, 16\";i:1;s:9:\"32, 48, 8\";i:2;s:9:\"48, 31, 9\";i:3;s:9:\"31, 48, 9\";}', 4, '1');
INSERT INTO `questions` VALUES (21, 5, 1, '/img/question_21.jpg', 'Программами векторной графики являются, из перечисленного:', NULL, 100, 'a:4:{i:0;s:14:\"Paint Shop Pro\";i:1;s:19:\"Microsoft PhotoDraw\";i:2;s:17:\"Adobe Illustrator\";i:3;s:8:\"paint 3D\";}', 3, '1');
INSERT INTO `questions` VALUES (22, 5, 1, NULL, 'Векторные программы обычно используются:', NULL, 200, 'a:4:{i:0;s:57:\"для обработки сканерного ввода\";i:1;s:83:\"для создания фотореалистических изображений\";i:2;s:77:\"когда необходимо применение спецэффектов\";i:3;s:45:\"когда нужны четкие линии\";}', 4, '1');
INSERT INTO `questions` VALUES (23, 5, 1, NULL, 'Объекты обладают по отношению к свету свойствами, из перечисленного:', NULL, 300, 'a:4:{i:0;s:35:\"изменением спектра\";i:1;s:26:\"прозрачностью\";i:2;s:20:\"излучением\";i:3;s:32:\"индеферентностью\";}', 4, '1');
INSERT INTO `questions` VALUES (24, 5, 1, NULL, 'Наиболее популярной единицей измерения разрешающей способности является:', NULL, 400, 'a:4:{i:0;s:6:\"бод\";i:1;s:3:\"dpi\";i:2;s:4:\"mips\";i:3;s:5:\"мм2\";}', 2, '1');
INSERT INTO `questions` VALUES (25, 5, 1, NULL, 'Разрешающую способность измеряют:', NULL, 500, 'a:4:{i:0;s:31:\"размером пиксела\";i:1;s:70:\"количеством пикселов на единицу длины\";i:2;s:67:\"количеством пикселов по горизонтали\";i:3;s:63:\"количеством пикселов по вертикали\";}', 2, '1');
INSERT INTO `questions` VALUES (26, 6, 1, NULL, 'Im sure they to do it (поставьте подчеркнутый глагол в будущее время)', NULL, 100, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '1');
INSERT INTO `questions` VALUES (27, 6, 1, NULL, 'I ... very happy to be here with you. (insert the verb to be in the correct form)', NULL, 200, 'a:4:{i:0;s:3:\"are\";i:1;s:2:\"am\";i:2;s:2:\"is\";i:3;s:2:\"be\";}', 2, '1');
INSERT INTO `questions` VALUES (28, 6, 1, NULL, 'Что ты видишь? (translate into English)', NULL, 300, 'a:4:{i:0;s:16:\"What do you see?\";i:1;s:18:\"What dont you see?\";i:2;s:9:\"What see?\";i:3;s:19:\"What does you seen?\";}', 1, '1');
INSERT INTO `questions` VALUES (29, 6, 1, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 400, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (30, 6, 1, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 500, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (31, 7, 2, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (32, 7, 2, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 400, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '1');
INSERT INTO `questions` VALUES (33, 7, 2, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 600, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (34, 7, 2, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 800, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (35, 7, 2, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 1000, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (36, 8, 2, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (37, 8, 2, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 400, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (38, 8, 2, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 600, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (39, 8, 2, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 800, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (40, 8, 2, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 1000, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (41, 9, 2, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (42, 9, 2, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 400, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (43, 9, 2, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 600, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (44, 9, 2, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 800, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (45, 9, 2, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 1000, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (46, 10, 2, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (47, 10, 2, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 400, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (48, 10, 2, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 600, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (49, 10, 2, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 800, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (50, 10, 2, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 1000, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (51, 11, 2, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (52, 11, 2, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 400, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (53, 11, 2, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 600, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (54, 11, 2, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 800, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (55, 11, 2, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 1000, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (56, 12, 2, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (57, 12, 2, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 400, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (58, 12, 2, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 600, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (59, 12, 2, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 800, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (60, 12, 2, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 1000, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (61, 13, 3, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 300, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (62, 13, 3, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 600, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (63, 13, 3, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 900, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (64, 13, 3, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 1200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (65, 13, 3, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 1500, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (66, 14, 3, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 300, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (67, 14, 3, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 600, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (68, 14, 3, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 900, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (69, 14, 3, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 1200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (70, 14, 3, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 1500, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (71, 15, 3, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 300, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (72, 15, 3, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 600, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (73, 15, 3, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 900, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (74, 15, 3, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 1200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (75, 15, 3, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 1500, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (76, 16, 3, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 300, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (77, 16, 3, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 600, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (78, 16, 3, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 900, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (79, 16, 3, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 1200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (80, 16, 3, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 1500, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (81, 17, 3, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 300, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (82, 17, 3, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 600, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (83, 17, 3, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 900, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (84, 17, 3, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 1200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (85, 17, 3, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 1500, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (86, 18, 3, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 300, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (87, 18, 3, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 600, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (88, 18, 3, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 900, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (89, 18, 3, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 1200, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');
INSERT INTO `questions` VALUES (90, 18, 3, NULL, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit.', NULL, 1500, 'a:4:{i:0;s:40:\"Первый вариант ответа\";i:1;s:40:\"Второй вариант ответа\";i:2;s:40:\"Третий вариант ответа\";i:3;s:46:\"Четвертый вариант ответа\";}', 3, '0');

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
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of results
-- ----------------------------
INSERT INTO `results` VALUES (1, '05.08.19 18:36', 7500, 3600, 12500);
INSERT INTO `results` VALUES (2, '2019-08-05 21:07', 500, 400, 0);
INSERT INTO `results` VALUES (3, '2019-08-05 21:08', 700, 400, -4500);
INSERT INTO `results` VALUES (4, '2019-08-05 21:09', 1900, 400, 750);
INSERT INTO `results` VALUES (5, '2019-08-05 21:13', 2300, 1300, 3200);
INSERT INTO `results` VALUES (6, '2019-08-11 20:14', -200, 300, 200);

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
INSERT INTO `topics` VALUES (1, 'Автолюбителям');
INSERT INTO `topics` VALUES (2, 'Биология');
INSERT INTO `topics` VALUES (3, 'Воспитание и обучение');
INSERT INTO `topics` VALUES (4, 'Естествознание');
INSERT INTO `topics` VALUES (5, 'Инженерные дисциплины');
INSERT INTO `topics` VALUES (6, 'Иностранные языки');
INSERT INTO `topics` VALUES (7, 'Информационные технологии');
INSERT INTO `topics` VALUES (8, 'История');
INSERT INTO `topics` VALUES (9, 'Культура и искусство');
INSERT INTO `topics` VALUES (10, 'Литература');
INSERT INTO `topics` VALUES (11, 'Математика и статистика');
INSERT INTO `topics` VALUES (12, 'Медицина');
INSERT INTO `topics` VALUES (13, 'Менеджмент и маркетинг');
INSERT INTO `topics` VALUES (14, 'Общественные науки');
INSERT INTO `topics` VALUES (15, 'Русский язык');
INSERT INTO `topics` VALUES (16, 'Физкультура и спорт');
INSERT INTO `topics` VALUES (17, 'Философия и психология');
INSERT INTO `topics` VALUES (18, 'Финансы, кредит, страхование');

SET FOREIGN_KEY_CHECKS = 1;
