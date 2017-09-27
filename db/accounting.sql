/*
Navicat MySQL Data Transfer

Source Server         : ali
Source Server Version : 50716
Source Host           : 112.74.43.139:3306
Source Database       : accounting

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2017-09-27 10:41:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for exercises
-- ----------------------------
DROP TABLE IF EXISTS `exercises`;
CREATE TABLE `exercises` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exercises_name` varchar(100) DEFAULT NULL,
  `exercises_url` varchar(255) DEFAULT NULL,
  `exercises_type` varchar(50) DEFAULT NULL COMMENT '习题类型：0：练习题 ；1：自测题；2：试卷',
  `upload_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exercises
-- ----------------------------
INSERT INTO `exercises` VALUES ('1', '习题一', 'practise1.doc', '练习题', '2017-05-30 22:06:24');
INSERT INTO `exercises` VALUES ('2', '习题二', 'practise1.doc', '练习题', '2017-05-30 22:06:25');
INSERT INTO `exercises` VALUES ('3', '习题三', 'practise1.doc', '练习题', '2017-05-30 22:26:07');
INSERT INTO `exercises` VALUES ('4', '案例集', 'case1.doc', '案例题', '2017-05-30 22:28:54');

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_sn` varchar(50) DEFAULT NULL,
  `resource_url` varchar(255) DEFAULT NULL,
  `resource_name` varchar(50) DEFAULT NULL,
  `parent_resource_sn` varchar(50) DEFAULT NULL,
  `show_sequence` tinyint(2) DEFAULT NULL,
  `has_menu_child` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES ('1', 'sbbg', 'application/application.jsp', '申报表格', null, '1', '\0');
INSERT INTO `resource` VALUES ('2', 'jsdy', 'teacher/teacher.jsp', '教师队伍', null, '2', '');
INSERT INTO `resource` VALUES ('3', 'kcjj', 'courseinfo/courseinfo.jsp', '课程简介', null, '3', '\0');
INSERT INTO `resource` VALUES ('4', 'jxdg', 'syllabus/syllabus.jsp', '教学大纲', null, '4', '\0');
INSERT INTO `resource` VALUES ('5', 'ja', 'lessonplan/lessonplan.jsp', '教案', null, '5', '\0');
INSERT INTO `resource` VALUES ('6', 'xiyst', 'exercises/exercises.jsp', '习题与试题', null, '6', '');
INSERT INTO `resource` VALUES ('7', 'jxyx', 'video/video.jsp', '教学影像', null, '7', '\0');
INSERT INTO `resource` VALUES ('8', 'jxxgpj', 'questionnaire/questionnaire.jsp', '教学效果评价', null, '8', '\0');
INSERT INTO `resource` VALUES ('10', 'lxt', null, '练习题', 'xiyst', '1', '\0');
INSERT INTO `resource` VALUES ('11', 'zct', null, '自测题', 'xiyst', '2', '\0');
INSERT INTO `resource` VALUES ('12', 'sj', null, '试卷', 'xiyst', '3', '\0');
INSERT INTO `resource` VALUES ('17', 'jsjj', null, '教师简介', 'jsdy', '1', '\0');
INSERT INTO `resource` VALUES ('18', 'jxjl', null, '教学奖励', 'jsdy', '2', '\0');
