/*
 Navicat Premium Data Transfer

 Source Server         : abc
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : grademanage

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 07/01/2019 20:59:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `adminid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(28) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `pwd` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(28) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`adminid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, '0001', '1234', '黄光辉');

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade`  (
  `gradeid` int(11) NOT NULL AUTO_INCREMENT,
  `course` varchar(28) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `teachername` varchar(28) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `studentid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`gradeid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES (1, '计算机导论', '郭永锋', 90, 1);
INSERT INTO `grade` VALUES (2, '计算机导论', '郭永锋', 90, 2);
INSERT INTO `grade` VALUES (3, 'Java程序设计', '朱强', 92, 3);
INSERT INTO `grade` VALUES (4, '路由交换技术', '朱强', 65, 4);
INSERT INTO `grade` VALUES (5, 'C语言', '郭永锋', 99, 5);
INSERT INTO `grade` VALUES (6, 'Java程序设计', '朱强', 88, 6);
INSERT INTO `grade` VALUES (7, 'Java课程设计', '朱强', 95, 1);

-- ----------------------------
-- Table structure for msg
-- ----------------------------
DROP TABLE IF EXISTS `msg`;
CREATE TABLE `msg`  (
  `msgid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `addtime` varchar(28) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `studentid` int(11) NULL DEFAULT NULL,
  `teachername` varchar(28) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `replycontent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `replytime` varchar(28) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`msgid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of msg
-- ----------------------------
INSERT INTO `msg` VALUES (1, '考试时间', '老师，我们具体考试时间是几号？', '2019年1月6号', 1, '朱强', '8号上午八点', '2019-01-07 19:38:38');
INSERT INTO `msg` VALUES (2, 'Java课设报告', '老师，课设报告的模板能发一下吗？', '2019-01-07 18:45:06', 1, '朱强', '跟你们班长说一下，他那有备份', '2019-01-07 20:31:38');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `studentid` int(11) NOT NULL AUTO_INCREMENT,
  `sno` varchar(28) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `studentname` varchar(28) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `pwd` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `major` varchar(28) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`studentid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, '201701014238', '黄光辉', '1234', '网络工程');
INSERT INTO `student` VALUES (2, '201701014242', '应俊杰', '1234', '计算机应用技术');
INSERT INTO `student` VALUES (3, '2013110001', '李刚', '1111', '数字媒体技术');
INSERT INTO `student` VALUES (4, '201701024125', '小王', '2222', '网络工程');
INSERT INTO `student` VALUES (5, '201801014104', '鄢语', 'MyLove', '计算机科学与技术');
INSERT INTO `student` VALUES (6, '201701014425', '张三', '4444', '软件工程');
INSERT INTO `student` VALUES (7, '201701014252', '李四', '123456', '计算机科学与技术');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `teacherid` int(11) NOT NULL AUTO_INCREMENT,
  `gno` varchar(28) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `teachername` varchar(28) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `pwd` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`teacherid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (1, '101018', '朱强', '123456');
INSERT INTO `teacher` VALUES (2, '101010', '郭永锋', '123456');
INSERT INTO `teacher` VALUES (3, '980828', '黄光辉', '111111');

SET FOREIGN_KEY_CHECKS = 1;
