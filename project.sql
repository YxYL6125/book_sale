/*
 Navicat Premium Data Transfer

 Source Server         : 醉芬芳1
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : project

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 12/03/2022 20:04:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book_info
-- ----------------------------
DROP TABLE IF EXISTS `book_info`;
CREATE TABLE `book_info`  (
  `goods_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `goods_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图书名',
  `goods_miaoshu` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图书描述',
  `goods_pic` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '存放商品图片',
  `goods_shichangjia` int(10) NOT NULL COMMENT '市场价',
  `goods_tejia` int(10) NOT NULL COMMENT '特价',
  `goods_isnottejia` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '普通图书',
  `goods_catelog_id` int(10) UNSIGNED NOT NULL COMMENT '商品种类号',
  PRIMARY KEY (`goods_id`) USING BTREE,
  INDEX `book_fk1`(`goods_catelog_id`) USING BTREE,
  CONSTRAINT `book_fk1` FOREIGN KEY (`goods_catelog_id`) REFERENCES `bookcatelog_info` (`catelog_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_info
-- ----------------------------

-- ----------------------------
-- Table structure for bookcatelog_info
-- ----------------------------
DROP TABLE IF EXISTS `bookcatelog_info`;
CREATE TABLE `bookcatelog_info`  (
  `catelog_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '种类编号',
  `catelog_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '种类描述',
  `catelog_miaoshu` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '种类名称',
  PRIMARY KEY (`catelog_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bookcatelog_info
-- ----------------------------

-- ----------------------------
-- Table structure for gonggao_info
-- ----------------------------
DROP TABLE IF EXISTS `gonggao_info`;
CREATE TABLE `gonggao_info`  (
  `gonggao_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '公告编号',
  `gonggao_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `gonggao_content` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告内容',
  `gonggao_data` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告创建时间',
  `gonggao_fabuzhe` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发布人',
  PRIMARY KEY (`gonggao_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gonggao_info
-- ----------------------------

-- ----------------------------
-- Table structure for guanliyuan_info
-- ----------------------------
DROP TABLE IF EXISTS `guanliyuan_info`;
CREATE TABLE `guanliyuan_info`  (
  `userId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `userName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员名称',
  `userPw` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员密码',
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guanliyuan_info
-- ----------------------------

-- ----------------------------
-- Table structure for liuyan_info
-- ----------------------------
DROP TABLE IF EXISTS `liuyan_info`;
CREATE TABLE `liuyan_info`  (
  `liuyan_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '留言ID',
  `liuyan_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '留言标题',
  `liuyan_content` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '留言内容',
  `liuyan_date` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '留言时间',
  `liuyan_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '留言用户',
  PRIMARY KEY (`liuyan_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of liuyan_info
-- ----------------------------

-- ----------------------------
-- Table structure for mingxi_info
-- ----------------------------
DROP TABLE IF EXISTS `mingxi_info`;
CREATE TABLE `mingxi_info`  (
  `mingxi_orderItem_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '订单明细编号',
  `mingxi_order_id` int(10) UNSIGNED NOT NULL COMMENT '订单编号',
  `mingxi_goods_id` int(10) UNSIGNED NOT NULL COMMENT '商品编号',
  `mingxi_goods_quantity` int(10) NOT NULL COMMENT '购买数量',
  PRIMARY KEY (`mingxi_orderItem_id`) USING BTREE,
  INDEX `mingxi_fk1`(`mingxi_order_id`) USING BTREE,
  INDEX `mingxi_fk2`(`mingxi_goods_id`) USING BTREE,
  CONSTRAINT `mingxi_fk1` FOREIGN KEY (`mingxi_order_id`) REFERENCES `order_info` (`order_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `mingxi_fk2` FOREIGN KEY (`mingxi_goods_id`) REFERENCES `book_info` (`goods_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mingxi_info
-- ----------------------------

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info`  (
  `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `order_bianhao` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号',
  `order_date` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单生成日期',
  `order_zhuangtai` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单状态',
  `order_jine` int(10) NOT NULL COMMENT '总的消费金额',
  `order_songhuodizhi` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '送货地址',
  `order_fukuangfangshi` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '付款方式',
  `order_user_id` int(10) UNSIGNED NOT NULL COMMENT '用户ID',
  PRIMARY KEY (`order_id`) USING BTREE,
  INDEX `order_user_id`(`order_user_id`) USING BTREE,
  INDEX `order_bianhao`(`order_bianhao`) USING BTREE,
  CONSTRAINT `order_fk1` FOREIGN KEY (`order_user_id`) REFERENCES `user_info` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_info
-- ----------------------------

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户ID',
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

-- ----------------------------
-- Records of user_info
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
