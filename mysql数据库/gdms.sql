/*
Navicat MySQL Data Transfer

Source Server         : mysql5.6
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : gdms

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2020-07-02 16:22:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
INSERT INTO `auth_group` VALUES ('3', 'is_manager');
INSERT INTO `auth_group` VALUES ('1', 'students');
INSERT INTO `auth_group` VALUES ('2', 'teachers');

-- ----------------------------
-- Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
INSERT INTO `auth_group_permissions` VALUES ('4', '1', '23');
INSERT INTO `auth_group_permissions` VALUES ('1', '1', '25');
INSERT INTO `auth_group_permissions` VALUES ('5', '2', '27');
INSERT INTO `auth_group_permissions` VALUES ('2', '2', '29');
INSERT INTO `auth_group_permissions` VALUES ('3', '3', '36');

-- ----------------------------
-- Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add user', '3', 'add_user');
INSERT INTO `auth_permission` VALUES ('8', 'Can change user', '3', 'change_user');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete user', '3', 'delete_user');
INSERT INTO `auth_permission` VALUES ('10', 'Can add group', '4', 'add_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can change group', '4', 'change_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete group', '4', 'delete_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add 公告', '7', 'add_notice');
INSERT INTO `auth_permission` VALUES ('20', 'Can change 公告', '7', 'change_notice');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete 公告', '7', 'delete_notice');
INSERT INTO `auth_permission` VALUES ('22', 'Can add 学生资料', '8', 'add_studentinfo');
INSERT INTO `auth_permission` VALUES ('23', 'Can change 学生资料', '8', 'change_studentinfo');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete 学生资料', '8', 'delete_studentinfo');
INSERT INTO `auth_permission` VALUES ('25', 'is a student', '8', 'is_student');
INSERT INTO `auth_permission` VALUES ('26', 'Can add 教师信息', '9', 'add_teacherinfo');
INSERT INTO `auth_permission` VALUES ('27', 'Can change 教师信息', '9', 'change_teacherinfo');
INSERT INTO `auth_permission` VALUES ('28', 'Can delete 教师信息', '9', 'delete_teacherinfo');
INSERT INTO `auth_permission` VALUES ('29', 'is a teacher', '9', 'is_teacher');
INSERT INTO `auth_permission` VALUES ('30', 'Can add 系统开放时间', '10', 'add_time');
INSERT INTO `auth_permission` VALUES ('31', 'Can change 系统开放时间', '10', 'change_time');
INSERT INTO `auth_permission` VALUES ('32', 'Can delete 系统开放时间', '10', 'delete_time');
INSERT INTO `auth_permission` VALUES ('33', 'Can add 管理员', '11', 'add_manager');
INSERT INTO `auth_permission` VALUES ('34', 'Can change 管理员', '11', 'change_manager');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete 管理员', '11', 'delete_manager');
INSERT INTO `auth_permission` VALUES ('36', 'is a manager', '11', 'is_manager');
INSERT INTO `auth_permission` VALUES ('37', 'Can add 专业', '12', 'add_major');
INSERT INTO `auth_permission` VALUES ('38', 'Can change 专业', '12', 'change_major');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete 专业', '12', 'delete_major');
INSERT INTO `auth_permission` VALUES ('40', 'Can add 年级', '13', 'add_year');
INSERT INTO `auth_permission` VALUES ('41', 'Can change 年级', '13', 'change_year');
INSERT INTO `auth_permission` VALUES ('42', 'Can delete 年级', '13', 'delete_year');
INSERT INTO `auth_permission` VALUES ('43', 'Can add 学院', '14', 'add_department');
INSERT INTO `auth_permission` VALUES ('44', 'Can change 学院', '14', 'change_department');
INSERT INTO `auth_permission` VALUES ('45', 'Can delete 学院', '14', 'delete_department');
INSERT INTO `auth_permission` VALUES ('46', 'Can add 教研室', '15', 'add_office');
INSERT INTO `auth_permission` VALUES ('47', 'Can change 教研室', '15', 'change_office');
INSERT INTO `auth_permission` VALUES ('48', 'Can delete 教研室', '15', 'delete_office');

-- ----------------------------
-- Table structure for `auth_user`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL DEFAULT '1',
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$30000$HERRdaRpyMh4$Bl4duq0qQ/aPMQWseWo1kMYR2ovkLX0sFcc2iPXVCFk=', '2020-07-02 07:46:35.761023', '1', 'admin', '', '', 'test@126.com', '1', '1', '2020-07-01 15:35:21.991249');
INSERT INTO `auth_user` VALUES ('2', 'pbkdf2_sha256$30000$hcmKgbTBjF9i$18JnrEX+riv1HhLK7QvqyKcG0T3XG7mRGP9l3r5KmHU=', '2020-07-02 06:58:00.000000', '0', 'STU001', '小风', '汪', 'wdg@126.com', '1', '1', '2020-07-02 05:58:00.000000');
INSERT INTO `auth_user` VALUES ('4', 'pbkdf2_sha256$30000$zimVR3yrDxp1$h3NCmfXvHCJmOBhyR1CNY+ZTApg7b5OSdcgiinhYGGA=', '2020-07-02 08:00:23.726218', '0', 'TH001', '中强', '王', '', '1', '1', '2020-07-02 06:00:00.000000');
INSERT INTO `auth_user` VALUES ('6', 'pbkdf2_sha256$30000$AE2vKD5AbdtU$mn64F+BuqwYaShil3Jk95ew7jl3OoNNvG+TVEQskFII=', '2020-07-02 08:18:17.253080', '0', 'manager', '', '', '', '1', '1', '2020-07-02 06:03:00.000000');
INSERT INTO `auth_user` VALUES ('8', 'pbkdf2_sha256$30000$sphegUM6ZbG6$AlgKIB1pgV3sAED0ap9Kqi5L/dOCiBa2HuXfE2S/W2g=', '2020-07-02 08:16:08.017971', '0', 'STU002', '', '', '', '1', '1', '2020-07-02 07:06:00.000000');
INSERT INTO `auth_user` VALUES ('9', 'pbkdf2_sha256$30000$RPMHmdRUrGvR$hdTxLOQazRwYX7Nm5uM0H0e+Rwqvtzs+3NGO1vlug2w=', '2020-07-02 08:17:16.329770', '0', 'TH002', '小飞', '张', '', '1', '1', '2020-07-02 07:09:00.000000');

-- ----------------------------
-- Table structure for `auth_user_groups`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------
INSERT INTO `auth_user_groups` VALUES ('1', '2', '1');
INSERT INTO `auth_user_groups` VALUES ('3', '4', '2');
INSERT INTO `auth_user_groups` VALUES ('5', '6', '3');
INSERT INTO `auth_user_groups` VALUES ('2', '8', '1');
INSERT INTO `auth_user_groups` VALUES ('4', '9', '2');

-- ----------------------------
-- Table structure for `auth_user_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------
INSERT INTO `auth_user_user_permissions` VALUES ('1', '2', '25');

-- ----------------------------
-- Table structure for `department_department`
-- ----------------------------
DROP TABLE IF EXISTS `department_department`;
CREATE TABLE `department_department` (
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department_department
-- ----------------------------
INSERT INTO `department_department` VALUES ('信息工程学院');
INSERT INTO `department_department` VALUES ('外国语学院');

-- ----------------------------
-- Table structure for `department_major`
-- ----------------------------
DROP TABLE IF EXISTS `department_major`;
CREATE TABLE `department_major` (
  `name` varchar(20) NOT NULL,
  `department_id` varchar(20) NOT NULL,
  PRIMARY KEY (`name`),
  KEY `department__department_id_df25ac2c_fk_department_department_name` (`department_id`),
  CONSTRAINT `department__department_id_df25ac2c_fk_department_department_name` FOREIGN KEY (`department_id`) REFERENCES `department_department` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department_major
-- ----------------------------
INSERT INTO `department_major` VALUES ('电子信息技术', '信息工程学院');
INSERT INTO `department_major` VALUES ('计算机科学与技术', '信息工程学院');

-- ----------------------------
-- Table structure for `department_manager`
-- ----------------------------
DROP TABLE IF EXISTS `department_manager`;
CREATE TABLE `department_manager` (
  `m_id_id` int(11) NOT NULL,
  `m_contact` varchar(20) NOT NULL,
  `m_department_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`m_id_id`),
  KEY `departmen_m_department_id_c090215e_fk_department_department_name` (`m_department_id`),
  CONSTRAINT `departmen_m_department_id_c090215e_fk_department_department_name` FOREIGN KEY (`m_department_id`) REFERENCES `department_department` (`name`),
  CONSTRAINT `department_manager_m_id_id_c0a55b78_fk_auth_user_id` FOREIGN KEY (`m_id_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department_manager
-- ----------------------------
INSERT INTO `department_manager` VALUES ('6', '13081083123', '信息工程学院');

-- ----------------------------
-- Table structure for `department_office`
-- ----------------------------
DROP TABLE IF EXISTS `department_office`;
CREATE TABLE `department_office` (
  `name` varchar(20) NOT NULL,
  `department_id` varchar(20) NOT NULL,
  PRIMARY KEY (`name`),
  KEY `department__department_id_dbe1946a_fk_department_department_name` (`department_id`),
  CONSTRAINT `department__department_id_dbe1946a_fk_department_department_name` FOREIGN KEY (`department_id`) REFERENCES `department_department` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department_office
-- ----------------------------
INSERT INTO `department_office` VALUES ('电子教研室', '信息工程学院');
INSERT INTO `department_office` VALUES ('计算机教研室', '信息工程学院');

-- ----------------------------
-- Table structure for `department_time`
-- ----------------------------
DROP TABLE IF EXISTS `department_time`;
CREATE TABLE `department_time` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_time` datetime(6) DEFAULT NULL,
  `end_time` datetime(6) DEFAULT NULL,
  `department_id` varchar(20) NOT NULL,
  `year_id` decimal(4,0) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `department__department_id_37b0ae6f_fk_department_department_name` (`department_id`),
  KEY `department_time_91b4a700` (`year_id`),
  CONSTRAINT `department__department_id_37b0ae6f_fk_department_department_name` FOREIGN KEY (`department_id`) REFERENCES `department_department` (`name`),
  CONSTRAINT `department_time_year_id_addb0e22_fk_department_year_value` FOREIGN KEY (`year_id`) REFERENCES `department_year` (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department_time
-- ----------------------------
INSERT INTO `department_time` VALUES ('1', '2020-06-20 11:00:00.000000', '2020-08-01 11:00:00.000000', '信息工程学院', '2020');

-- ----------------------------
-- Table structure for `department_year`
-- ----------------------------
DROP TABLE IF EXISTS `department_year`;
CREATE TABLE `department_year` (
  `value` decimal(4,0) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department_year
-- ----------------------------
INSERT INTO `department_year` VALUES ('2020');

-- ----------------------------
-- Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2020-07-02 05:04:00.676340', '信息工程学院', '信息工程学院', '1', '[{\"added\": {}}]', '14', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2020-07-02 05:06:28.711965', '计算机科学与技术', '计算机科学与技术', '1', '[{\"added\": {}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2020-07-02 05:06:50.977479', '2020', '2020', '1', '[{\"added\": {}}]', '13', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2020-07-02 05:07:11.509650', '计算机教研室', '计算机教研室', '1', '[{\"added\": {}}]', '15', '1');
INSERT INTO `django_admin_log` VALUES ('5', '2020-07-02 05:55:06.933292', '1', '开始选题了', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('6', '2020-07-02 05:58:03.004852', '2', '1001', '1', '[{\"added\": {}}]', '3', '1');
INSERT INTO `django_admin_log` VALUES ('7', '2020-07-02 05:58:54.742495', '2', '1001', '2', '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"date_joined\"]}}]', '3', '1');
INSERT INTO `django_admin_log` VALUES ('8', '2020-07-02 05:59:50.829662', '3', '1002', '1', '[{\"added\": {}}]', '3', '1');
INSERT INTO `django_admin_log` VALUES ('9', '2020-07-02 06:00:34.300963', '4', 'TH001', '1', '[{\"added\": {}}]', '3', '1');
INSERT INTO `django_admin_log` VALUES ('10', '2020-07-02 06:01:39.513299', '5', '8000', '1', '[{\"added\": {}}]', '3', '1');
INSERT INTO `django_admin_log` VALUES ('11', '2020-07-02 06:02:26.828775', '3', '1002', '3', '', '3', '1');
INSERT INTO `django_admin_log` VALUES ('12', '2020-07-02 06:02:26.837260', '5', '8000', '3', '', '3', '1');
INSERT INTO `django_admin_log` VALUES ('13', '2020-07-02 06:02:43.458163', '2', 'STU001', '2', '[{\"changed\": {\"fields\": [\"username\", \"date_joined\"]}}]', '3', '1');
INSERT INTO `django_admin_log` VALUES ('14', '2020-07-02 06:03:29.768750', '6', 'manage', '1', '[{\"added\": {}}]', '3', '1');
INSERT INTO `django_admin_log` VALUES ('15', '2020-07-02 06:15:29.936342', '7', 'superman', '3', '', '3', '1');
INSERT INTO `django_admin_log` VALUES ('16', '2020-07-02 06:16:33.424725', '6', 'manager', '2', '[{\"changed\": {\"fields\": [\"username\", \"last_login\", \"date_joined\"]}}]', '3', '1');
INSERT INTO `django_admin_log` VALUES ('17', '2020-07-02 06:19:23.372596', '1', '信息工程学院2020级', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('18', '2020-07-02 06:58:15.293271', '2', 'STU001', '2', '[{\"changed\": {\"fields\": [\"last_login\", \"date_joined\"]}}]', '3', '1');
INSERT INTO `django_admin_log` VALUES ('19', '2020-07-02 06:58:33.533750', '4', 'TH001', '2', '[{\"changed\": {\"fields\": [\"last_login\", \"date_joined\"]}}]', '3', '1');
INSERT INTO `django_admin_log` VALUES ('20', '2020-07-02 06:58:44.328314', '6', 'manager', '2', '[{\"changed\": {\"fields\": [\"last_login\", \"date_joined\"]}}]', '3', '1');
INSERT INTO `django_admin_log` VALUES ('21', '2020-07-02 07:04:11.328389', '电子信息技术', '电子信息技术', '1', '[{\"added\": {}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('22', '2020-07-02 07:04:50.436236', '电子教研室', '电子教研室', '1', '[{\"added\": {}}]', '15', '1');
INSERT INTO `django_admin_log` VALUES ('23', '2020-07-02 07:05:44.966625', '1', '已经开始选题了', '2', '[{\"changed\": {\"fields\": [\"title\", \"detail\"]}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('24', '2020-07-02 07:06:25.239671', '8', 'STU002', '1', '[{\"added\": {}}]', '3', '1');
INSERT INTO `django_admin_log` VALUES ('25', '2020-07-02 07:09:58.429161', '9', 'TH002', '1', '[{\"added\": {}}]', '3', '1');
INSERT INTO `django_admin_log` VALUES ('26', '2020-07-02 07:17:23.679195', '1', 'students', '1', '[{\"added\": {}}]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('27', '2020-07-02 07:18:04.697766', '2', 'teachers', '1', '[{\"added\": {}}]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('28', '2020-07-02 07:18:50.804351', '2', 'STU001', '2', '[{\"changed\": {\"fields\": [\"last_login\", \"date_joined\"]}}]', '3', '1');
INSERT INTO `django_admin_log` VALUES ('29', '2020-07-02 07:18:59.237371', '8', 'STU002', '2', '[{\"changed\": {\"fields\": [\"date_joined\"]}}]', '3', '1');
INSERT INTO `django_admin_log` VALUES ('30', '2020-07-02 07:19:08.419652', '4', 'TH001', '2', '[{\"changed\": {\"fields\": [\"last_login\", \"date_joined\"]}}]', '3', '1');
INSERT INTO `django_admin_log` VALUES ('31', '2020-07-02 07:19:19.321357', '4', 'TH001', '2', '[{\"changed\": {\"fields\": [\"last_login\", \"date_joined\"]}}]', '3', '1');
INSERT INTO `django_admin_log` VALUES ('32', '2020-07-02 07:19:38.605357', '9', 'TH002', '2', '[{\"changed\": {\"fields\": [\"date_joined\"]}}]', '3', '1');
INSERT INTO `django_admin_log` VALUES ('33', '2020-07-02 07:23:36.345328', '3', 'is_manager', '1', '[{\"added\": {}}]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('34', '2020-07-02 07:24:09.233954', '3', 'is_manager', '2', '[]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('35', '2020-07-02 07:36:36.557282', '外国语学院', '外国语学院', '1', '[{\"added\": {}}]', '14', '1');
INSERT INTO `django_admin_log` VALUES ('36', '2020-07-02 07:38:13.844862', '6', 'manager', '2', '[{\"changed\": {\"fields\": [\"last_login\", \"date_joined\"]}}]', '3', '1');
INSERT INTO `django_admin_log` VALUES ('37', '2020-07-02 07:39:58.314864', '2', '时间就是机会', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('38', '2020-07-02 07:41:45.524397', '4', 'TH001', '2', '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"last_login\", \"date_joined\"]}}]', '3', '1');
INSERT INTO `django_admin_log` VALUES ('39', '2020-07-02 07:48:51.492991', '1', 'students', '2', '[]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('40', '2020-07-02 08:01:09.528278', '2', 'teachers', '2', '[]', '4', '1');

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('14', 'department', 'department');
INSERT INTO `django_content_type` VALUES ('12', 'department', 'major');
INSERT INTO `django_content_type` VALUES ('11', 'department', 'manager');
INSERT INTO `django_content_type` VALUES ('15', 'department', 'office');
INSERT INTO `django_content_type` VALUES ('10', 'department', 'time');
INSERT INTO `django_content_type` VALUES ('13', 'department', 'year');
INSERT INTO `django_content_type` VALUES ('7', 'notice', 'notice');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('8', 'student', 'studentinfo');
INSERT INTO `django_content_type` VALUES ('9', 'teacher', 'teacherinfo');

-- ----------------------------
-- Table structure for `django_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2020-07-01 15:30:52.973567');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2020-07-01 15:30:53.820688');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2020-07-01 15:30:54.115473');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2020-07-01 15:30:54.150066');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2020-07-01 15:30:54.316507');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2020-07-01 15:30:54.389702');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2020-07-01 15:30:54.480444');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2020-07-01 15:30:54.500497');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2020-07-01 15:30:54.577210');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2020-07-01 15:30:54.585724');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2020-07-01 15:30:54.607783');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0008_alter_user_username_max_length', '2020-07-01 15:30:54.708049');
INSERT INTO `django_migrations` VALUES ('13', 'department', '0001_initial', '2020-07-01 15:30:55.418439');
INSERT INTO `django_migrations` VALUES ('14', 'notice', '0001_initial', '2020-07-01 15:30:55.567836');
INSERT INTO `django_migrations` VALUES ('15', 'sessions', '0001_initial', '2020-07-01 15:30:55.643538');
INSERT INTO `django_migrations` VALUES ('16', 'teacher', '0001_initial', '2020-07-01 15:30:55.919271');
INSERT INTO `django_migrations` VALUES ('17', 'student', '0001_initial', '2020-07-01 15:30:56.182824');
INSERT INTO `django_migrations` VALUES ('18', 'student', '0002_auto_20180628_2111', '2020-07-01 15:30:56.581848');

-- ----------------------------
-- Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('f088ikx0y5i3baztyoagbkh48ihmpjjv', 'ZjcyODA1ZmFhNDg1OWVhMjZhNDdkNGU1ZTVhNWUyYzA3YTQyYzQwNjp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMjc5MmM0ZTZlMzZjYThkYjBlMzU1NThmMjM5OTM1N2U3NTg4YmJjIn0=', '2020-07-16 08:18:17.270627');
INSERT INTO `django_session` VALUES ('llq1fh5cw9hlx6lk9hctdredhl67p2s5', 'YTk5M2YwMTBkYWIxNGZlYjBlNDU1MjBjMWFmODlkM2U3NGU0MzJmMjp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlOWVjNjRiYjQwOTJkNWIyZTExN2VjZTM4N2ZjNDNhYjIyM2JhNjQ4In0=', '2020-07-16 08:00:23.743263');

-- ----------------------------
-- Table structure for `notice_notice`
-- ----------------------------
DROP TABLE IF EXISTS `notice_notice`;
CREATE TABLE `notice_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `detail` longtext NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `department_id` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `notice_noti_department_id_b5384440_fk_department_department_name` (`department_id`),
  CONSTRAINT `notice_noti_department_id_b5384440_fk_department_department_name` FOREIGN KEY (`department_id`) REFERENCES `department_department` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice_notice
-- ----------------------------
INSERT INTO `notice_notice` VALUES ('1', '已经开始选题了', '同学们搞快了哦，赶紧选你们的老师确认课题！', '2020-07-02 05:55:06.931789', '信息工程学院');
INSERT INTO `notice_notice` VALUES ('2', '时间就是机会', '好的老师都是留给手更快的同学哦！', '2020-07-02 07:39:58.310352', '信息工程学院');

-- ----------------------------
-- Table structure for `student_studentinfo`
-- ----------------------------
DROP TABLE IF EXISTS `student_studentinfo`;
CREATE TABLE `student_studentinfo` (
  `s_id_id` int(11) NOT NULL,
  `s_contact` varchar(20) NOT NULL,
  `s_isconfirm` tinyint(1) NOT NULL,
  `s_department_id` varchar(20) DEFAULT NULL,
  `s_major_id` varchar(20) DEFAULT NULL,
  `s_teacher_id` int(11),
  `s_year_id` decimal(4,0),
  PRIMARY KEY (`s_id_id`),
  KEY `student_s_s_department_id_9f38cf0e_fk_department_department_name` (`s_department_id`),
  KEY `student_studentinfo_s_major_id_a1c0fcf0_fk_department_major_name` (`s_major_id`),
  KEY `student_studentinfo_14933d4d` (`s_teacher_id`),
  KEY `student_studentinfo_4ee23859` (`s_year_id`),
  CONSTRAINT `student_s_s_department_id_9f38cf0e_fk_department_department_name` FOREIGN KEY (`s_department_id`) REFERENCES `department_department` (`name`),
  CONSTRAINT `student_stu_s_teacher_id_52e01968_fk_teacher_teacherinfo_t_id_id` FOREIGN KEY (`s_teacher_id`) REFERENCES `teacher_teacherinfo` (`t_id_id`),
  CONSTRAINT `student_studentinfo_s_id_id_5956f65f_fk_auth_user_id` FOREIGN KEY (`s_id_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `student_studentinfo_s_major_id_a1c0fcf0_fk_department_major_name` FOREIGN KEY (`s_major_id`) REFERENCES `department_major` (`name`),
  CONSTRAINT `student_studentinfo_s_year_id_a21746fe_fk_department_year_value` FOREIGN KEY (`s_year_id`) REFERENCES `department_year` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_studentinfo
-- ----------------------------
INSERT INTO `student_studentinfo` VALUES ('2', '13208083512', '1', '信息工程学院', '计算机科学与技术', '4', '2020');
INSERT INTO `student_studentinfo` VALUES ('8', '13529812423', '1', '信息工程学院', '计算机科学与技术', '9', '2020');

-- ----------------------------
-- Table structure for `teacher_teacherinfo`
-- ----------------------------
DROP TABLE IF EXISTS `teacher_teacherinfo`;
CREATE TABLE `teacher_teacherinfo` (
  `t_id_id` int(11) NOT NULL,
  `t_title` varchar(10) NOT NULL,
  `t_contact` varchar(20) NOT NULL,
  `t_maxchoice` int(11) NOT NULL,
  `t_department_id` varchar(20) DEFAULT NULL,
  `t_office_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`t_id_id`),
  KEY `teacher_t_t_department_id_7ad65722_fk_department_department_name` (`t_department_id`),
  KEY `teacher_teacherin_t_office_id_92accdf2_fk_department_office_name` (`t_office_id`),
  CONSTRAINT `teacher_t_t_department_id_7ad65722_fk_department_department_name` FOREIGN KEY (`t_department_id`) REFERENCES `department_department` (`name`),
  CONSTRAINT `teacher_teacherin_t_office_id_92accdf2_fk_department_office_name` FOREIGN KEY (`t_office_id`) REFERENCES `department_office` (`name`),
  CONSTRAINT `teacher_teacherinfo_t_id_id_1f6cd375_fk_auth_user_id` FOREIGN KEY (`t_id_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher_teacherinfo
-- ----------------------------
INSERT INTO `teacher_teacherinfo` VALUES ('4', '教授', '13629083512', '5', '信息工程学院', '计算机教研室');
INSERT INTO `teacher_teacherinfo` VALUES ('9', '副教授', '13120854123', '3', '信息工程学院', '计算机教研室');
