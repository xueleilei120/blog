/*
Navicat MySQL Data Transfer

Source Server         : liuyc
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2017-04-16 23:06:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add 用户信息', '7', 'add_userprofile');
INSERT INTO `auth_permission` VALUES ('20', 'Can change 用户信息', '7', 'change_userprofile');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete 用户信息', '7', 'delete_userprofile');
INSERT INTO `auth_permission` VALUES ('22', 'Can add 轮播图', '8', 'add_banner');
INSERT INTO `auth_permission` VALUES ('23', 'Can change 轮播图', '8', 'change_banner');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete 轮播图', '8', 'delete_banner');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 邮箱验证码', '9', 'add_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 邮箱验证码', '9', 'change_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 邮箱验证码', '9', 'delete_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('28', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('29', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('30', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('31', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('32', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('33', 'Can view 轮播图', '8', 'view_banner');
INSERT INTO `auth_permission` VALUES ('34', 'Can view 邮箱验证码', '9', 'view_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('35', 'Can view 用户信息', '7', 'view_userprofile');
INSERT INTO `auth_permission` VALUES ('36', 'Can add Bookmark', '10', 'add_bookmark');
INSERT INTO `auth_permission` VALUES ('37', 'Can change Bookmark', '10', 'change_bookmark');
INSERT INTO `auth_permission` VALUES ('38', 'Can delete Bookmark', '10', 'delete_bookmark');
INSERT INTO `auth_permission` VALUES ('39', 'Can add User Setting', '11', 'add_usersettings');
INSERT INTO `auth_permission` VALUES ('40', 'Can change User Setting', '11', 'change_usersettings');
INSERT INTO `auth_permission` VALUES ('41', 'Can delete User Setting', '11', 'delete_usersettings');
INSERT INTO `auth_permission` VALUES ('42', 'Can add User Widget', '12', 'add_userwidget');
INSERT INTO `auth_permission` VALUES ('43', 'Can change User Widget', '12', 'change_userwidget');
INSERT INTO `auth_permission` VALUES ('44', 'Can delete User Widget', '12', 'delete_userwidget');
INSERT INTO `auth_permission` VALUES ('45', 'Can add log entry', '13', 'add_log');
INSERT INTO `auth_permission` VALUES ('46', 'Can change log entry', '13', 'change_log');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete log entry', '13', 'delete_log');
INSERT INTO `auth_permission` VALUES ('48', 'Can view Bookmark', '10', 'view_bookmark');
INSERT INTO `auth_permission` VALUES ('49', 'Can view log entry', '13', 'view_log');
INSERT INTO `auth_permission` VALUES ('50', 'Can view User Setting', '11', 'view_usersettings');
INSERT INTO `auth_permission` VALUES ('51', 'Can view User Widget', '12', 'view_userwidget');
INSERT INTO `auth_permission` VALUES ('52', 'Can add captcha store', '14', 'add_captchastore');
INSERT INTO `auth_permission` VALUES ('53', 'Can change captcha store', '14', 'change_captchastore');
INSERT INTO `auth_permission` VALUES ('54', 'Can delete captcha store', '14', 'delete_captchastore');
INSERT INTO `auth_permission` VALUES ('55', 'Can view captcha store', '14', 'view_captchastore');
INSERT INTO `auth_permission` VALUES ('56', 'Can add 标签', '15', 'add_tag');
INSERT INTO `auth_permission` VALUES ('57', 'Can change 标签', '15', 'change_tag');
INSERT INTO `auth_permission` VALUES ('58', 'Can delete 标签', '15', 'delete_tag');
INSERT INTO `auth_permission` VALUES ('59', 'Can add 分类', '16', 'add_category');
INSERT INTO `auth_permission` VALUES ('60', 'Can change 分类', '16', 'change_category');
INSERT INTO `auth_permission` VALUES ('61', 'Can delete 分类', '16', 'delete_category');
INSERT INTO `auth_permission` VALUES ('62', 'Can add 笔记', '17', 'add_notes');
INSERT INTO `auth_permission` VALUES ('63', 'Can change 笔记', '17', 'change_notes');
INSERT INTO `auth_permission` VALUES ('64', 'Can delete 笔记', '17', 'delete_notes');
INSERT INTO `auth_permission` VALUES ('65', 'Can add 未公开的笔记', '17', 'add_nopublicnotes');
INSERT INTO `auth_permission` VALUES ('66', 'Can change 未公开的笔记', '17', 'change_nopublicnotes');
INSERT INTO `auth_permission` VALUES ('67', 'Can delete 未公开的笔记', '17', 'delete_nopublicnotes');
INSERT INTO `auth_permission` VALUES ('68', 'Can view 分类', '16', 'view_category');
INSERT INTO `auth_permission` VALUES ('69', 'Can view 未公开的笔记', '18', 'view_nopublicnotes');
INSERT INTO `auth_permission` VALUES ('70', 'Can view 笔记', '17', 'view_notes');
INSERT INTO `auth_permission` VALUES ('71', 'Can view 标签', '15', 'view_tag');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$24000$neEkOvZJ8q1h$JYFNtQFjMO+Ztpw26CTFpb4m8w31jJ7lriuqd1GhdoA=', '2017-04-15 11:06:09.524000', '1', 'liuyc', '', '', '290484002@qq.com', '1', '1', '2017-04-15 11:03:14.556000');

-- ----------------------------
-- Table structure for auth_user_groups
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES ('6', 'WDLY', 'wdly', 'b8b7355607b4f462c9c73c9367221f05b6611704', '2017-04-16 21:56:17.699000');
INSERT INTO `captcha_captchastore` VALUES ('7', 'SXZS', 'sxzs', '929030242374d80a6c8e9ec4cd4fc1a3f0947c35', '2017-04-16 21:56:25.130000');
INSERT INTO `captcha_captchastore` VALUES ('8', 'BJRJ', 'bjrj', 'ad492e02ec9ceb22464aa9a6cd092735649ff43b', '2017-04-16 21:56:25.384000');
INSERT INTO `captcha_captchastore` VALUES ('9', 'YUIT', 'yuit', '15b7df3eaed8054e82dbb2c11a072eb1a7db32e0', '2017-04-16 21:56:25.568000');
INSERT INTO `captcha_captchastore` VALUES ('10', 'BXXF', 'bxxf', '3a8f05cc551573905799c12ab22763481b5eee26', '2017-04-16 21:56:25.745000');
INSERT INTO `captcha_captchastore` VALUES ('11', 'MEHN', 'mehn', 'c4b4b429060e404885ae51429731a4251ee8dd9e', '2017-04-16 21:56:25.912000');
INSERT INTO `captcha_captchastore` VALUES ('12', 'LXGX', 'lxgx', '2d2d5831d89cd786431a6a7005289f418681ff3c', '2017-04-16 21:56:37.850000');
INSERT INTO `captcha_captchastore` VALUES ('13', 'SLIM', 'slim', 'f1c71d1309971fc4f4793139129962d59be1db7b', '2017-04-16 21:56:39.935000');
INSERT INTO `captcha_captchastore` VALUES ('15', 'WFCF', 'wfcf', '99fde6b6627bca79a920744c1ce3f98f7d2afd32', '2017-04-16 22:00:01.441000');
INSERT INTO `captcha_captchastore` VALUES ('16', 'MEQL', 'meql', 'af8f1f3815b5d260a3bd20ba6e0374f49955df8f', '2017-04-16 22:01:54.684000');

-- ----------------------------
-- Table structure for django_admin_log
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('14', 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('16', 'note', 'category');
INSERT INTO `django_content_type` VALUES ('18', 'note', 'nopublicnotes');
INSERT INTO `django_content_type` VALUES ('17', 'note', 'notes');
INSERT INTO `django_content_type` VALUES ('15', 'note', 'tag');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('8', 'users', 'banner');
INSERT INTO `django_content_type` VALUES ('9', 'users', 'emailverifyrecord');
INSERT INTO `django_content_type` VALUES ('7', 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES ('10', 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES ('13', 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES ('11', 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES ('12', 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2017-04-15 11:02:33.506000');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2017-04-15 11:02:40.041000');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2017-04-15 11:02:41.721000');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2017-04-15 11:02:41.827000');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2017-04-15 11:02:42.807000');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2017-04-15 11:02:43.388000');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2017-04-15 11:02:43.954000');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2017-04-15 11:02:44.006000');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2017-04-15 11:02:44.449000');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2017-04-15 11:02:44.488000');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2017-04-15 11:02:44.528000');
INSERT INTO `django_migrations` VALUES ('12', 'sessions', '0001_initial', '2017-04-15 11:02:45.022000');
INSERT INTO `django_migrations` VALUES ('13', 'users', '0001_initial', '2017-04-15 11:09:07.214000');
INSERT INTO `django_migrations` VALUES ('14', 'xadmin', '0001_initial', '2017-04-15 11:12:25.361000');
INSERT INTO `django_migrations` VALUES ('15', 'note', '0001_initial', '2017-04-16 00:01:36.728000');
INSERT INTO `django_migrations` VALUES ('16', 'captcha', '0001_initial', '2017-04-16 13:46:20.142000');

-- ----------------------------
-- Table structure for django_session
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

-- ----------------------------
-- Table structure for note_category
-- ----------------------------
DROP TABLE IF EXISTS `note_category`;
CREATE TABLE `note_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of note_category
-- ----------------------------
INSERT INTO `note_category` VALUES ('1', '篮球');
INSERT INTO `note_category` VALUES ('2', '游戏');

-- ----------------------------
-- Table structure for note_notes
-- ----------------------------
DROP TABLE IF EXISTS `note_notes`;
CREATE TABLE `note_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `note_notes_author_id_72a36aa9_fk_users_userprofile_id` (`author_id`),
  KEY `note_notes_category_id_a40437e0_fk_note_category_id` (`category_id`),
  CONSTRAINT `note_notes_author_id_72a36aa9_fk_users_userprofile_id` FOREIGN KEY (`author_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `note_notes_category_id_a40437e0_fk_note_category_id` FOREIGN KEY (`category_id`) REFERENCES `note_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of note_notes
-- ----------------------------
INSERT INTO `note_notes` VALUES ('1', '第一个标题', '<p>第一个笔记内容</p>', '0', 'notes/2017/04/1c3193b341d598068312e735d6247e7b_OlYEKid.jpg', '14', '1', '2017-04-16 00:46:00.000000', '1', '1');
INSERT INTO `note_notes` VALUES ('2', '游戏', '<p>游戏内容太</p>', '0', 'notes/2017/04/0721dac025cb13b5eb332f084725cac5.jpeg', '8', '1', '2017-04-16 10:45:00.000000', '1', '2');
INSERT INTO `note_notes` VALUES ('3', '3', '<p>3<img src=\"http://img.baidu.com/hi/jx2/j_0015.gif\"/></p>', '0', 'notes/2017/04/025219c7y27rw920982yr8.jpg', '6', '1', '2017-04-16 17:55:04.518000', '2', '1');
INSERT INTO `note_notes` VALUES ('4', '4', '<p><img src=\"http://img.baidu.com/hi/jx2/j_0017.gif\"/></p>', '0', 'images/default.jpg', '0', '1', '2017-04-16 21:33:26.833000', '2', '1');
INSERT INTO `note_notes` VALUES ('5', '6', '<p>6666</p>', '0', 'images/default.jpg', '0', '1', '2017-04-16 21:52:35.808000', '3', '1');

-- ----------------------------
-- Table structure for note_notes_tag
-- ----------------------------
DROP TABLE IF EXISTS `note_notes_tag`;
CREATE TABLE `note_notes_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notes_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `note_notes_tag_notes_id_2ca1b16f_uniq` (`notes_id`,`tag_id`),
  KEY `note_notes_tag_tag_id_c237e124_fk_note_tag_id` (`tag_id`),
  CONSTRAINT `note_notes_tag_notes_id_e3a3eb3a_fk_note_notes_id` FOREIGN KEY (`notes_id`) REFERENCES `note_notes` (`id`),
  CONSTRAINT `note_notes_tag_tag_id_c237e124_fk_note_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `note_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of note_notes_tag
-- ----------------------------
INSERT INTO `note_notes_tag` VALUES ('1', '1', '1');
INSERT INTO `note_notes_tag` VALUES ('2', '2', '2');

-- ----------------------------
-- Table structure for note_tag
-- ----------------------------
DROP TABLE IF EXISTS `note_tag`;
CREATE TABLE `note_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of note_tag
-- ----------------------------
INSERT INTO `note_tag` VALUES ('1', '篮球');
INSERT INTO `note_tag` VALUES ('2', '游戏');

-- ----------------------------
-- Table structure for users_banner
-- ----------------------------
DROP TABLE IF EXISTS `users_banner`;
CREATE TABLE `users_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_banner
-- ----------------------------
INSERT INTO `users_banner` VALUES ('1', '杜兰特', 'banner/2017/04/025219c7y27rw920982yr8.jpg', 'http://v.sports.qq.com/#/cover/grm8vu8wc5d46kv/t00221w03li', '100', '2017-04-16 11:04:00.000000');
INSERT INTO `users_banner` VALUES ('2', '乔治', 'banner/2017/04/34deb8368f6290036f3d97a972f204bc.jpg', 'http://v.sports.qq.com/#/cover/grm8vu8wc5d46kv/j002285falf', '99', '2017-04-16 11:24:00.000000');
INSERT INTO `users_banner` VALUES ('3', '保罗', 'banner/2017/04/timg.jpg', 'http://v.sports.qq.com/#/cover/grm8vu8wc5d46kv/q0022p652bp', '98', '2017-04-16 11:26:00.000000');

-- ----------------------------
-- Table structure for users_emailverifyrecord
-- ----------------------------
DROP TABLE IF EXISTS `users_emailverifyrecord`;
CREATE TABLE `users_emailverifyrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `send_type` varchar(10) NOT NULL,
  `send_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_emailverifyrecord
-- ----------------------------
INSERT INTO `users_emailverifyrecord` VALUES ('1', 'VDEra5wIOFwFio41', '914993040@qq.com', 'register', '2017-04-16 13:46:59.913000');
INSERT INTO `users_emailverifyrecord` VALUES ('2', 'kkUutGWp0KcZ38fX', '290484001@qq.com', 'register', '2017-04-16 21:52:10.786000');

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nick_name` varchar(50) NOT NULL,
  `birday` date DEFAULT NULL,
  `gender` varchar(6) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES ('1', 'pbkdf2_sha256$24000$xSHe3ePTtQt4$mIuVfE0v0/9HsILmWIZB4YmldZrsBjro1xsRFazbOSo=', '2017-04-15 11:11:42.694000', '1', 'liuyc', '', '', '290484002@qq.com', '1', '1', '2017-04-15 11:09:33.628000', '小刘', '1993-01-27', 'male', '苏州', '1358487065', 'images/2017/04/28431672f0f4711386881cfe614d8e1e.jpg');
INSERT INTO `users_userprofile` VALUES ('2', 'pbkdf2_sha256$24000$J1O5bFGePaBU$YRKjUeXFWE9yrUCnd8VZRwXYKg+vztNqfNInvMYerfI=', '2017-04-16 17:54:41.006000', '0', '914993040@qq.com', '', '', '914993040@qq.com', '0', '0', '2017-04-16 13:46:59.848000', '小薛', '1993-02-08', 'female', 'a', '1358487065', 'images/2017/04/timg.jpg');
INSERT INTO `users_userprofile` VALUES ('3', 'pbkdf2_sha256$24000$U54edJdZWwuy$McSEhzF6VFKXVccR6DvFM1Xi4LSiqUJYJzra8QwX0lw=', '2017-04-16 21:52:23.857000', '0', '290484001@qq.com', '', '', '290484001@qq.com', '0', '0', '2017-04-16 21:52:10.730000', '290484001@qq.com', null, 'female', '', null, 'images/default.png');

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofil_userprofile_id_a4496a80_fk_users_userprofile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_groups
-- ----------------------------

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_permissions_userprofile_id_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_u_permission_id_393136b6_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `users_userprofil_userprofile_id_34544737_fk_users_userprofile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_u_permission_id_393136b6_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES ('1', '2017-04-16 00:43:58.943000', '127.0.0.1', '1', '篮球', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('2', '2017-04-16 00:44:06.472000', '127.0.0.1', '1', 'Category object', 'create', '已添加。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('3', '2017-04-16 00:47:28.208000', '127.0.0.1', '1', '第一个标题', 'create', '已添加。', '17', '1');
INSERT INTO `xadmin_log` VALUES ('4', '2017-04-16 10:45:15.309000', '127.0.0.1', '2', '游戏', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('5', '2017-04-16 10:45:26.382000', '127.0.0.1', '2', '游戏', 'create', '已添加。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('6', '2017-04-16 10:46:36.868000', '127.0.0.1', '2', '游戏', 'create', '已添加。', '17', '1');
INSERT INTO `xadmin_log` VALUES ('7', '2017-04-16 11:05:35.973000', '127.0.0.1', '1', 'AI', 'create', '已添加。', '8', '1');
INSERT INTO `xadmin_log` VALUES ('8', '2017-04-16 11:07:09.668000', '127.0.0.1', '1', 'AI', 'change', '已修改 image 。', '8', '1');
INSERT INTO `xadmin_log` VALUES ('9', '2017-04-16 11:13:45.501000', '127.0.0.1', '1', '杜兰特', 'change', '已修改 title 和 image 。', '8', '1');
INSERT INTO `xadmin_log` VALUES ('10', '2017-04-16 11:25:55.282000', '127.0.0.1', '2', '乔治', 'create', '已添加。', '8', '1');
INSERT INTO `xadmin_log` VALUES ('11', '2017-04-16 11:27:04.456000', '127.0.0.1', '3', '保罗', 'create', '已添加。', '8', '1');
INSERT INTO `xadmin_log` VALUES ('12', '2017-04-16 11:30:59.758000', '127.0.0.1', '3', '保罗', 'change', '已修改 image 。', '8', '1');

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES ('1', 'dashboard:home:pos', '', '1');

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------
