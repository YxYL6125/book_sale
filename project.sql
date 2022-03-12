/*
 Navicat Premium Data Transfer

 Source Server         : 本地mysql
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : 127.0.0.1:3306
 Source Schema         : yxyl_shelter

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 12/03/2022 21:38:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for announcement_info
-- ----------------------------
DROP TABLE IF EXISTS `announcement_info`;
CREATE TABLE `announcement_info`  (
  `announcement_id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '公告编号',
  `announcement_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `announcement_content` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告内容',
  `announcement_data` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告创建时间',
  `announcement_fabuzhe` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发布人',
  PRIMARY KEY (`announcement_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for book_info
-- ----------------------------
DROP TABLE IF EXISTS `book_info`;
CREATE TABLE `book_info`  (
  `goods_id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `goods_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图书名',
  `goods_miaoshu` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图书描述',
  `goods_pic` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '存放商品图片',
  `goods_shichangjia` int(0) NOT NULL COMMENT '市场价',
  `goods_tejia` int(0) NOT NULL COMMENT '特价',
  `goods_isnottejia` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '普通图书',
  `goods_catelog_id` int(0) UNSIGNED NOT NULL COMMENT '商品种类号',
  PRIMARY KEY (`goods_id`) USING BTREE,
  INDEX `book_fk1`(`goods_catelog_id`) USING BTREE,
  CONSTRAINT `book_fk1` FOREIGN KEY (`goods_catelog_id`) REFERENCES `bookcatelog_info` (`catelog_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bookcatelog_info
-- ----------------------------
DROP TABLE IF EXISTS `bookcatelog_info`;
CREATE TABLE `bookcatelog_info`  (
  `catelog_id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '种类编号',
  `catelog_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '种类描述',
  `catelog_miaoshu` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '种类名称',
  PRIMARY KEY (`catelog_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for details_info
-- ----------------------------
DROP TABLE IF EXISTS `details_info`;
CREATE TABLE `details_info`  (
  `details_orderItem_id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '订单明细编号',
  `details_order_id` int(0) UNSIGNED NOT NULL COMMENT '订单编号',
  `details_goods_id` int(0) UNSIGNED NOT NULL COMMENT '商品编号',
  `details_goods_quantity` int(0) NOT NULL COMMENT '购买数量',
  PRIMARY KEY (`details_orderItem_id`) USING BTREE,
  INDEX `mingxi_fk1`(`details_order_id`) USING BTREE,
  INDEX `mingxi_fk2`(`details_goods_id`) USING BTREE,
  CONSTRAINT `mingxi_fk1` FOREIGN KEY (`details_order_id`) REFERENCES `order_info` (`order_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `mingxi_fk2` FOREIGN KEY (`details_goods_id`) REFERENCES `book_info` (`goods_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for message_info
-- ----------------------------
DROP TABLE IF EXISTS `message_info`;
CREATE TABLE `message_info`  (
  `message_id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '留言ID',
  `message_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '留言标题',
  `message_content` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '留言内容',
  `message_date` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '留言时间',
  `message_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '留言用户',
  PRIMARY KEY (`message_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info`  (
  `order_id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `order_bianhao` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号',
  `order_date` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单生成日期',
  `order_zhuangtai` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单状态',
  `order_jine` int(0) NOT NULL COMMENT '总的消费金额',
  `order_songhuodizhi` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '送货地址',
  `order_fukuangfangshi` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '付款方式',
  `order_user_id` int(0) UNSIGNED NOT NULL COMMENT '用户ID',
  PRIMARY KEY (`order_id`) USING BTREE,
  INDEX `order_user_id`(`order_user_id`) USING BTREE,
  INDEX `order_bianhao`(`order_bianhao`) USING BTREE,
  CONSTRAINT `order_fk1` FOREIGN KEY (`order_user_id`) REFERENCES `user_info` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for root_info
-- ----------------------------
DROP TABLE IF EXISTS `root_info`;
CREATE TABLE `root_info`  (
  `userId` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `userName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员名称',
  `userPw` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员密码',
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `user_id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `user_pw` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  `user_realname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '真实姓名',
  `user_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址',
  `user_sex` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别',
  `user_tel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系电话',
  `user_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户邮箱',
  `user_qq` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户QQ',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
