/*
 Navicat Premium Data Transfer

 Source Server         : campus01.o2switch.net_3306
 Source Server Type    : MySQL
 Source Server Version : 100335
 Source Host           : campus01.o2switch.net:3306
 Source Schema         : colas_ecfback

 Target Server Type    : MySQL
 Target Server Version : 100335
 File Encoding         : 65001

 Date: 17/06/2022 21:21:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for candidat
-- ----------------------------
DROP TABLE IF EXISTS `candidat`;
CREATE TABLE `candidat`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_id` int NOT NULL,
  `nom` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `prenom` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `telephone` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mail` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cv` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `company`(`job_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1384 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of candidat
-- ----------------------------
INSERT INTO `candidat` VALUES (1381, 553, 'sex', 'sex', 'fzretfgzref ', 'sex@sex.cxom', NULL);
INSERT INTO `candidat` VALUES (1382, 559, 'test', 'test', 'test', 'test@melkjnerg.com', NULL);
INSERT INTO `candidat` VALUES (1383, 1054, 'William', 'Bréhier', '0669918590', 'brehierwilliam@gmail.com', NULL);

-- ----------------------------
-- Table structure for entreprise
-- ----------------------------
DROP TABLE IF EXISTS `entreprise`;
CREATE TABLE `entreprise`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `company` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `location` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `logo_background` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `company`(`company` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of entreprise
-- ----------------------------
INSERT INTO `entreprise` VALUES (1, 'Scoot', 'United Kingdom', '/static/logo/1.svg', 'hsl(36, 87%, 49%)');
INSERT INTO `entreprise` VALUES (2, 'Blogr', 'France', '/static/logo/2.svg', 'hsl(12, 79%, 52%)');
INSERT INTO `entreprise` VALUES (3, 'Vector', 'Russia', '/static/logo/anthrax-53001.svg', 'hsl(12, 79%, 52%)');
INSERT INTO `entreprise` VALUES (4, 'Office Lite', 'Japan', '/static/logo/4.svg', 'hsl(227, 62%, 48%)');
INSERT INTO `entreprise` VALUES (5, 'Pod', 'Japan', '/static/logo/5.svg', 'hsl(216, 46%, 14%)');
INSERT INTO `entreprise` VALUES (6, 'Creative', 'Germany', '/static/logo/6.svg', 'hsl(295, 55%, 21%)');
INSERT INTO `entreprise` VALUES (7, 'Pomodoro', 'United States', '/static/logo/7.svg', 'hsl(254, 71%, 45%)');
INSERT INTO `entreprise` VALUES (8, 'Maker', 'United Kingdom', '/static/logo/8.svg', 'hsl(218, 58%, 31%)');
INSERT INTO `entreprise` VALUES (9, 'Coffeeroasters', 'Singapore', '/static/logo/9.svg', 'hsl(29, 60%, 87%)');
INSERT INTO `entreprise` VALUES (10, 'Mastercraft', 'United States', '/static/logo/10.svg', 'hsl(0, 0%, 12%)');
INSERT INTO `entreprise` VALUES (11, 'Crowdfund', 'New Zealand', '/static/logo/11.svg', 'hsl(157, 57%, 50%)');
INSERT INTO `entreprise` VALUES (12, 'Typemaster', 'United Kingdom', '/static/logo/12.svg', 'hsl(22, 89%, 52%)');
INSERT INTO `entreprise` VALUES (13, 'So Digital Inc.', 'United Kingdom', '/static/logo/13.svg', 'hsl(326, 51%, 87%)');
INSERT INTO `entreprise` VALUES (14, 'National Wildlife', 'United States', '/static/logo/14.svg', 'hsl(192, 71%, 82%)');
INSERT INTO `entreprise` VALUES (15, 'Photosnap Ltd.', 'Russia', '/static/logo/15.svg', 'hsl(241, 60%, 58%)');
INSERT INTO `entreprise` VALUES (16, 'Extreme Division', 'Japan', '/static/logo/16.svg', 'hsl(42, 82%, 94%)');
INSERT INTO `entreprise` VALUES (17, 'Multifold', 'Thailand', '/static/logo/17.svg', 'hsl(18, 75%, 90%)');
INSERT INTO `entreprise` VALUES (18, 'Hardsoft Computing', 'Germany', '/static/logo/18.svg', 'hsl(0, 3%, 13%)');
INSERT INTO `entreprise` VALUES (19, 'Blocksoft', 'United States', '/static/logo/19.svg', 'hsl(235, 60%, 88%)');
INSERT INTO `entreprise` VALUES (20, 'Color Logic', 'United Kingdom', '/static/logo/20.svg', 'hsl(10, 59%, 48%)');
INSERT INTO `entreprise` VALUES (21, 'Outerwest International', 'Singapore', '/static/logo/21.svg', 'hsl(211, 50%, 50%)');
INSERT INTO `entreprise` VALUES (22, 'Almost Yellow', 'United States', '/static/logo/22.svg', 'hsl(2,44%, 29%)');
INSERT INTO `entreprise` VALUES (23, 'Density', 'New Zealand', '/static/logo/23.svg', 'hsl(157, 56%, 86%)');
INSERT INTO `entreprise` VALUES (24, 'Synoid Inc.', 'France', '/static/logo/24.svg', 'hsl(357, 65%, 50%)');
INSERT INTO `entreprise` VALUES (34, 'Nuances Deco', 'France', '/static/logo/default.svg', 'hsl(12, 79%, 52%)');
INSERT INTO `entreprise` VALUES (35, 'Art\'RénovA', 'France', '/static/img/default.svg', 'hsl(12, 79%, 52%)');
INSERT INTO `entreprise` VALUES (40, 'Spotify', 'France', '/static/logo/', 'hsl(12, 79%, 52%)');

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `company` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contract` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `postedAt` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `company`(`company` ASC) USING BTREE,
  CONSTRAINT `job_ibfk_1` FOREIGN KEY (`company`) REFERENCES `entreprise` (`company`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1055 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO `job` VALUES (554, 'Outerwest International', 'Full Time', 'Social Workèr', 2147483647);
INSERT INTO `job` VALUES (555, 'Blocksoft', 'Part Time', 'Administrative Officer', 2147483647);
INSERT INTO `job` VALUES (556, 'Pomodoro', 'Freelance', 'Account Executive', 2147483647);
INSERT INTO `job` VALUES (557, 'Blogr', 'Part Time', 'Software Engineer II', 2147483647);
INSERT INTO `job` VALUES (558, 'Blogr', 'Part Time', 'Financial Advisor', 2147483647);
INSERT INTO `job` VALUES (559, 'Creative', 'Full Time', 'Editor', 2147483647);
INSERT INTO `job` VALUES (560, 'Synoid Inc.', 'Part Time', 'Health Coach IV', 2147483647);
INSERT INTO `job` VALUES (561, 'Synoid Inc.', 'Freelance', 'Director of Sales', 2147483647);
INSERT INTO `job` VALUES (562, 'Creative', 'Part Time', 'Compensation Analyst', 2147483647);
INSERT INTO `job` VALUES (563, 'Synoid Inc.', 'Full Time', 'Human Resources Assistant II', 2147483647);
INSERT INTO `job` VALUES (564, 'Maker', 'Part Time', 'Accountant IV', 2147483647);
INSERT INTO `job` VALUES (565, 'Office Lite', 'Part Time', 'Dental Hygienist', 2147483647);
INSERT INTO `job` VALUES (566, 'Almost Yellow', 'Freelance', 'Staff Accountant I', 2147483647);
INSERT INTO `job` VALUES (567, 'Mastercraft', 'Freelance', 'Analog Circuit Design manager', 2147483647);
INSERT INTO `job` VALUES (568, 'Typemaster', 'Full Time', 'Mechanical Systems Engineer', 2147483647);
INSERT INTO `job` VALUES (569, 'National Wildlife', 'Freelance', 'Web Developer I', 2147483647);
INSERT INTO `job` VALUES (570, 'Synoid Inc.', 'Freelance', 'Electrical Engineer', 2147483647);
INSERT INTO `job` VALUES (571, 'Almost Yellow', 'Part Time', 'Professor', 2147483647);
INSERT INTO `job` VALUES (572, 'Density', 'Part Time', 'Marketing Assistant', 2147483647);
INSERT INTO `job` VALUES (573, 'Multifold', 'Freelance', 'Systems Administrator IV', 2147483647);
INSERT INTO `job` VALUES (574, 'National Wildlife', 'Full Time', 'Analyst Programmer', 2147483647);
INSERT INTO `job` VALUES (575, 'Pod', 'Full Time', 'Computer Systems Analyst IV', 2147483647);
INSERT INTO `job` VALUES (576, 'Vector', 'Part Time', 'Structural Analysis Engineer', 2147483647);
INSERT INTO `job` VALUES (577, 'Synoid Inc.', 'Freelance', 'Account Coordinator', 2147483647);
INSERT INTO `job` VALUES (578, 'So Digital Inc.', 'Full Time', 'Information Systems Manager', 2147483647);
INSERT INTO `job` VALUES (579, 'Almost Yellow', 'Full Time', 'VP Sales', 2147483647);
INSERT INTO `job` VALUES (580, 'Color Logic', 'Freelance', 'Accounting Assistant I', 2147483647);
INSERT INTO `job` VALUES (581, 'Extreme Division', 'Freelance', 'Web Designer III', 2147483647);
INSERT INTO `job` VALUES (582, 'Mastercraft', 'Part Time', 'Accountant II', 2147483647);
INSERT INTO `job` VALUES (583, 'Scoot', 'Freelance', 'Help Desk Operator', 2147483647);
INSERT INTO `job` VALUES (584, 'Mastercraft', 'Freelance', 'Electrical Engineer', 2147483647);
INSERT INTO `job` VALUES (585, 'Pomodoro', 'Full Time', 'Senior Quality Engineer', 2147483647);
INSERT INTO `job` VALUES (586, 'Outerwest International', 'Part Time', 'Geological Engineer', 2147483647);
INSERT INTO `job` VALUES (587, 'Hardsoft Computing', 'Part Time', 'Cost Accountant', 2147483647);
INSERT INTO `job` VALUES (588, 'Outerwest International', 'Full Time', 'Paralegal', 2147483647);
INSERT INTO `job` VALUES (589, 'Mastercraft', 'Full Time', 'Business Systems Development Analyst', 2147483647);
INSERT INTO `job` VALUES (590, 'Typemaster', 'Full Time', 'Sales Representative', 2147483647);
INSERT INTO `job` VALUES (591, 'Office Lite', 'Part Time', 'Speech Pathologist', 2147483647);
INSERT INTO `job` VALUES (592, 'Scoot', 'Full Time', 'Product Engineer', 2147483647);
INSERT INTO `job` VALUES (593, 'Office Lite', 'Full Time', 'Physical Therapy Assistant', 2147483647);
INSERT INTO `job` VALUES (594, 'National Wildlife', 'Freelance', 'Sales Representative', 2147483647);
INSERT INTO `job` VALUES (595, 'Color Logic', 'Part Time', 'Analyst Programmer', 2147483647);
INSERT INTO `job` VALUES (596, 'Creative', 'Freelance', 'Computer Systems Analyst I', 2147483647);
INSERT INTO `job` VALUES (597, 'Blocksoft', 'Freelance', 'Sales Associate', 2147483647);
INSERT INTO `job` VALUES (598, 'Typemaster', 'Part Time', 'Geologist IV', 2147483647);
INSERT INTO `job` VALUES (599, 'Typemaster', 'Part Time', 'Account Representative IV', 2147483647);
INSERT INTO `job` VALUES (600, 'Multifold', 'Full Time', 'Nuclear Power Engineer', 2147483647);
INSERT INTO `job` VALUES (601, 'Density', 'Full Time', 'Nurse', 2147483647);
INSERT INTO `job` VALUES (602, 'Coffeeroasters', 'Freelance', 'Assistant Professor', 2147483647);
INSERT INTO `job` VALUES (603, 'Scoot', 'Part Time', 'Senior Financial Analyst', 2147483647);

-- ----------------------------
-- Table structure for job_detail
-- ----------------------------
DROP TABLE IF EXISTS `job_detail`;
CREATE TABLE `job_detail`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_id` int NOT NULL,
  `apply` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `website` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `company`(`job_id` ASC) USING BTREE,
  CONSTRAINT `job_detail_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 411 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of job_detail
-- ----------------------------
INSERT INTO `job_detail` VALUES (361, 554, 'http://facebook.com/sodales.png', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 'https://businesswire.com/risus/praesent/lectus/vestibulum/quam/sapien.aspx');
INSERT INTO `job_detail` VALUES (362, 555, 'http://merriam-webster.com/justo/morbi.aspx', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 'https://wiley.com/enim/blandit/mi/in/porttitor/pede/justo.js');
INSERT INTO `job_detail` VALUES (363, 556, 'http://surveymonkey.com/duis/bibendum/morbi/non/quam/nec/dui.html', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 'https://ucoz.com/tristique/tortor/eu/pede.jsp');
INSERT INTO `job_detail` VALUES (364, 557, 'https://adobe.com/platea/dictumst/morbi/vestibulum/velit/id.jsp', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 'http://forbes.com/blandit/ultrices/enim/lorem/ipsum.json');
INSERT INTO `job_detail` VALUES (365, 558, 'https://dedecms.com/mattis/odio/donec.aspx', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 'https://youtube.com/in/ante/vestibulum/ante/ipsum/primis.aspx');
INSERT INTO `job_detail` VALUES (366, 559, 'https://instagram.com/velit/nec/nisi/vulputate.xml', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 'https://cbsnews.com/vestibulum/ante/ipsum/primis/in/faucibus/orci.json');
INSERT INTO `job_detail` VALUES (367, 560, 'http://jalbum.net/lobortis/ligula/sit/amet/eleifend.json', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 'http://sakura.ne.jp/id/ligula/suspendisse/ornare/consequat/lectus.js');
INSERT INTO `job_detail` VALUES (368, 561, 'http://typepad.com/aliquam.jsp', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'https://weibo.com/volutpat/dui.jsp');
INSERT INTO `job_detail` VALUES (369, 562, 'http://mayoclinic.com/ornare/imperdiet/sapien/urna/pretium/nisl/ut.xml', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 'https://ebay.co.uk/donec.xml');
INSERT INTO `job_detail` VALUES (370, 563, 'https://sciencedaily.com/feugiat/non/pretium.jsp', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 'http://storify.com/nulla.json');
INSERT INTO `job_detail` VALUES (371, 564, 'http://diigo.com/in/magna.js', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 'https://php.net/at/turpis/donec/posuere/metus/vitae/ipsum.jpg');
INSERT INTO `job_detail` VALUES (372, 565, 'http://cisco.com/posuere/felis.jsp', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 'http://w3.org/eget/elit/sodales/scelerisque/mauris.html');
INSERT INTO `job_detail` VALUES (373, 566, 'http://360.cn/tincidunt/ante/vel/ipsum/praesent/blandit/lacinia.html', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'https://go.com/rutrum/at/lorem.html');
INSERT INTO `job_detail` VALUES (374, 567, 'https://ezinearticles.com/sit/amet/sapien/dignissim/vestibulum/vestibulum.json', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 'http://sun.com/phasellus/id.json');
INSERT INTO `job_detail` VALUES (375, 568, 'https://google.nl/primis.xml', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 'http://walmart.com/massa/tempor/convallis/nulla/neque.xml');
INSERT INTO `job_detail` VALUES (376, 569, 'http://businesswire.com/placerat.jpg', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 'http://altervista.org/quisque/porta/volutpat/erat.xml');
INSERT INTO `job_detail` VALUES (377, 570, 'http://unc.edu/ac/nibh/fusce/lacus.png', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 'https://google.es/habitasse/platea/dictumst/aliquam/augue.json');
INSERT INTO `job_detail` VALUES (378, 571, 'http://sun.com/feugiat/non/pretium/quis/lectus/suspendisse.jpg', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 'https://princeton.edu/odio/justo/sollicitudin/ut.jpg');
INSERT INTO `job_detail` VALUES (379, 572, 'https://wikispaces.com/parturient/montes/nascetur.xml', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 'https://upenn.edu/tellus/semper/interdum/mauris.jsp');
INSERT INTO `job_detail` VALUES (380, 573, 'http://bandcamp.com/convallis/morbi/odio/odio/elementum/eu/interdum.js', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 'https://buzzfeed.com/sit.json');
INSERT INTO `job_detail` VALUES (381, 574, 'http://fda.gov/eget.html', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 'http://ehow.com/pede/morbi/porttitor/lorem.xml');
INSERT INTO `job_detail` VALUES (382, 575, 'http://irs.gov/nunc/nisl.jpg', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'http://devhub.com/nunc/viverra/dapibus/nulla/suscipit/ligula.json');
INSERT INTO `job_detail` VALUES (383, 576, 'http://cornell.edu/ipsum/primis/in/faucibus/orci/luctus/et.json', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 'https://istockphoto.com/sodales/sed/tincidunt/eu/felis/fusce.xml');
INSERT INTO `job_detail` VALUES (384, 577, 'https://technorati.com/vulputate/vitae/nisl.json', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 'http://nps.gov/nunc/rhoncus/dui/vel/sem/sed/sagittis.xml');
INSERT INTO `job_detail` VALUES (385, 578, 'https://skyrock.com/platea/dictumst/etiam/faucibus/cursus/urna.jpg', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 'https://dion.ne.jp/id/pretium/iaculis.json');
INSERT INTO `job_detail` VALUES (386, 579, 'http://last.fm/tellus/semper/interdum/mauris/ullamcorper.js', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 'http://ucoz.com/non/quam/nec/dui/luctus.html');
INSERT INTO `job_detail` VALUES (387, 580, 'http://blogspot.com/dapibus/duis.xml', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 'https://canalblog.com/justo.aspx');
INSERT INTO `job_detail` VALUES (388, 581, 'https://deliciousdays.com/sagittis/nam/congue/risus/semper/porta/volutpat.jpg', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 'http://archive.org/sit/amet/consectetuer/adipiscing/elit/proin/interdum.json');
INSERT INTO `job_detail` VALUES (389, 582, 'https://hibu.com/morbi/ut/odio/cras/mi/pede.js', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 'http://miitbeian.gov.cn/sem/praesent/id/massa.xml');
INSERT INTO `job_detail` VALUES (390, 583, 'https://phoca.cz/nam/ultrices/libero/non/mattis/pulvinar.jpg', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 'http://java.com/curae/nulla/dapibus/dolor/vel/est/donec.json');
INSERT INTO `job_detail` VALUES (391, 584, 'http://amazon.de/bibendum/felis/sed/interdum.aspx', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'http://homestead.com/enim/leo/rhoncus/sed.jpg');
INSERT INTO `job_detail` VALUES (392, 585, 'http://pbs.org/nulla.png', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 'https://google.co.uk/ut/tellus/nulla.aspx');
INSERT INTO `job_detail` VALUES (393, 586, 'https://4shared.com/ante/vestibulum.png', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 'http://51.la/in/imperdiet/et/commodo.png');
INSERT INTO `job_detail` VALUES (394, 587, 'http://cpanel.net/suspendisse/potenti/in/eleifend.png', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 'http://illinois.edu/aliquam/quis/turpis/eget/elit/sodales.js');
INSERT INTO `job_detail` VALUES (395, 588, 'https://cbc.ca/aliquet/maecenas/leo/odio/condimentum.jsp', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 'http://admin.ch/et/ultrices.jsp');
INSERT INTO `job_detail` VALUES (396, 589, 'https://people.com.cn/justo/nec/condimentum/neque/sapien/placerat/ante.jpg', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 'https://oakley.com/quis/lectus/suspendisse/potenti/in.html');
INSERT INTO `job_detail` VALUES (397, 590, 'https://bigcartel.com/interdum/mauris/non.json', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 'http://cyberchimps.com/sapien/non/mi/integer.aspx');
INSERT INTO `job_detail` VALUES (398, 591, 'http://deviantart.com/nibh/in/quis/justo.js', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 'https://bluehost.com/ante/nulla/justo/aliquam/quis/turpis.js');
INSERT INTO `job_detail` VALUES (399, 592, 'http://tripod.com/fringilla/rhoncus/mauris/enim.jpg', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 'http://sina.com.cn/dolor/quis/odio.jsp');
INSERT INTO `job_detail` VALUES (400, 593, 'http://skyrock.com/mauris.html', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 'http://elpais.com/donec.jpg');
INSERT INTO `job_detail` VALUES (401, 594, 'https://wufoo.com/at/turpis/a/pede/posuere/nonummy.png', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 'http://deviantart.com/dictumst/morbi/vestibulum/velit/id/pretium/iaculis.xml');
INSERT INTO `job_detail` VALUES (402, 595, 'https://ucsd.edu/amet.png', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 'https://howstuffworks.com/sem/mauris/laoreet/ut/rhoncus/aliquet.aspx');
INSERT INTO `job_detail` VALUES (403, 596, 'https://sciencedaily.com/pretium.aspx', 'Fusce consequat. Nulla nisl. Nunc nisl.', 'https://phoca.cz/cubilia/curae/donec.jsp');
INSERT INTO `job_detail` VALUES (404, 597, 'http://admin.ch/risus/dapibus/augue/vel/accumsan.jsp', 'Fusce consequat. Nulla nisl. Nunc nisl.', 'https://businesswire.com/ipsum/praesent/blandit/lacinia/erat/vestibulum/sed.aspx');
INSERT INTO `job_detail` VALUES (405, 598, 'https://guardian.co.uk/donec/semper/sapien/a/libero/nam.html', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 'http://japanpost.jp/posuere/metus/vitae/ipsum/aliquam/non/mauris.jsp');
INSERT INTO `job_detail` VALUES (406, 599, 'http://mashable.com/quis/justo/maecenas/rhoncus/aliquam/lacus.jpg', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 'https://cdbaby.com/amet/erat.aspx');
INSERT INTO `job_detail` VALUES (407, 600, 'http://unicef.org/donec/pharetra/magna/vestibulum/aliquet.js', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 'http://dot.gov/morbi/sem.png');
INSERT INTO `job_detail` VALUES (408, 601, 'https://cbsnews.com/leo/pellentesque/ultrices.png', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 'https://arizona.edu/eget/elit/sodales/scelerisque.json');
INSERT INTO `job_detail` VALUES (409, 602, 'https://disqus.com/donec/ut/dolor.jpg', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 'http://ed.gov/augue/aliquam/erat/volutpat/in.png');

-- ----------------------------
-- Table structure for requirement_content
-- ----------------------------
DROP TABLE IF EXISTS `requirement_content`;
CREATE TABLE `requirement_content`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_id` int NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `job_id`(`job_id` ASC) USING BTREE,
  CONSTRAINT `requirement_content_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `job_detail` (`job_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 207 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of requirement_content
-- ----------------------------
INSERT INTO `requirement_content` VALUES (155, 554, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\n\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.');
INSERT INTO `requirement_content` VALUES (156, 555, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.');
INSERT INTO `requirement_content` VALUES (157, 556, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\n\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.');
INSERT INTO `requirement_content` VALUES (158, 557, 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.');
INSERT INTO `requirement_content` VALUES (159, 558, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.');
INSERT INTO `requirement_content` VALUES (160, 559, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.');
INSERT INTO `requirement_content` VALUES (161, 560, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.');
INSERT INTO `requirement_content` VALUES (162, 561, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.');
INSERT INTO `requirement_content` VALUES (163, 562, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.');
INSERT INTO `requirement_content` VALUES (164, 563, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.');
INSERT INTO `requirement_content` VALUES (165, 564, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.');
INSERT INTO `requirement_content` VALUES (166, 565, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.');
INSERT INTO `requirement_content` VALUES (167, 566, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.');
INSERT INTO `requirement_content` VALUES (168, 567, 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.');
INSERT INTO `requirement_content` VALUES (169, 568, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.');
INSERT INTO `requirement_content` VALUES (170, 569, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.');
INSERT INTO `requirement_content` VALUES (171, 570, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\n\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.');
INSERT INTO `requirement_content` VALUES (172, 571, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.');
INSERT INTO `requirement_content` VALUES (173, 572, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
INSERT INTO `requirement_content` VALUES (174, 573, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\n\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.');
INSERT INTO `requirement_content` VALUES (175, 574, 'In congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.');
INSERT INTO `requirement_content` VALUES (176, 575, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.\n\nCurabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.');
INSERT INTO `requirement_content` VALUES (177, 576, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\r\n\r\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.');
INSERT INTO `requirement_content` VALUES (178, 577, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.');
INSERT INTO `requirement_content` VALUES (179, 578, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.');
INSERT INTO `requirement_content` VALUES (180, 579, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.');
INSERT INTO `requirement_content` VALUES (181, 580, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.');
INSERT INTO `requirement_content` VALUES (182, 581, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\n\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.');
INSERT INTO `requirement_content` VALUES (183, 582, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.\n\nPraesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.');
INSERT INTO `requirement_content` VALUES (184, 583, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.\n\nPraesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.');
INSERT INTO `requirement_content` VALUES (185, 584, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
INSERT INTO `requirement_content` VALUES (186, 585, 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.');
INSERT INTO `requirement_content` VALUES (187, 586, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\n\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
INSERT INTO `requirement_content` VALUES (188, 587, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.');
INSERT INTO `requirement_content` VALUES (189, 588, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.');
INSERT INTO `requirement_content` VALUES (190, 589, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\n\nEtiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.');
INSERT INTO `requirement_content` VALUES (191, 590, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\n\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.');
INSERT INTO `requirement_content` VALUES (192, 591, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.');
INSERT INTO `requirement_content` VALUES (193, 592, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.');
INSERT INTO `requirement_content` VALUES (194, 593, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.');
INSERT INTO `requirement_content` VALUES (195, 594, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.');
INSERT INTO `requirement_content` VALUES (196, 595, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\n\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.');
INSERT INTO `requirement_content` VALUES (197, 596, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\n\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.');
INSERT INTO `requirement_content` VALUES (198, 597, 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.');
INSERT INTO `requirement_content` VALUES (199, 598, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.');
INSERT INTO `requirement_content` VALUES (200, 599, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.');
INSERT INTO `requirement_content` VALUES (201, 600, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\n\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.');
INSERT INTO `requirement_content` VALUES (202, 601, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.');
INSERT INTO `requirement_content` VALUES (203, 602, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.');

-- ----------------------------
-- Table structure for requirement_item
-- ----------------------------
DROP TABLE IF EXISTS `requirement_item`;
CREATE TABLE `requirement_item`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_id` int NOT NULL,
  `item` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `requirement_id`(`job_id` ASC) USING BTREE,
  CONSTRAINT `requirement_item_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `requirement_content` (`job_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 910 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of requirement_item
-- ----------------------------
INSERT INTO `requirement_item` VALUES (610, 554, 'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.');
INSERT INTO `requirement_item` VALUES (611, 554, 'Donec ut dolor.');
INSERT INTO `requirement_item` VALUES (612, 554, 'Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.');
INSERT INTO `requirement_item` VALUES (613, 554, 'Maecenas rhoncus aliquam lacus.');
INSERT INTO `requirement_item` VALUES (614, 554, 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque.');
INSERT INTO `requirement_item` VALUES (615, 554, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.');
INSERT INTO `requirement_item` VALUES (616, 555, 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum.');
INSERT INTO `requirement_item` VALUES (617, 555, 'Aenean fermentum. Donec ut mauris eget massa tempor convallis.');
INSERT INTO `requirement_item` VALUES (618, 555, 'Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst.');
INSERT INTO `requirement_item` VALUES (619, 555, 'Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus.');
INSERT INTO `requirement_item` VALUES (620, 555, 'Curabitur gravida nisi at nibh.');
INSERT INTO `requirement_item` VALUES (621, 555, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.');
INSERT INTO `requirement_item` VALUES (622, 556, 'Duis mattis egestas metus.');
INSERT INTO `requirement_item` VALUES (623, 556, 'Aenean lectus.');
INSERT INTO `requirement_item` VALUES (624, 556, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi.');
INSERT INTO `requirement_item` VALUES (625, 556, 'Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus.');
INSERT INTO `requirement_item` VALUES (626, 556, 'Nunc purus. Phasellus in felis. Donec semper sapien a libero.');
INSERT INTO `requirement_item` VALUES (627, 556, 'Praesent blandit. Nam nulla.');
INSERT INTO `requirement_item` VALUES (628, 557, 'Nulla suscipit ligula in lacus.');
INSERT INTO `requirement_item` VALUES (629, 557, 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.');
INSERT INTO `requirement_item` VALUES (630, 557, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.');
INSERT INTO `requirement_item` VALUES (631, 557, 'Nulla justo.');
INSERT INTO `requirement_item` VALUES (632, 557, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.');
INSERT INTO `requirement_item` VALUES (633, 557, 'In hac habitasse platea dictumst.');
INSERT INTO `requirement_item` VALUES (634, 558, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.');
INSERT INTO `requirement_item` VALUES (635, 558, 'Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit.');
INSERT INTO `requirement_item` VALUES (636, 558, 'Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.');
INSERT INTO `requirement_item` VALUES (637, 558, 'In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.');
INSERT INTO `requirement_item` VALUES (638, 558, 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat.');
INSERT INTO `requirement_item` VALUES (639, 558, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue.');
INSERT INTO `requirement_item` VALUES (640, 559, 'Nullam molestie nibh in lectus. Pellentesque at nulla.');
INSERT INTO `requirement_item` VALUES (641, 559, 'In congue. Etiam justo. Etiam pretium iaculis justo.');
INSERT INTO `requirement_item` VALUES (642, 559, 'In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices.');
INSERT INTO `requirement_item` VALUES (643, 559, 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc.');
INSERT INTO `requirement_item` VALUES (644, 559, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.');
INSERT INTO `requirement_item` VALUES (645, 559, 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl.');
INSERT INTO `requirement_item` VALUES (646, 560, 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.');
INSERT INTO `requirement_item` VALUES (647, 560, 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.');
INSERT INTO `requirement_item` VALUES (648, 560, 'Phasellus in felis.');
INSERT INTO `requirement_item` VALUES (649, 560, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
INSERT INTO `requirement_item` VALUES (650, 560, 'Ut at dolor quis odio consequat varius.');
INSERT INTO `requirement_item` VALUES (651, 560, 'In hac habitasse platea dictumst.');
INSERT INTO `requirement_item` VALUES (652, 561, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy.');
INSERT INTO `requirement_item` VALUES (653, 561, 'Duis bibendum. Morbi non quam nec dui luctus rutrum.');
INSERT INTO `requirement_item` VALUES (654, 561, 'Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.');
INSERT INTO `requirement_item` VALUES (655, 561, 'Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor.');
INSERT INTO `requirement_item` VALUES (656, 561, 'Nunc rhoncus dui vel sem.');
INSERT INTO `requirement_item` VALUES (657, 561, 'Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet.');
INSERT INTO `requirement_item` VALUES (658, 562, 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.');
INSERT INTO `requirement_item` VALUES (659, 562, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi.');
INSERT INTO `requirement_item` VALUES (660, 562, 'Quisque porta volutpat erat.');
INSERT INTO `requirement_item` VALUES (661, 562, 'Nunc purus.');
INSERT INTO `requirement_item` VALUES (662, 562, 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.');
INSERT INTO `requirement_item` VALUES (663, 562, 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl.');
INSERT INTO `requirement_item` VALUES (664, 563, 'Aliquam erat volutpat. In congue.');
INSERT INTO `requirement_item` VALUES (665, 563, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.');
INSERT INTO `requirement_item` VALUES (666, 563, 'Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo.');
INSERT INTO `requirement_item` VALUES (667, 563, 'Nunc rhoncus dui vel sem. Sed sagittis.');
INSERT INTO `requirement_item` VALUES (668, 563, 'Pellentesque eget nunc.');
INSERT INTO `requirement_item` VALUES (669, 563, 'Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.');
INSERT INTO `requirement_item` VALUES (670, 564, 'Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.');
INSERT INTO `requirement_item` VALUES (671, 564, 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
INSERT INTO `requirement_item` VALUES (672, 564, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.');
INSERT INTO `requirement_item` VALUES (673, 564, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend.');
INSERT INTO `requirement_item` VALUES (674, 564, 'Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.');
INSERT INTO `requirement_item` VALUES (675, 564, 'In eleifend quam a odio.');
INSERT INTO `requirement_item` VALUES (676, 565, 'Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.');
INSERT INTO `requirement_item` VALUES (677, 565, 'Vestibulum sed magna at nunc commodo placerat. Praesent blandit.');
INSERT INTO `requirement_item` VALUES (678, 565, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique.');
INSERT INTO `requirement_item` VALUES (679, 565, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.');
INSERT INTO `requirement_item` VALUES (680, 565, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy.');
INSERT INTO `requirement_item` VALUES (681, 565, 'Suspendisse potenti.');
INSERT INTO `requirement_item` VALUES (682, 566, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
INSERT INTO `requirement_item` VALUES (683, 566, 'Donec dapibus.');
INSERT INTO `requirement_item` VALUES (684, 566, 'Nunc purus. Phasellus in felis.');
INSERT INTO `requirement_item` VALUES (685, 566, 'Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
INSERT INTO `requirement_item` VALUES (686, 566, 'Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.');
INSERT INTO `requirement_item` VALUES (687, 566, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
INSERT INTO `requirement_item` VALUES (688, 567, 'Duis at velit eu est congue elementum.');
INSERT INTO `requirement_item` VALUES (689, 567, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.');
INSERT INTO `requirement_item` VALUES (690, 567, 'Donec quis orci eget orci vehicula condimentum.');
INSERT INTO `requirement_item` VALUES (691, 567, 'Aliquam erat volutpat. In congue.');
INSERT INTO `requirement_item` VALUES (692, 567, 'Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula.');
INSERT INTO `requirement_item` VALUES (693, 567, 'Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla.');
INSERT INTO `requirement_item` VALUES (694, 568, 'Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.');
INSERT INTO `requirement_item` VALUES (695, 568, 'Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.');
INSERT INTO `requirement_item` VALUES (696, 568, 'Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit.');
INSERT INTO `requirement_item` VALUES (697, 568, 'Curabitur gravida nisi at nibh.');
INSERT INTO `requirement_item` VALUES (698, 568, 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.');
INSERT INTO `requirement_item` VALUES (699, 568, 'Fusce consequat. Nulla nisl.');
INSERT INTO `requirement_item` VALUES (700, 569, 'Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.');
INSERT INTO `requirement_item` VALUES (701, 569, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.');
INSERT INTO `requirement_item` VALUES (702, 569, 'Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.');
INSERT INTO `requirement_item` VALUES (703, 569, 'Etiam pretium iaculis justo.');
INSERT INTO `requirement_item` VALUES (704, 569, 'Maecenas pulvinar lobortis est.');
INSERT INTO `requirement_item` VALUES (705, 569, 'Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit.');
INSERT INTO `requirement_item` VALUES (706, 570, 'Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum.');
INSERT INTO `requirement_item` VALUES (707, 570, 'Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.');
INSERT INTO `requirement_item` VALUES (708, 570, 'Etiam justo. Etiam pretium iaculis justo.');
INSERT INTO `requirement_item` VALUES (709, 570, 'Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus.');
INSERT INTO `requirement_item` VALUES (710, 570, 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.');
INSERT INTO `requirement_item` VALUES (711, 570, 'Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.');
INSERT INTO `requirement_item` VALUES (712, 571, 'Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.');
INSERT INTO `requirement_item` VALUES (713, 571, 'Aenean lectus. Pellentesque eget nunc.');
INSERT INTO `requirement_item` VALUES (714, 571, 'Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus.');
INSERT INTO `requirement_item` VALUES (715, 571, 'Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus.');
INSERT INTO `requirement_item` VALUES (716, 571, 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.');
INSERT INTO `requirement_item` VALUES (717, 571, 'Integer tincidunt ante vel ipsum.');
INSERT INTO `requirement_item` VALUES (718, 572, 'Pellentesque at nulla. Suspendisse potenti.');
INSERT INTO `requirement_item` VALUES (719, 572, 'Aenean auctor gravida sem.');
INSERT INTO `requirement_item` VALUES (720, 572, 'Proin risus.');
INSERT INTO `requirement_item` VALUES (721, 572, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.');
INSERT INTO `requirement_item` VALUES (722, 572, 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
INSERT INTO `requirement_item` VALUES (723, 572, 'Fusce consequat. Nulla nisl. Nunc nisl.');
INSERT INTO `requirement_item` VALUES (724, 573, 'Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.');
INSERT INTO `requirement_item` VALUES (725, 573, 'Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet.');
INSERT INTO `requirement_item` VALUES (726, 573, 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio.');
INSERT INTO `requirement_item` VALUES (727, 573, 'Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
INSERT INTO `requirement_item` VALUES (728, 573, 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat.');
INSERT INTO `requirement_item` VALUES (729, 573, 'Suspendisse potenti.');
INSERT INTO `requirement_item` VALUES (730, 574, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.');
INSERT INTO `requirement_item` VALUES (731, 574, 'Praesent lectus.');
INSERT INTO `requirement_item` VALUES (732, 574, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.');
INSERT INTO `requirement_item` VALUES (733, 574, 'Aliquam quis turpis eget elit sodales scelerisque.');
INSERT INTO `requirement_item` VALUES (734, 574, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet.');
INSERT INTO `requirement_item` VALUES (735, 574, 'Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.');
INSERT INTO `requirement_item` VALUES (736, 575, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.');
INSERT INTO `requirement_item` VALUES (737, 575, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna.');
INSERT INTO `requirement_item` VALUES (738, 575, 'Donec semper sapien a libero.');
INSERT INTO `requirement_item` VALUES (739, 575, 'Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum.');
INSERT INTO `requirement_item` VALUES (740, 575, 'Duis mattis egestas metus.');
INSERT INTO `requirement_item` VALUES (741, 575, 'Curabitur at ipsum ac tellus semper interdum.');
INSERT INTO `requirement_item` VALUES (742, 576, 'Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.');
INSERT INTO `requirement_item` VALUES (743, 576, 'Integer ac neque. Duis bibendum.');
INSERT INTO `requirement_item` VALUES (744, 576, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien.');
INSERT INTO `requirement_item` VALUES (745, 576, 'In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.');
INSERT INTO `requirement_item` VALUES (746, 576, 'Suspendisse potenti.');
INSERT INTO `requirement_item` VALUES (747, 576, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.');
INSERT INTO `requirement_item` VALUES (748, 577, 'Morbi a ipsum.');
INSERT INTO `requirement_item` VALUES (749, 577, 'Donec posuere metus vitae ipsum. Aliquam non mauris.');
INSERT INTO `requirement_item` VALUES (750, 577, 'Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst.');
INSERT INTO `requirement_item` VALUES (751, 577, 'Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
INSERT INTO `requirement_item` VALUES (752, 577, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus.');
INSERT INTO `requirement_item` VALUES (753, 577, 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante.');
INSERT INTO `requirement_item` VALUES (754, 578, 'Aenean sit amet justo.');
INSERT INTO `requirement_item` VALUES (755, 578, 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.');
INSERT INTO `requirement_item` VALUES (756, 578, 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis.');
INSERT INTO `requirement_item` VALUES (757, 578, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.');
INSERT INTO `requirement_item` VALUES (758, 578, 'Suspendisse potenti.');
INSERT INTO `requirement_item` VALUES (759, 578, 'Mauris sit amet eros.');
INSERT INTO `requirement_item` VALUES (760, 579, 'Quisque porta volutpat erat.');
INSERT INTO `requirement_item` VALUES (761, 579, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.');
INSERT INTO `requirement_item` VALUES (762, 579, 'In hac habitasse platea dictumst.');
INSERT INTO `requirement_item` VALUES (763, 579, 'Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
INSERT INTO `requirement_item` VALUES (764, 579, 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.');
INSERT INTO `requirement_item` VALUES (765, 579, 'Suspendisse ornare consequat lectus.');
INSERT INTO `requirement_item` VALUES (766, 580, 'Vivamus tortor. Duis mattis egestas metus. Aenean fermentum.');
INSERT INTO `requirement_item` VALUES (767, 580, 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.');
INSERT INTO `requirement_item` VALUES (768, 580, 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum.');
INSERT INTO `requirement_item` VALUES (769, 580, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.');
INSERT INTO `requirement_item` VALUES (770, 580, 'Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.');
INSERT INTO `requirement_item` VALUES (771, 580, 'Phasellus sit amet erat.');
INSERT INTO `requirement_item` VALUES (772, 581, 'Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis.');
INSERT INTO `requirement_item` VALUES (773, 581, 'Nullam porttitor lacus at turpis.');
INSERT INTO `requirement_item` VALUES (774, 581, 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque.');
INSERT INTO `requirement_item` VALUES (775, 581, 'Donec dapibus.');
INSERT INTO `requirement_item` VALUES (776, 581, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.');
INSERT INTO `requirement_item` VALUES (777, 581, 'Donec dapibus.');
INSERT INTO `requirement_item` VALUES (778, 582, 'Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis.');
INSERT INTO `requirement_item` VALUES (779, 582, 'In est risus, auctor sed, tristique in, tempus sit amet, sem.');
INSERT INTO `requirement_item` VALUES (780, 582, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
INSERT INTO `requirement_item` VALUES (781, 582, 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.');
INSERT INTO `requirement_item` VALUES (782, 582, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.');
INSERT INTO `requirement_item` VALUES (783, 582, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.');
INSERT INTO `requirement_item` VALUES (784, 583, 'Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus.');
INSERT INTO `requirement_item` VALUES (785, 583, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.');
INSERT INTO `requirement_item` VALUES (786, 583, 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.');
INSERT INTO `requirement_item` VALUES (787, 583, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi.');
INSERT INTO `requirement_item` VALUES (788, 583, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.');
INSERT INTO `requirement_item` VALUES (789, 583, 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.');
INSERT INTO `requirement_item` VALUES (790, 584, 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl.');
INSERT INTO `requirement_item` VALUES (791, 584, 'Proin at turpis a pede posuere nonummy.');
INSERT INTO `requirement_item` VALUES (792, 584, 'Fusce consequat. Nulla nisl. Nunc nisl.');
INSERT INTO `requirement_item` VALUES (793, 584, 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl.');
INSERT INTO `requirement_item` VALUES (794, 584, 'Integer non velit.');
INSERT INTO `requirement_item` VALUES (795, 584, 'Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.');
INSERT INTO `requirement_item` VALUES (796, 585, 'Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.');
INSERT INTO `requirement_item` VALUES (797, 585, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue.');
INSERT INTO `requirement_item` VALUES (798, 585, 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.');
INSERT INTO `requirement_item` VALUES (799, 585, 'Suspendisse potenti.');
INSERT INTO `requirement_item` VALUES (800, 585, 'Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo.');
INSERT INTO `requirement_item` VALUES (801, 585, 'In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
INSERT INTO `requirement_item` VALUES (802, 586, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.');
INSERT INTO `requirement_item` VALUES (803, 586, 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.');
INSERT INTO `requirement_item` VALUES (804, 586, 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.');
INSERT INTO `requirement_item` VALUES (805, 586, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien.');
INSERT INTO `requirement_item` VALUES (806, 586, 'Nunc rhoncus dui vel sem. Sed sagittis.');
INSERT INTO `requirement_item` VALUES (807, 586, 'Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros.');
INSERT INTO `requirement_item` VALUES (808, 587, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.');
INSERT INTO `requirement_item` VALUES (809, 587, 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.');
INSERT INTO `requirement_item` VALUES (810, 587, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
INSERT INTO `requirement_item` VALUES (811, 587, 'Sed ante. Vivamus tortor.');
INSERT INTO `requirement_item` VALUES (812, 587, 'Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.');
INSERT INTO `requirement_item` VALUES (813, 587, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.');
INSERT INTO `requirement_item` VALUES (814, 588, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.');
INSERT INTO `requirement_item` VALUES (815, 588, 'Aenean sit amet justo.');
INSERT INTO `requirement_item` VALUES (816, 588, 'Duis at velit eu est congue elementum.');
INSERT INTO `requirement_item` VALUES (817, 588, 'Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.');
INSERT INTO `requirement_item` VALUES (818, 588, 'Mauris sit amet eros.');
INSERT INTO `requirement_item` VALUES (819, 588, 'Nullam varius.');
INSERT INTO `requirement_item` VALUES (820, 589, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.');
INSERT INTO `requirement_item` VALUES (821, 589, 'Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.');
INSERT INTO `requirement_item` VALUES (822, 589, 'Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.');
INSERT INTO `requirement_item` VALUES (823, 589, 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
INSERT INTO `requirement_item` VALUES (824, 589, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
INSERT INTO `requirement_item` VALUES (825, 589, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.');
INSERT INTO `requirement_item` VALUES (826, 590, 'In hac habitasse platea dictumst.');
INSERT INTO `requirement_item` VALUES (827, 590, 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque.');
INSERT INTO `requirement_item` VALUES (828, 590, 'Morbi quis tortor id nulla ultrices aliquet.');
INSERT INTO `requirement_item` VALUES (829, 590, 'Aliquam non mauris. Morbi non lectus.');
INSERT INTO `requirement_item` VALUES (830, 590, 'Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.');
INSERT INTO `requirement_item` VALUES (831, 590, 'Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat.');
INSERT INTO `requirement_item` VALUES (832, 591, 'Morbi non quam nec dui luctus rutrum. Nulla tellus.');
INSERT INTO `requirement_item` VALUES (833, 591, 'Morbi ut odio.');
INSERT INTO `requirement_item` VALUES (834, 591, 'Donec semper sapien a libero. Nam dui.');
INSERT INTO `requirement_item` VALUES (835, 591, 'Morbi a ipsum. Integer a nibh.');
INSERT INTO `requirement_item` VALUES (836, 591, 'Vivamus in felis eu sapien cursus vestibulum.');
INSERT INTO `requirement_item` VALUES (837, 591, 'Vestibulum rutrum rutrum neque.');
INSERT INTO `requirement_item` VALUES (838, 592, 'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.');
INSERT INTO `requirement_item` VALUES (839, 592, 'Praesent blandit lacinia erat.');
INSERT INTO `requirement_item` VALUES (840, 592, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue.');
INSERT INTO `requirement_item` VALUES (841, 592, 'Nulla ut erat id mauris vulputate elementum.');
INSERT INTO `requirement_item` VALUES (842, 592, 'Nulla nisl. Nunc nisl.');
INSERT INTO `requirement_item` VALUES (843, 592, 'Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.');
INSERT INTO `requirement_item` VALUES (844, 593, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla.');
INSERT INTO `requirement_item` VALUES (845, 593, 'In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices.');
INSERT INTO `requirement_item` VALUES (846, 593, 'Nulla nisl. Nunc nisl.');
INSERT INTO `requirement_item` VALUES (847, 593, 'Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus.');
INSERT INTO `requirement_item` VALUES (848, 593, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue.');
INSERT INTO `requirement_item` VALUES (849, 593, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus.');
INSERT INTO `requirement_item` VALUES (850, 594, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi.');
INSERT INTO `requirement_item` VALUES (851, 594, 'Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.');
INSERT INTO `requirement_item` VALUES (852, 594, 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat.');
INSERT INTO `requirement_item` VALUES (853, 594, 'Praesent id massa id nisl venenatis lacinia.');
INSERT INTO `requirement_item` VALUES (854, 594, 'Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum.');
INSERT INTO `requirement_item` VALUES (855, 594, 'Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.');
INSERT INTO `requirement_item` VALUES (856, 595, 'Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
INSERT INTO `requirement_item` VALUES (857, 595, 'Nulla justo. Aliquam quis turpis eget elit sodales scelerisque.');
INSERT INTO `requirement_item` VALUES (858, 595, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.');
INSERT INTO `requirement_item` VALUES (859, 595, 'Morbi a ipsum.');
INSERT INTO `requirement_item` VALUES (860, 595, 'In sagittis dui vel nisl. Duis ac nibh.');
INSERT INTO `requirement_item` VALUES (861, 595, 'Nulla tellus. In sagittis dui vel nisl.');
INSERT INTO `requirement_item` VALUES (862, 596, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
INSERT INTO `requirement_item` VALUES (863, 596, 'Nulla tellus. In sagittis dui vel nisl. Duis ac nibh.');
INSERT INTO `requirement_item` VALUES (864, 596, 'Morbi a ipsum. Integer a nibh. In quis justo.');
INSERT INTO `requirement_item` VALUES (865, 596, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.');
INSERT INTO `requirement_item` VALUES (866, 596, 'Praesent blandit lacinia erat.');
INSERT INTO `requirement_item` VALUES (867, 596, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
INSERT INTO `requirement_item` VALUES (868, 597, 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum.');
INSERT INTO `requirement_item` VALUES (869, 597, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis.');
INSERT INTO `requirement_item` VALUES (870, 597, 'Integer tincidunt ante vel ipsum.');
INSERT INTO `requirement_item` VALUES (871, 597, 'Morbi non lectus.');
INSERT INTO `requirement_item` VALUES (872, 597, 'Suspendisse potenti.');
INSERT INTO `requirement_item` VALUES (873, 597, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.');
INSERT INTO `requirement_item` VALUES (874, 598, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend.');
INSERT INTO `requirement_item` VALUES (875, 598, 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.');
INSERT INTO `requirement_item` VALUES (876, 598, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.');
INSERT INTO `requirement_item` VALUES (877, 598, 'Integer a nibh.');
INSERT INTO `requirement_item` VALUES (878, 598, 'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia.');
INSERT INTO `requirement_item` VALUES (879, 598, 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
INSERT INTO `requirement_item` VALUES (880, 599, 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.');
INSERT INTO `requirement_item` VALUES (881, 599, 'Proin interdum mauris non ligula pellentesque ultrices.');
INSERT INTO `requirement_item` VALUES (882, 599, 'Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.');
INSERT INTO `requirement_item` VALUES (883, 599, 'In sagittis dui vel nisl.');
INSERT INTO `requirement_item` VALUES (884, 599, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue.');
INSERT INTO `requirement_item` VALUES (885, 599, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue.');
INSERT INTO `requirement_item` VALUES (886, 600, 'Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula.');
INSERT INTO `requirement_item` VALUES (887, 600, 'Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius.');
INSERT INTO `requirement_item` VALUES (888, 600, 'Sed accumsan felis. Ut at dolor quis odio consequat varius.');
INSERT INTO `requirement_item` VALUES (889, 600, 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.');
INSERT INTO `requirement_item` VALUES (890, 600, 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.');
INSERT INTO `requirement_item` VALUES (891, 600, 'Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum.');
INSERT INTO `requirement_item` VALUES (892, 601, 'Morbi non lectus.');
INSERT INTO `requirement_item` VALUES (893, 601, 'Nulla suscipit ligula in lacus.');
INSERT INTO `requirement_item` VALUES (894, 601, 'Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo.');
INSERT INTO `requirement_item` VALUES (895, 601, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.');
INSERT INTO `requirement_item` VALUES (896, 601, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.');
INSERT INTO `requirement_item` VALUES (897, 601, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.');
INSERT INTO `requirement_item` VALUES (898, 602, 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique.');
INSERT INTO `requirement_item` VALUES (899, 602, 'Donec posuere metus vitae ipsum. Aliquam non mauris.');
INSERT INTO `requirement_item` VALUES (900, 602, 'Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit.');
INSERT INTO `requirement_item` VALUES (901, 602, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.');
INSERT INTO `requirement_item` VALUES (902, 602, 'Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus.');
INSERT INTO `requirement_item` VALUES (903, 602, 'Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo.');

-- ----------------------------
-- Table structure for role_content
-- ----------------------------
DROP TABLE IF EXISTS `role_content`;
CREATE TABLE `role_content`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_id` int NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role_content_job_id_index`(`job_id` ASC) USING BTREE,
  CONSTRAINT `role_content_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `job_detail` (`job_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 206 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_content
-- ----------------------------
INSERT INTO `role_content` VALUES (154, 554, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.\n\nNullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.');
INSERT INTO `role_content` VALUES (155, 555, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.');
INSERT INTO `role_content` VALUES (156, 556, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.');
INSERT INTO `role_content` VALUES (157, 557, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.');
INSERT INTO `role_content` VALUES (158, 558, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.');
INSERT INTO `role_content` VALUES (159, 559, 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.');
INSERT INTO `role_content` VALUES (160, 560, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.\n\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.');
INSERT INTO `role_content` VALUES (161, 561, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.\n\nVestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.');
INSERT INTO `role_content` VALUES (162, 562, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\n\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
INSERT INTO `role_content` VALUES (163, 563, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.');
INSERT INTO `role_content` VALUES (164, 564, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.');
INSERT INTO `role_content` VALUES (165, 565, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.');
INSERT INTO `role_content` VALUES (166, 566, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
INSERT INTO `role_content` VALUES (167, 567, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.\n\nPraesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.');
INSERT INTO `role_content` VALUES (168, 568, 'Fusce consequat. Nulla nisl. Nunc nisl.');
INSERT INTO `role_content` VALUES (169, 569, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.');
INSERT INTO `role_content` VALUES (170, 570, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\n\nDuis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.');
INSERT INTO `role_content` VALUES (171, 571, 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.');
INSERT INTO `role_content` VALUES (172, 572, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.\n\nNullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.');
INSERT INTO `role_content` VALUES (173, 573, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.');
INSERT INTO `role_content` VALUES (174, 574, 'In congue. Etiam justo. Etiam pretium iaculis justo.');
INSERT INTO `role_content` VALUES (175, 575, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\n\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.');
INSERT INTO `role_content` VALUES (176, 576, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.');
INSERT INTO `role_content` VALUES (177, 577, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.');
INSERT INTO `role_content` VALUES (178, 578, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.');
INSERT INTO `role_content` VALUES (179, 579, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\n\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
INSERT INTO `role_content` VALUES (180, 580, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\n\nIn congue. Etiam justo. Etiam pretium iaculis justo.');
INSERT INTO `role_content` VALUES (181, 581, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.');
INSERT INTO `role_content` VALUES (182, 582, 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.');
INSERT INTO `role_content` VALUES (183, 583, 'Fusce consequat. Nulla nisl. Nunc nisl.');
INSERT INTO `role_content` VALUES (184, 584, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
INSERT INTO `role_content` VALUES (185, 585, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
INSERT INTO `role_content` VALUES (186, 586, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.\n\nPraesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.');
INSERT INTO `role_content` VALUES (187, 587, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\n\nIn congue. Etiam justo. Etiam pretium iaculis justo.');
INSERT INTO `role_content` VALUES (188, 588, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\n\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
INSERT INTO `role_content` VALUES (189, 589, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.');
INSERT INTO `role_content` VALUES (190, 590, 'Fusce consequat. Nulla nisl. Nunc nisl.\n\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.');
INSERT INTO `role_content` VALUES (191, 591, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\n\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
INSERT INTO `role_content` VALUES (192, 592, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.\n\nNullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.');
INSERT INTO `role_content` VALUES (193, 593, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.');
INSERT INTO `role_content` VALUES (194, 594, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
INSERT INTO `role_content` VALUES (195, 595, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.');
INSERT INTO `role_content` VALUES (196, 596, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.');
INSERT INTO `role_content` VALUES (197, 597, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.');
INSERT INTO `role_content` VALUES (198, 598, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.');
INSERT INTO `role_content` VALUES (199, 599, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
INSERT INTO `role_content` VALUES (200, 600, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
INSERT INTO `role_content` VALUES (201, 601, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
INSERT INTO `role_content` VALUES (202, 602, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.');

-- ----------------------------
-- Table structure for role_item
-- ----------------------------
DROP TABLE IF EXISTS `role_item`;
CREATE TABLE `role_item`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_id` int NOT NULL,
  `item` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `job_id`(`job_id` ASC) USING BTREE,
  CONSTRAINT `role_item_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `role_content` (`job_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 926 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_item
-- ----------------------------
INSERT INTO `role_item` VALUES (621, 554, 'Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.');
INSERT INTO `role_item` VALUES (622, 554, 'Donec ut dolor.');
INSERT INTO `role_item` VALUES (623, 554, 'In blandit ultrices enim.');
INSERT INTO `role_item` VALUES (624, 554, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.');
INSERT INTO `role_item` VALUES (625, 554, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.');
INSERT INTO `role_item` VALUES (626, 554, 'Donec ut mauris eget massa tempor convallis.');
INSERT INTO `role_item` VALUES (627, 555, 'Morbi ut odio.');
INSERT INTO `role_item` VALUES (628, 555, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.');
INSERT INTO `role_item` VALUES (629, 555, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.');
INSERT INTO `role_item` VALUES (630, 555, 'Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.');
INSERT INTO `role_item` VALUES (631, 555, 'Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo.');
INSERT INTO `role_item` VALUES (632, 555, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.');
INSERT INTO `role_item` VALUES (633, 556, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.');
INSERT INTO `role_item` VALUES (634, 556, 'Vivamus in felis eu sapien cursus vestibulum.');
INSERT INTO `role_item` VALUES (635, 556, 'Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna.');
INSERT INTO `role_item` VALUES (636, 556, 'Morbi a ipsum. Integer a nibh.');
INSERT INTO `role_item` VALUES (637, 556, 'In blandit ultrices enim.');
INSERT INTO `role_item` VALUES (638, 556, 'Praesent blandit. Nam nulla.');
INSERT INTO `role_item` VALUES (639, 557, 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.');
INSERT INTO `role_item` VALUES (640, 557, 'Suspendisse potenti. Nullam porttitor lacus at turpis.');
INSERT INTO `role_item` VALUES (641, 557, 'Suspendisse ornare consequat lectus.');
INSERT INTO `role_item` VALUES (642, 557, 'Nulla facilisi. Cras non velit nec nisi vulputate nonummy.');
INSERT INTO `role_item` VALUES (643, 557, 'Aenean sit amet justo.');
INSERT INTO `role_item` VALUES (644, 557, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique.');
INSERT INTO `role_item` VALUES (645, 558, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.');
INSERT INTO `role_item` VALUES (646, 558, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.');
INSERT INTO `role_item` VALUES (647, 558, 'Sed ante. Vivamus tortor.');
INSERT INTO `role_item` VALUES (648, 558, 'Quisque porta volutpat erat.');
INSERT INTO `role_item` VALUES (649, 558, 'Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.');
INSERT INTO `role_item` VALUES (650, 558, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
INSERT INTO `role_item` VALUES (651, 559, 'Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros.');
INSERT INTO `role_item` VALUES (652, 559, 'Fusce posuere felis sed lacus.');
INSERT INTO `role_item` VALUES (653, 559, 'Vestibulum sed magna at nunc commodo placerat.');
INSERT INTO `role_item` VALUES (654, 559, 'Integer ac leo.');
INSERT INTO `role_item` VALUES (655, 559, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna.');
INSERT INTO `role_item` VALUES (656, 559, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.');
INSERT INTO `role_item` VALUES (657, 560, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.');
INSERT INTO `role_item` VALUES (658, 560, 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.');
INSERT INTO `role_item` VALUES (659, 560, 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.');
INSERT INTO `role_item` VALUES (660, 560, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.');
INSERT INTO `role_item` VALUES (661, 560, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.');
INSERT INTO `role_item` VALUES (662, 560, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.');
INSERT INTO `role_item` VALUES (663, 561, 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula.');
INSERT INTO `role_item` VALUES (664, 561, 'Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.');
INSERT INTO `role_item` VALUES (665, 561, 'Etiam faucibus cursus urna.');
INSERT INTO `role_item` VALUES (666, 561, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.');
INSERT INTO `role_item` VALUES (667, 561, 'Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat.');
INSERT INTO `role_item` VALUES (668, 561, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.');
INSERT INTO `role_item` VALUES (669, 562, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor.');
INSERT INTO `role_item` VALUES (670, 562, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
INSERT INTO `role_item` VALUES (671, 562, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
INSERT INTO `role_item` VALUES (672, 562, 'Etiam faucibus cursus urna. Ut tellus.');
INSERT INTO `role_item` VALUES (673, 562, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy.');
INSERT INTO `role_item` VALUES (674, 562, 'Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit.');
INSERT INTO `role_item` VALUES (675, 563, 'Aliquam erat volutpat. In congue. Etiam justo.');
INSERT INTO `role_item` VALUES (676, 563, 'Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl.');
INSERT INTO `role_item` VALUES (677, 563, 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.');
INSERT INTO `role_item` VALUES (678, 563, 'Pellentesque ultrices mattis odio.');
INSERT INTO `role_item` VALUES (679, 563, 'Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius.');
INSERT INTO `role_item` VALUES (680, 563, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy.');
INSERT INTO `role_item` VALUES (681, 564, 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.');
INSERT INTO `role_item` VALUES (682, 564, 'Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla.');
INSERT INTO `role_item` VALUES (683, 564, 'Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.');
INSERT INTO `role_item` VALUES (684, 564, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.');
INSERT INTO `role_item` VALUES (685, 564, 'Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.');
INSERT INTO `role_item` VALUES (686, 564, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
INSERT INTO `role_item` VALUES (687, 565, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
INSERT INTO `role_item` VALUES (688, 565, 'Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo.');
INSERT INTO `role_item` VALUES (689, 565, 'Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.');
INSERT INTO `role_item` VALUES (690, 565, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.');
INSERT INTO `role_item` VALUES (691, 565, 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.');
INSERT INTO `role_item` VALUES (692, 565, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet.');
INSERT INTO `role_item` VALUES (693, 566, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.');
INSERT INTO `role_item` VALUES (694, 566, 'Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo.');
INSERT INTO `role_item` VALUES (695, 566, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.');
INSERT INTO `role_item` VALUES (696, 566, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.');
INSERT INTO `role_item` VALUES (697, 566, 'Morbi a ipsum. Integer a nibh. In quis justo.');
INSERT INTO `role_item` VALUES (698, 566, 'Suspendisse potenti. Cras in purus eu magna vulputate luctus.');
INSERT INTO `role_item` VALUES (699, 567, 'Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor.');
INSERT INTO `role_item` VALUES (700, 567, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.');
INSERT INTO `role_item` VALUES (701, 567, 'Morbi a ipsum. Integer a nibh. In quis justo.');
INSERT INTO `role_item` VALUES (702, 567, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet.');
INSERT INTO `role_item` VALUES (703, 567, 'Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.');
INSERT INTO `role_item` VALUES (704, 567, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.');
INSERT INTO `role_item` VALUES (705, 568, 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue.');
INSERT INTO `role_item` VALUES (706, 568, 'Aliquam quis turpis eget elit sodales scelerisque.');
INSERT INTO `role_item` VALUES (707, 568, 'Curabitur at ipsum ac tellus semper interdum.');
INSERT INTO `role_item` VALUES (708, 568, 'Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla.');
INSERT INTO `role_item` VALUES (709, 568, 'Donec ut dolor.');
INSERT INTO `role_item` VALUES (710, 568, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.');
INSERT INTO `role_item` VALUES (711, 569, 'Nullam varius. Nulla facilisi.');
INSERT INTO `role_item` VALUES (712, 569, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.');
INSERT INTO `role_item` VALUES (713, 569, 'Curabitur at ipsum ac tellus semper interdum.');
INSERT INTO `role_item` VALUES (714, 569, 'Nulla mollis molestie lorem.');
INSERT INTO `role_item` VALUES (715, 569, 'Curabitur convallis.');
INSERT INTO `role_item` VALUES (716, 569, 'Maecenas pulvinar lobortis est.');
INSERT INTO `role_item` VALUES (717, 570, 'Sed ante. Vivamus tortor.');
INSERT INTO `role_item` VALUES (718, 570, 'Vivamus tortor. Duis mattis egestas metus. Aenean fermentum.');
INSERT INTO `role_item` VALUES (719, 570, 'Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.');
INSERT INTO `role_item` VALUES (720, 570, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.');
INSERT INTO `role_item` VALUES (721, 570, 'Vivamus in felis eu sapien cursus vestibulum.');
INSERT INTO `role_item` VALUES (722, 570, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.');
INSERT INTO `role_item` VALUES (723, 571, 'Nulla tellus. In sagittis dui vel nisl.');
INSERT INTO `role_item` VALUES (724, 571, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus.');
INSERT INTO `role_item` VALUES (725, 571, 'Nulla mollis molestie lorem. Quisque ut erat.');
INSERT INTO `role_item` VALUES (726, 571, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.');
INSERT INTO `role_item` VALUES (727, 571, 'Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.');
INSERT INTO `role_item` VALUES (728, 571, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.');
INSERT INTO `role_item` VALUES (729, 572, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue.');
INSERT INTO `role_item` VALUES (730, 572, 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.');
INSERT INTO `role_item` VALUES (731, 572, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.');
INSERT INTO `role_item` VALUES (732, 572, 'In congue. Etiam justo.');
INSERT INTO `role_item` VALUES (733, 572, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi.');
INSERT INTO `role_item` VALUES (734, 572, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.');
INSERT INTO `role_item` VALUES (735, 573, 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.');
INSERT INTO `role_item` VALUES (736, 573, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue.');
INSERT INTO `role_item` VALUES (737, 573, 'Nullam molestie nibh in lectus. Pellentesque at nulla.');
INSERT INTO `role_item` VALUES (738, 573, 'Ut tellus.');
INSERT INTO `role_item` VALUES (739, 573, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
INSERT INTO `role_item` VALUES (740, 573, 'Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti.');
INSERT INTO `role_item` VALUES (741, 574, 'Nam nulla.');
INSERT INTO `role_item` VALUES (742, 574, 'Nunc rhoncus dui vel sem.');
INSERT INTO `role_item` VALUES (743, 574, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo.');
INSERT INTO `role_item` VALUES (744, 574, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi.');
INSERT INTO `role_item` VALUES (745, 574, 'Integer ac neque.');
INSERT INTO `role_item` VALUES (746, 574, 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.');
INSERT INTO `role_item` VALUES (747, 575, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
INSERT INTO `role_item` VALUES (748, 575, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.');
INSERT INTO `role_item` VALUES (749, 575, 'Morbi a ipsum.');
INSERT INTO `role_item` VALUES (750, 575, 'In est risus, auctor sed, tristique in, tempus sit amet, sem.');
INSERT INTO `role_item` VALUES (751, 575, 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.');
INSERT INTO `role_item` VALUES (752, 575, 'Integer a nibh. In quis justo.');
INSERT INTO `role_item` VALUES (753, 576, 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.');
INSERT INTO `role_item` VALUES (754, 576, 'Quisque id justo sit amet sapien dignissim vestibulum.');
INSERT INTO `role_item` VALUES (755, 576, 'Curabitur gravida nisi at nibh.');
INSERT INTO `role_item` VALUES (756, 576, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
INSERT INTO `role_item` VALUES (757, 576, 'Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.');
INSERT INTO `role_item` VALUES (758, 576, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.');
INSERT INTO `role_item` VALUES (759, 577, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.');
INSERT INTO `role_item` VALUES (760, 577, 'Maecenas tincidunt lacus at velit.');
INSERT INTO `role_item` VALUES (761, 577, 'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia.');
INSERT INTO `role_item` VALUES (762, 577, 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.');
INSERT INTO `role_item` VALUES (763, 577, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.');
INSERT INTO `role_item` VALUES (764, 577, 'Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.');
INSERT INTO `role_item` VALUES (765, 578, 'Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis.');
INSERT INTO `role_item` VALUES (766, 578, 'Donec semper sapien a libero.');
INSERT INTO `role_item` VALUES (767, 578, 'Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis.');
INSERT INTO `role_item` VALUES (768, 578, 'Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo.');
INSERT INTO `role_item` VALUES (769, 578, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.');
INSERT INTO `role_item` VALUES (770, 578, 'Aliquam erat volutpat.');
INSERT INTO `role_item` VALUES (771, 579, 'Nulla mollis molestie lorem. Quisque ut erat.');
INSERT INTO `role_item` VALUES (772, 579, 'Praesent id massa id nisl venenatis lacinia.');
INSERT INTO `role_item` VALUES (773, 579, 'Praesent blandit.');
INSERT INTO `role_item` VALUES (774, 579, 'Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit.');
INSERT INTO `role_item` VALUES (775, 579, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum.');
INSERT INTO `role_item` VALUES (776, 579, 'Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.');
INSERT INTO `role_item` VALUES (777, 580, 'Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla.');
INSERT INTO `role_item` VALUES (778, 580, 'In quis justo.');
INSERT INTO `role_item` VALUES (779, 580, 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl.');
INSERT INTO `role_item` VALUES (780, 580, 'Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy.');
INSERT INTO `role_item` VALUES (781, 580, 'Donec posuere metus vitae ipsum.');
INSERT INTO `role_item` VALUES (782, 580, 'Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla.');
INSERT INTO `role_item` VALUES (783, 581, 'Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.');
INSERT INTO `role_item` VALUES (784, 581, 'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia.');
INSERT INTO `role_item` VALUES (785, 581, 'Proin risus.');
INSERT INTO `role_item` VALUES (786, 581, 'Nullam sit amet turpis elementum ligula vehicula consequat.');
INSERT INTO `role_item` VALUES (787, 581, 'Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.');
INSERT INTO `role_item` VALUES (788, 581, 'Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.');
INSERT INTO `role_item` VALUES (789, 582, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.');
INSERT INTO `role_item` VALUES (790, 582, 'Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis.');
INSERT INTO `role_item` VALUES (791, 582, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.');
INSERT INTO `role_item` VALUES (792, 582, 'Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam. Nam tristique tortor eu pede.');
INSERT INTO `role_item` VALUES (793, 582, 'Maecenas ut massa quis augue luctus tincidunt.');
INSERT INTO `role_item` VALUES (794, 582, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.');
INSERT INTO `role_item` VALUES (795, 583, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis.');
INSERT INTO `role_item` VALUES (796, 583, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.');
INSERT INTO `role_item` VALUES (797, 583, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus.');
INSERT INTO `role_item` VALUES (798, 583, 'Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia.');
INSERT INTO `role_item` VALUES (799, 583, 'Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.');
INSERT INTO `role_item` VALUES (800, 583, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.');
INSERT INTO `role_item` VALUES (801, 584, 'Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam. Nam tristique tortor eu pede.');
INSERT INTO `role_item` VALUES (802, 584, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.');
INSERT INTO `role_item` VALUES (803, 584, 'Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.');
INSERT INTO `role_item` VALUES (804, 584, 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum.');
INSERT INTO `role_item` VALUES (805, 584, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.');
INSERT INTO `role_item` VALUES (806, 584, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.');
INSERT INTO `role_item` VALUES (807, 585, 'Vivamus vel nulla eget eros elementum pellentesque.');
INSERT INTO `role_item` VALUES (808, 585, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.');
INSERT INTO `role_item` VALUES (809, 585, 'Etiam justo.');
INSERT INTO `role_item` VALUES (810, 585, 'Nulla tellus. In sagittis dui vel nisl. Duis ac nibh.');
INSERT INTO `role_item` VALUES (811, 585, 'Donec dapibus.');
INSERT INTO `role_item` VALUES (812, 585, 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.');
INSERT INTO `role_item` VALUES (813, 586, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.');
INSERT INTO `role_item` VALUES (814, 586, 'In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices.');
INSERT INTO `role_item` VALUES (815, 586, 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.');
INSERT INTO `role_item` VALUES (816, 586, 'Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.');
INSERT INTO `role_item` VALUES (817, 586, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.');
INSERT INTO `role_item` VALUES (818, 586, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.');
INSERT INTO `role_item` VALUES (819, 587, 'In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices.');
INSERT INTO `role_item` VALUES (820, 587, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo.');
INSERT INTO `role_item` VALUES (821, 587, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.');
INSERT INTO `role_item` VALUES (822, 587, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.');
INSERT INTO `role_item` VALUES (823, 587, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.');
INSERT INTO `role_item` VALUES (824, 587, 'Nulla tellus.');
INSERT INTO `role_item` VALUES (825, 588, 'Aliquam non mauris.');
INSERT INTO `role_item` VALUES (826, 588, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet.');
INSERT INTO `role_item` VALUES (827, 588, 'Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
INSERT INTO `role_item` VALUES (828, 588, 'Aliquam quis turpis eget elit sodales scelerisque.');
INSERT INTO `role_item` VALUES (829, 588, 'Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum.');
INSERT INTO `role_item` VALUES (830, 588, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla.');
INSERT INTO `role_item` VALUES (831, 589, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum.');
INSERT INTO `role_item` VALUES (832, 589, 'Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum.');
INSERT INTO `role_item` VALUES (833, 589, 'Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh.');
INSERT INTO `role_item` VALUES (834, 589, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices.');
INSERT INTO `role_item` VALUES (835, 589, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices.');
INSERT INTO `role_item` VALUES (836, 589, 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.');
INSERT INTO `role_item` VALUES (837, 590, 'Suspendisse potenti.');
INSERT INTO `role_item` VALUES (838, 590, 'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.');
INSERT INTO `role_item` VALUES (839, 590, 'In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.');
INSERT INTO `role_item` VALUES (840, 590, 'Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis.');
INSERT INTO `role_item` VALUES (841, 590, 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.');
INSERT INTO `role_item` VALUES (842, 590, 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
INSERT INTO `role_item` VALUES (843, 591, 'Aliquam sit amet diam in magna bibendum imperdiet.');
INSERT INTO `role_item` VALUES (844, 591, 'Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.');
INSERT INTO `role_item` VALUES (845, 591, 'Nullam porttitor lacus at turpis.');
INSERT INTO `role_item` VALUES (846, 591, 'Praesent blandit. Nam nulla.');
INSERT INTO `role_item` VALUES (847, 591, 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.');
INSERT INTO `role_item` VALUES (848, 591, 'Nulla mollis molestie lorem. Quisque ut erat.');
INSERT INTO `role_item` VALUES (849, 592, 'Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.');
INSERT INTO `role_item` VALUES (850, 592, 'Nullam molestie nibh in lectus.');
INSERT INTO `role_item` VALUES (851, 592, 'In sagittis dui vel nisl. Duis ac nibh.');
INSERT INTO `role_item` VALUES (852, 592, 'Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam. Nam tristique tortor eu pede.');
INSERT INTO `role_item` VALUES (853, 592, 'Pellentesque at nulla. Suspendisse potenti.');
INSERT INTO `role_item` VALUES (854, 592, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.');
INSERT INTO `role_item` VALUES (855, 593, 'Curabitur gravida nisi at nibh.');
INSERT INTO `role_item` VALUES (856, 593, 'Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.');
INSERT INTO `role_item` VALUES (857, 593, 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla.');
INSERT INTO `role_item` VALUES (858, 593, 'Etiam pretium iaculis justo.');
INSERT INTO `role_item` VALUES (859, 593, 'Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla.');
INSERT INTO `role_item` VALUES (860, 593, 'In eleifend quam a odio. In hac habitasse platea dictumst.');
INSERT INTO `role_item` VALUES (861, 594, 'In hac habitasse platea dictumst.');
INSERT INTO `role_item` VALUES (862, 594, 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.');
INSERT INTO `role_item` VALUES (863, 594, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
INSERT INTO `role_item` VALUES (864, 594, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.');
INSERT INTO `role_item` VALUES (865, 594, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
INSERT INTO `role_item` VALUES (866, 594, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.');
INSERT INTO `role_item` VALUES (867, 595, 'In congue. Etiam justo. Etiam pretium iaculis justo.');
INSERT INTO `role_item` VALUES (868, 595, 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl.');
INSERT INTO `role_item` VALUES (869, 595, 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque.');
INSERT INTO `role_item` VALUES (870, 595, 'Etiam vel augue.');
INSERT INTO `role_item` VALUES (871, 595, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.');
INSERT INTO `role_item` VALUES (872, 595, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.');
INSERT INTO `role_item` VALUES (873, 596, 'Etiam vel augue.');
INSERT INTO `role_item` VALUES (874, 596, 'In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem.');
INSERT INTO `role_item` VALUES (875, 596, 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis.');
INSERT INTO `role_item` VALUES (876, 596, 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.');
INSERT INTO `role_item` VALUES (877, 596, 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc.');
INSERT INTO `role_item` VALUES (878, 596, 'Nullam varius. Nulla facilisi.');
INSERT INTO `role_item` VALUES (879, 597, 'Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.');
INSERT INTO `role_item` VALUES (880, 597, 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.');
INSERT INTO `role_item` VALUES (881, 597, 'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.');
INSERT INTO `role_item` VALUES (882, 597, 'Aenean sit amet justo. Morbi ut odio.');
INSERT INTO `role_item` VALUES (883, 597, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus.');
INSERT INTO `role_item` VALUES (884, 597, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi.');
INSERT INTO `role_item` VALUES (885, 598, 'Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor.');
INSERT INTO `role_item` VALUES (886, 598, 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.');
INSERT INTO `role_item` VALUES (887, 598, 'Proin risus. Praesent lectus.');
INSERT INTO `role_item` VALUES (888, 598, 'Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.');
INSERT INTO `role_item` VALUES (889, 598, 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.');
INSERT INTO `role_item` VALUES (890, 598, 'In hac habitasse platea dictumst.');
INSERT INTO `role_item` VALUES (891, 599, 'In eleifend quam a odio.');
INSERT INTO `role_item` VALUES (892, 599, 'Integer ac neque. Duis bibendum.');
INSERT INTO `role_item` VALUES (893, 599, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat.');
INSERT INTO `role_item` VALUES (894, 599, 'Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.');
INSERT INTO `role_item` VALUES (895, 599, 'Duis bibendum. Morbi non quam nec dui luctus rutrum.');
INSERT INTO `role_item` VALUES (896, 599, 'Donec quis orci eget orci vehicula condimentum.');
INSERT INTO `role_item` VALUES (897, 600, 'Maecenas pulvinar lobortis est.');
INSERT INTO `role_item` VALUES (898, 600, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.');
INSERT INTO `role_item` VALUES (899, 600, 'In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.');
INSERT INTO `role_item` VALUES (900, 600, 'Pellentesque ultrices mattis odio.');
INSERT INTO `role_item` VALUES (901, 600, 'Aenean sit amet justo. Morbi ut odio.');
INSERT INTO `role_item` VALUES (902, 600, 'Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.');
INSERT INTO `role_item` VALUES (903, 601, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.');
INSERT INTO `role_item` VALUES (904, 601, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.');
INSERT INTO `role_item` VALUES (905, 601, 'Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla.');
INSERT INTO `role_item` VALUES (906, 601, 'Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl.');
INSERT INTO `role_item` VALUES (907, 601, 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.');
INSERT INTO `role_item` VALUES (908, 601, 'Praesent blandit. Nam nulla.');
INSERT INTO `role_item` VALUES (909, 602, 'Curabitur at ipsum ac tellus semper interdum.');
INSERT INTO `role_item` VALUES (910, 602, 'Suspendisse ornare consequat lectus.');
INSERT INTO `role_item` VALUES (911, 602, 'Aenean sit amet justo.');
INSERT INTO `role_item` VALUES (912, 602, 'Quisque ut erat. Curabitur gravida nisi at nibh.');
INSERT INTO `role_item` VALUES (913, 602, 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim.');
INSERT INTO `role_item` VALUES (914, 602, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.');
INSERT INTO `role_item` VALUES (917, 576, 'test');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lastname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mail` varchar(75) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `company` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'demandeur',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `company`(`company` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 177 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (111, 'Anthonin', 'Colas', 'admin@admin.admin', 'Mastercraft', '$2y$10$E8/6piwYwaUu5WBK2UsyzuqQTyNpHvOR4Ml/sYbe54aGd3O/Tj5Ku', 'ROLE_ADMIN');
INSERT INTO `user` VALUES (144, 'test', 'test', 'test@est.com', 'Multifold', '$2y$10$shKeWUVhiEcLgHX1riBXYOVQsf7sOgR5/OyMckEUjswejKK029l0a', 'ROLE_RECRUTEUR');
INSERT INTO `user` VALUES (147, 'antho', 'colas', 'anthonincolaspro@gmail.com', 'undefined', '$2y$10$PzVprsxO2oNA7JerTB/UQuIqDjF3R0dARtYm4359qr2i4eHfX1FLe', 'ROLE_USER');
INSERT INTO `user` VALUES (156, 'Devjobs', 'Devjobs', 'Devjobs.pro@devjobs.com', 'Devjobs', '$2y$10$2aj/CsNldQXV6BGccWSZx.74cdnbXHT/5JWveqircp7wdl066n19i', 'ROLE_RECRUTEUR');
INSERT INTO `user` VALUES (158, 'Thierry', 'COLAS', 'T.colas1902@gmail.com', 'Nuances Deco', '$2y$10$0InRkEvyLXGYgJhGl9vHuOVoiMYjLgyP4N3EaA8H1bCdRRVr4TrEu', 'ROLE_RECRUTEUR');
INSERT INTO `user` VALUES (166, 'André', 'Morineau', 'A.Morineau@gmail.com', 'Art\'RénovA', '$2y$10$soSvlx2BPuibeqzjpo.zy.L8hXwFjw7eaRb3s8.pxqATIQUbyalNm', 'ROLE_RECRUTEUR');
INSERT INTO `user` VALUES (169, 'fantosio', 'chai', 'test@tulalal.com', 'Vector', '$2y$10$gCz6agP9XBkrArJT7kJqLuwLXb.l53ZcBxrELJ7m5HxtE6xOBNYCy', 'ROLE_RECRUTEUR');
INSERT INTO `user` VALUES (170, 'mickael', 'auger', 'leOG@gmail.com', 'undefined', '$2y$10$G5wVGus6OxQmQNmKjqj4ruBJctC.PlRauuWDcvOlARn92U0tByYj2', 'ROLE_USER');
INSERT INTO `user` VALUES (173, 'antho', 'logi', 'anthologi@gogi.com', 'undefined', '$2y$10$8re8OrFPlZ.qTq3f8FRpzO2Pj2EGGKI21DNYwBw6qzx.gLJQ7GtpC', 'ROLE_USER');
INSERT INTO `user` VALUES (174, 'Anthonin', 'Colas', 'co@co.co', 'Spotify', '$2y$10$KAkL0h6DNNauJPsZ6Ip/oeE55bdWG6AyxW32l.JbygqVe55EAG0kG', 'ROLE_RECRUTEUR');
INSERT INTO `user` VALUES (175, 'William', 'Bréhier', 'joedoe@j.com', 'William Bréhier', '$2y$10$YjnAfkJb2ZG2RwbrQG6LkunVtRswVDmyAY6PaqUxSmVaQKcHr2/OC', 'ROLE_RECRUTEUR');

SET FOREIGN_KEY_CHECKS = 1;
