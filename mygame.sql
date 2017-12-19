/*
 Navicat Premium Data Transfer

 Source Server         : BDLocal
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : mygame

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 19/12/2017 12:02:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Subjects
-- ----------------------------
DROP TABLE IF EXISTS `Subjects`;
CREATE TABLE `Subjects`  (
  `idSubject` int(11) NOT NULL,
  `NameSubject` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`idSubject`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of Subjects
-- ----------------------------
INSERT INTO `Subjects` VALUES (1, 'Сопровождение и\r\nпродвижение программного\r\nобеспечения. ');
INSERT INTO `Subjects` VALUES (2, 'Развертывание\r\nпрограммного обеспечения.');
INSERT INTO `Subjects` VALUES (3, 'Развертывание\r\nпрограммного обеспечения 2.');
INSERT INTO `Subjects` VALUES (4, 'Выбор методов для\r\nвыявления проблем\r\nсовместимости ПО.');
INSERT INTO `Subjects` VALUES (5, 'Презентации\r\nпрограммного обеспечения.');
INSERT INTO `Subjects` VALUES (6, 'Работа с клиентами.');
INSERT INTO `Subjects` VALUES (7, 'Тема 7');
INSERT INTO `Subjects` VALUES (8, 'Тема 8');
INSERT INTO `Subjects` VALUES (9, 'Тема 9');
INSERT INTO `Subjects` VALUES (10, 'Тема 10');
INSERT INTO `Subjects` VALUES (11, 'Тема 11');
INSERT INTO `Subjects` VALUES (12, 'Тема 12');
INSERT INTO `Subjects` VALUES (13, 'Загадки');
INSERT INTO `Subjects` VALUES (14, 'Финал');
INSERT INTO `Subjects` VALUES (15, 'Финал');
INSERT INTO `Subjects` VALUES (16, 'Отгадай кто на фото');
INSERT INTO `Subjects` VALUES (17, 'Новогодние песни');
INSERT INTO `Subjects` VALUES (18, 'Отгадай кто на фото');

-- ----------------------------
-- Table structure for players
-- ----------------------------
DROP TABLE IF EXISTS `players`;
CREATE TABLE `players`  (
  `playerId` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Индификатор игрока\r\n',
  `PlayerName` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Имя игрока\r\n',
  PRIMARY KEY (`playerId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of players
-- ----------------------------
INSERT INTO `players` VALUES (1, 'Кирилл');
INSERT INTO `players` VALUES (2, 'Антон');
INSERT INTO `players` VALUES (3, 'Владислав');

-- ----------------------------
-- Table structure for questions
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions`  (
  `idQuestions` int(11) NOT NULL AUTO_INCREMENT,
  `idRound` int(11) NULL DEFAULT NULL COMMENT 'Раунд',
  `idSubject` int(11) NULL DEFAULT NULL COMMENT 'Тема',
  `Images` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'default/NoPicture.png' COMMENT 'Название картинки',
  `Question` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'Текст вопроса',
  `Answer` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'Ответ',
  `music` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`idQuestions`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of questions
-- ----------------------------
INSERT INTO `questions` VALUES (1, 1, 1, 'nopicture.png', 'Сопровождение (поддержка) программного обеспечения — процесс улучшения, оптимизации и устранения дефектов программного обеспечения (ПО)после передачи в ...', 'эксплуатацию', '');
INSERT INTO `questions` VALUES (2, 1, 2, 'default/NoPicture.png', 'Процессом установки\r\nпрограммного обеспечения на компьютер\r\nконечного пользователя называется ', ' Инсталляция', ' ');
INSERT INTO `questions` VALUES (3, 1, 1, 'default/NoPicture.png', ' Сопровождение ПО осуществляется ...\r\nЭто может быть внешняя организация или же\r\nсама та организация (ее отдел, отдельный сотрудник), которая\r\nиспользует ПО в своей работе.', ' Сопроводителем', ' ');
INSERT INTO `questions` VALUES (4, 1, 1, 'default/NoPicture.png', 'В какой моделе, возникшей в ходе развития\r\nобъектно-ориентированного программирования,\r\nсопровождение не выделяется как отдельный этап.', 'спиральной ', '');
INSERT INTO `questions` VALUES (5, 1, 1, 'default/NoPicture.png', 'Что подразумевается под -  характеристики программного продукта, позволяющие\r\nминимизировать усилия по внесению в него изменений:\r\n•для устранения ошибок;\r\n•для модификации в соответствии с изменяющимися\r\nпотребностями пользователей.', 'Сопровождаемость программного обеспечения', ' ');
INSERT INTO `questions` VALUES (6, 1, 1, 'default/NoPicture.png', ' Работу инженера по сопровождению ошибочно\r\nсравнивают с работой информационного центра. Однако\r\nпо функционалу эти специалисты принципиально\r\nразличаются – если call-center фактически аккумулирует\r\nобращения пользователей, то сопровождение является\r\nзвеном в цепочке разработки и доработки\r\nПО, которое решает проблемы, возникающие в период\r\nэксплуатации ПО (системы, сервиса). Каким звеном в цепочке оно является?', 'центральным ', ' ');
INSERT INTO `questions` VALUES (7, 1, 2, 'default/NoPicture.png', ' Большинство программ поставляются для\r\nпродажи и распространения в сжатом\r\n(упакованном) виде. Что требуется для нормальной работы программы?', 'Распаковать', ' ');
INSERT INTO `questions` VALUES (8, 1, 3, 'default/NoPicture.png', '... — установка, в\r\nпроцессе которой не отображаются\r\nсообщения или окна.', 'Тихая установка', '');
INSERT INTO `questions` VALUES (9, 1, 2, 'default/NoPicture.png', 'Всегда ли пакетные\r\nменеджеры выполняют при установке\r\nконтроль зависимостей, проверяя, есть ли в системе\r\nнеобходимые для работы данной программы пакеты, а\r\nв случае успешной установки регистрируя новый\r\nпакет в списке доступных.', ' Да', ' ');
INSERT INTO `questions` VALUES (10, 1, 2, 'default/NoPicture.png', 'Операционные системы (Live) не требуют\r\nустановки, и могут быть напрямую запущены с\r\nзагрузочного диска (компакт- или DVD-диск,\r\nUSB flash), не оказывая воздействия на другие\r\nоперационные системы, установленные на\r\nкомпьютере пользователя. Есть ли такая возможность в LINUX дистрибутивах?', 'Да', '');
INSERT INTO `questions` VALUES (11, 1, 3, 'default/NoPicture.png', '...— установка,\r\nкоторая выполняется без вмешательства со\r\nстороны пользователя, исключая, конечно, сам\r\nпроцесс её запуска. Процесс установки иногда\r\nтребует взаимодействия с пользователем,\r\nкоторый управляет процессом установки, делая\r\nвыбор: принимая пользовательское соглашение,\r\nнастраивая параметры, указывая пароли\r\nи так далее.', 'Автоматическая установка', '');
INSERT INTO `questions` VALUES (12, 1, 3, 'default/NoPicture.png', '... — установка, которая не\r\nтребует начального запуска процесса. Например, Megafon\r\nUSB Modem, который устанавливается с USB-порта\r\nкомпьютера при подключении к нему без необходимости\r\nв ручном запуске.				', 'Самостоятельная установка', '');
INSERT INTO `questions` VALUES (13, 1, 2, 'default/NoPicture.png', ' ... — установка\r\nвыполняется без установщика или со\r\nзначительным количеством операций,\r\nвручную выполняемых пользователем.', ' Установка вручную', ' ');
INSERT INTO `questions` VALUES (14, 1, 3, 'default/NoPicture.png', ' ... —  установка, которая\r\nвыполняется без использования монитора,\r\nподсоединённого к компьютеру пользователя (в\r\nчастности, выполняемая на компьютере без видеовыхода\r\nвообще). Это может быть контролируемая установка с\r\nдругой машины, соединенной через локальную сеть или\r\nпосредством последовательного кабеля.', 'Удаленная установка', ' ');
INSERT INTO `questions` VALUES (15, 1, 3, 'default/NoPicture.png', '... — установка,\r\nвыполняемая в отсутствие таких факторов,\r\nкоторые могут изменяться от программы к\r\nпрограмме. Ввиду сложности типичной\r\nустановки, имеется множество факторов,\r\nвлияющих на её успешный исход.', 'Чистая установка', '');
INSERT INTO `questions` VALUES (16, 1, 4, 'default/NoPicture.png', 'Типы тестирования\r\nсовместимости программного\r\nобеспечения:\r\n• Тестирование совместимости\r\nбраузера\r\n• Аппаратные средства\r\n• Сети\r\n• Мобильные устройства\r\n• Скорость интернета\r\n• Операционные системы\r\n• Версии\r\n\r\nВыберите лишний вариант (Словами)', 'Скорость интернета', '');
INSERT INTO `questions` VALUES (17, 1, 4, 'default/NoPicture.png', 'На данном этапе происходит обмен одного\r\nиз имеющихся у пользователя продукта на\r\nновый. Это предложение действует только\r\nдля обладателей лицензионной системы.', 'Апгрейд', '');
INSERT INTO `questions` VALUES (18, 1, 4, 'default/NoPicture.png', 'Предусматривает проведение самих\r\nработ, результат – рабочая новая версия\r\nПО, которую можно сразу же\r\nиспользовать.', 'Установка', '');
INSERT INTO `questions` VALUES (19, 1, 4, 'default/NoPicture.png', 'Необходимый этап в рамках, которого\r\nинформация со старой версии\r\nпереносится на новую.', 'Перенос данных.', '');
INSERT INTO `questions` VALUES (20, 1, 4, 'default/NoPicture.png', 'Что нужно делать с информацией при переходе к новой версии ПО?', 'Резервное копирование', '');
INSERT INTO `questions` VALUES (21, 1, 5, 'podgotovka-k-prezentazii.jpg', 'Что такое - прототип,\r\nпример или неполная версия\r\nпредставляемого продукта. Ее проводят с\r\nцелью показа возможностей продукта, его\r\nудобства, гибкости, производительности и\r\nдругих качеств.', 'Презентация ', '');
INSERT INTO `questions` VALUES (22, 1, 5, 'default/NoPicture.png', 'Виды презентаций (демок):\r\n- полная версия продукта с триальным\r\n(trial) режимом;\r\n- версия продукта с урезанными\r\nвозможностями;\r\n- демонстрация “живого” продукта по\r\nопределенному сценарию;\r\n- видео;\r\n- презентация;\r\n- скриншот или картинка.\r\nВиды презентаций (демок):\r\n- полная версия продукта с триальным\r\n(trial) режимом;\r\n- версия продукта с урезанными\r\nвозможностями;\r\n- демонстрация “живого” продукта по\r\nопределенному сценарию;\r\n- видео;\r\n- презентация;\r\n-мысли в голове;\r\n- скриншот или картинка.', 'мысли в голове', '');
INSERT INTO `questions` VALUES (23, 1, 5, 'mobile_high-qa.jpg', 'Хорошие ли презентации своих продуктов делает компания Apple ?', 'Да', '');
INSERT INTO `questions` VALUES (24, 1, 5, 'default/NoPicture.png', 'Может ли демонстрация продукта \r\nсодержать баги, \r\nпадения, ошибки в\r\nописании?', 'Нет', '');
INSERT INTO `questions` VALUES (25, 1, 5, 'default/NoPicture.png', 'Деморолик не должен быть слишком\r\nдлинным. Постарайтесь сделать его\r\nмаксимально коротким при всех важных\r\nфункциях продукта, что вы хотите показать.\r\nВ каких пределах лучше делать деморолик?\r\n', '6-10 минут', '');
INSERT INTO `questions` VALUES (26, 1, 6, 'default/NoPicture.png', 'Что такое прикладное\r\nпрограммное обеспечение для организаций,\r\nпредназначенное для автоматизации стратегий\r\nвзаимодействия с заказчиками (клиентами), в\r\nчастности, для повышения уровня продаж,\r\nоптимизации маркетинга и улучшения\r\nобслуживания клиентов путём сохранения\r\nинформации о клиентах и истории\r\nвзаимоотношений с ними, установления и\r\nулучшения бизнес-процессов и последующего\r\nанализа результатов.', 'CRM', '');
INSERT INTO `questions` VALUES (27, 1, 6, 'default/NoPicture.png', 'Классификации CRM-систем\r\nКлассификация по назначению\r\n• Управление продажами (SFA — Sales Force\r\nAutomation)\r\n• Управление клиентским обслуживанием и\r\nколл-центрами (системы по обработке\r\nобращений абонентов, фиксация и\r\nдальнейшая работа с обращениями\r\nклиентов)\r\nЧто тут не хватает?', 'Управление маркетингом', '');
INSERT INTO `questions` VALUES (28, 1, 6, 'default/NoPicture.png', '... CRM — регистрация и\r\nоперативный доступ к первичной\r\nинформации по событиям, компаниям,\r\nпроектам, контактам.', 'Операционный', '');
INSERT INTO `questions` VALUES (29, 1, 6, '6760.jpg', '...CRM — отчётность и анализ\r\nинформации в различных разрезах (воронка\r\nпродаж, анализ результатов маркетинговых\r\nмероприятий, анализ эффективности продаж в\r\nразрезе продуктов, сегментов клиентов,\r\nрегионов и другие возможные варианты).', 'Аналитический', '');
INSERT INTO `questions` VALUES (30, 1, 6, 'default/NoPicture.png', NULL, '1', NULL);
INSERT INTO `questions` VALUES (31, 2, 7, 'background.jpg', 'Вопрос', '1', '');
INSERT INTO `questions` VALUES (32, 2, 7, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (33, 2, 7, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (34, 2, 7, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (35, 2, 7, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (36, 2, 8, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (37, 2, 8, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (38, 2, 8, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (39, 2, 8, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (40, 2, 8, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (41, 2, 9, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (42, 2, 9, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (43, 2, 9, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (44, 2, 9, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (45, 2, 9, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (46, 2, 11, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (47, 2, 11, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (48, 2, 11, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (49, 2, 11, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (50, 2, 12, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (51, 2, 12, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (52, 2, 12, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (53, 2, 12, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (54, 2, 12, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (55, 3, 13, 'скриншот2017-12-1315.34.39.png', 'Белыми-белыми нитками шит, он поначалу идет и лежит,\r\nНу а потом он течет, чтоб затем следом бесследно исчезнуть совсем.', 'Снег', '');
INSERT INTO `questions` VALUES (56, 3, 13, '', 'Чтоб увидеть эти киночудеса, нужно с вечера улечься на кровать - \r\nИ, закрыв слипающиеся глаза, их - до самого утра - не раскрывать...', 'Сны', '');
INSERT INTO `questions` VALUES (57, 3, 13, '', 'Он внутри - морозный, он внутри - моторный.\r\nМожет в нем храниться множество вещей.\r\nДля кастрюлек, банок, плошек - он просторный.\r\nТесный - для костюмов, зонтиков, плащей.', 'Холодильник', '');
INSERT INTO `questions` VALUES (58, 3, 13, '', 'Кто под проливным дождем не намочит волосы', 'Лысый', '');
INSERT INTO `questions` VALUES (59, 3, 13, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (60, 2, 10, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (61, 2, 10, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (62, 2, 10, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (63, 2, 10, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (64, 2, 10, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (65, 2, 11, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (66, 3, 14, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (67, 3, 14, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (68, 3, 14, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (69, 3, 14, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (70, 3, 14, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (71, 3, 15, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (72, 3, 15, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (73, 3, 15, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (74, 3, 15, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (75, 3, 15, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (76, 3, 16, '7e_qalrdojc.jpg', 'Кто изображен на фото?', 'Саша', '');
INSERT INTO `questions` VALUES (77, 3, 16, 'hyoieetkp-0.jpg', 'Кто изображен на фото?', 'Кирилл', '');
INSERT INTO `questions` VALUES (78, 3, 16, 'rad3wy2dqtc.jpg', 'Кто изображен на фото?', 'Саша', '');
INSERT INTO `questions` VALUES (79, 3, 16, 'y-ocyjpf6mi.jpg', 'Кто изображен на фото?', 'Даша', '');
INSERT INTO `questions` VALUES (80, 3, 16, 'ayty-453b8q.jpg', 'Кто изображен на фото?', 'Кирилл', '');
INSERT INTO `questions` VALUES (81, 3, 17, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (82, 3, 17, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (83, 3, 17, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (84, 3, 17, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (85, 3, 17, 'default/NoPicture.png', 'Вопрос', '1', NULL);
INSERT INTO `questions` VALUES (86, 3, 18, 'fpbvyiixlv0.jpg', 'Кто изображен на фото?', 'Влад', '');
INSERT INTO `questions` VALUES (87, 3, 18, 'wi2dp9evcge.jpg', 'Кто изображен на фото?', 'Георгий', '');
INSERT INTO `questions` VALUES (88, 3, 18, 'oluq9es33bc.jpg', 'Кто изображен на фото?', 'Саша', 'oluq9es33bc.jpg');
INSERT INTO `questions` VALUES (89, 3, 18, 'p-tfkp-1_5o.jpg', 'Кто изображен на фото?', 'Ксения', '');
INSERT INTO `questions` VALUES (90, 3, 18, 'odcp00pybp8.jpg', 'Кто изображен на фото?', 'Слава', 'odcp00pybp8.jpg');

SET FOREIGN_KEY_CHECKS = 1;
