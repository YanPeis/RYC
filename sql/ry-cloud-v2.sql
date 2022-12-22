/*
 Navicat Premium Data Transfer

 Source Server         : ryc-2
 Source Server Type    : MySQL
 Source Server Version : 50622
 Source Host           : localhost:3306
 Source Schema         : ry-cloud

 Target Server Type    : MySQL
 Target Server Version : 50622
 File Encoding         : 65001

 Date: 22/12/2022 03:23:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (13, 'homework', '作业提交记录', NULL, NULL, 'Homework', 'crud', 'com.ruoyi.system', 'system', 'homework', '作业提交记录', 'yanpei', '0', '/', '{\"parentMenuId\":\"1\"}', 'admin', '2022-12-21 03:10:18', '', '2022-12-21 17:18:19', NULL);
INSERT INTO `gen_table` VALUES (14, 'sys_role_dept', '角色和部门关联表', NULL, NULL, 'SysRoleDept', 'crud', 'com.ruoyi.system', 'system', 'dept', '角色和部门关联', 'yanpei', '0', '/', NULL, 'admin', '2022-12-21 17:58:40', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (15, 'sys_user_post', '用户与岗位关联表', NULL, NULL, 'SysUserPost', 'crud', 'com.ruoyi.system', 'system', 'post', '用户与岗位关联', 'yanpei', '0', '/', NULL, 'admin', '2022-12-21 17:58:40', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (16, 'sys_user', '用户信息表', NULL, NULL, 'SysUser', 'crud', 'com.ruoyi.system', 'system', 'user', '用户信息', 'yanpei', '0', '/', NULL, 'admin', '2022-12-21 17:59:05', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (17, 'sys_dept', '部门表', NULL, NULL, 'SysDept', 'crud', 'com.ruoyi.system', 'system', 'dept', '部门', 'yanpei', '0', '/', NULL, 'admin', '2022-12-21 18:02:58', '', NULL, NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 130 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (86, '13', 'hm_id', '作业记录ID', 'int(11)', 'Long', 'hmId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-12-21 03:10:18', '', '2022-12-21 17:18:19');
INSERT INTO `gen_table_column` VALUES (87, '13', 'hm_sub', '作业科目', 'varchar(20)', 'String', 'hmSub', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2022-12-21 03:10:18', '', '2022-12-21 17:18:19');
INSERT INTO `gen_table_column` VALUES (88, '13', 'hm_name', '学生姓名', 'varchar(20)', 'String', 'hmName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2022-12-21 03:10:18', '', '2022-12-21 17:18:19');
INSERT INTO `gen_table_column` VALUES (89, '13', 'hm_class', '学生班级', 'varchar(20)', 'String', 'hmClass', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2022-12-21 03:10:18', '', '2022-12-21 17:18:19');
INSERT INTO `gen_table_column` VALUES (90, '13', 'hm_url', '作业包URL', 'varchar(100)', 'String', 'hmUrl', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2022-12-21 03:10:18', '', '2022-12-21 17:18:19');
INSERT INTO `gen_table_column` VALUES (91, '13', 'hm_subtime', '提交时间', 'datetime', 'Date', 'hmSubtime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2022-12-21 03:10:18', '', '2022-12-21 17:18:19');
INSERT INTO `gen_table_column` VALUES (92, '13', 'hm_mark', '作业评价', 'varchar(30)', 'String', 'hmMark', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2022-12-21 03:10:18', '', '2022-12-21 17:18:19');
INSERT INTO `gen_table_column` VALUES (93, '14', 'role_id', '角色ID', 'bigint(20)', 'Long', 'roleId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-12-21 17:58:40', '', NULL);
INSERT INTO `gen_table_column` VALUES (94, '14', 'dept_id', '部门ID', 'bigint(20)', 'Long', 'deptId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 2, 'admin', '2022-12-21 17:58:40', '', NULL);
INSERT INTO `gen_table_column` VALUES (95, '15', 'user_id', '用户ID', 'bigint(20)', 'Long', 'userId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-12-21 17:58:40', '', NULL);
INSERT INTO `gen_table_column` VALUES (96, '15', 'post_id', '岗位ID', 'bigint(20)', 'Long', 'postId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 2, 'admin', '2022-12-21 17:58:40', '', NULL);
INSERT INTO `gen_table_column` VALUES (97, '16', 'user_id', '用户ID', 'bigint(20)', 'Long', 'userId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-12-21 17:59:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (98, '16', 'dept_id', '部门ID', 'bigint(20)', 'Long', 'deptId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2022-12-21 17:59:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (99, '16', 'user_name', '用户账号', 'varchar(30)', 'String', 'userName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2022-12-21 17:59:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (100, '16', 'nick_name', '用户昵称', 'varchar(30)', 'String', 'nickName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2022-12-21 17:59:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (101, '16', 'user_type', '用户类型（00系统用户）', 'varchar(2)', 'String', 'userType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 5, 'admin', '2022-12-21 17:59:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (102, '16', 'email', '用户邮箱', 'varchar(50)', 'String', 'email', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2022-12-21 17:59:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (103, '16', 'phonenumber', '手机号码', 'varchar(11)', 'String', 'phonenumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2022-12-21 17:59:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (104, '16', 'sex', '用户性别（0男 1女 2未知）', 'char(1)', 'String', 'sex', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 8, 'admin', '2022-12-21 17:59:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (105, '16', 'avatar', '头像地址', 'varchar(100)', 'String', 'avatar', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2022-12-21 17:59:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (106, '16', 'password', '密码', 'varchar(100)', 'String', 'password', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2022-12-21 17:59:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (107, '16', 'status', '帐号状态（0正常 1停用）', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 11, 'admin', '2022-12-21 17:59:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (108, '16', 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2022-12-21 17:59:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (109, '16', 'login_ip', '最后登录IP', 'varchar(128)', 'String', 'loginIp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2022-12-21 17:59:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (110, '16', 'login_date', '最后登录时间', 'datetime', 'Date', 'loginDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 14, 'admin', '2022-12-21 17:59:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (111, '16', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 15, 'admin', '2022-12-21 17:59:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (112, '16', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 16, 'admin', '2022-12-21 17:59:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (113, '16', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 17, 'admin', '2022-12-21 17:59:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (114, '16', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 18, 'admin', '2022-12-21 17:59:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (115, '16', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 19, 'admin', '2022-12-21 17:59:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (116, '17', 'dept_id', '部门id', 'bigint(20)', 'Long', 'deptId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-12-21 18:02:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (117, '17', 'parent_id', '父部门id', 'bigint(20)', 'Long', 'parentId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2022-12-21 18:02:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (118, '17', 'ancestors', '祖级列表', 'varchar(50)', 'String', 'ancestors', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2022-12-21 18:02:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (119, '17', 'dept_name', '部门名称', 'varchar(30)', 'String', 'deptName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2022-12-21 18:02:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (120, '17', 'order_num', '显示顺序', 'int(4)', 'Integer', 'orderNum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2022-12-21 18:02:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (121, '17', 'leader', '负责人', 'varchar(20)', 'String', 'leader', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2022-12-21 18:02:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (122, '17', 'phone', '联系电话', 'varchar(11)', 'String', 'phone', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2022-12-21 18:02:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (123, '17', 'email', '邮箱', 'varchar(50)', 'String', 'email', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2022-12-21 18:02:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (124, '17', 'status', '部门状态（0正常 1停用）', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 9, 'admin', '2022-12-21 18:02:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (125, '17', 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2022-12-21 18:02:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (126, '17', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2022-12-21 18:02:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (127, '17', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2022-12-21 18:02:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (128, '17', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2022-12-21 18:02:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (129, '17', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 14, 'admin', '2022-12-21 18:02:58', '', NULL);

-- ----------------------------
-- Table structure for homework
-- ----------------------------
DROP TABLE IF EXISTS `homework`;
CREATE TABLE `homework`  (
  `hm_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '作业记录ID',
  `hm_sub` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作业科目',
  `hm_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `hm_class` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生班级',
  `hm_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作业包URL',
  `hm_subtime` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '提交时间',
  `hm_mark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作业评价',
  PRIMARY KEY (`hm_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '作业提交记录' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of homework
-- ----------------------------
INSERT INTO `homework` VALUES (1, '语文', 'stu1', '初一一班', '*********', '2022-12-21 00:00:00', NULL);
INSERT INTO `homework` VALUES (2, '数学', 'stu3', '初一一班', '*********', '2022-12-20 00:00:00', NULL);
INSERT INTO `homework` VALUES (3, '英语', 'stu2', '初一一班', '*********', '2022-12-20 00:00:00', NULL);
INSERT INTO `homework` VALUES (4, '语文', 'stu7', '初一三班', '*********', '2022-12-20 00:00:00', NULL);
INSERT INTO `homework` VALUES (5, '数学', 'stu8', '初一三班', '*********', '2022-12-20 00:00:00', '90');
INSERT INTO `homework` VALUES (6, '英语', 'stu7', '初一三班', '*********', '2022-12-21 00:00:00', '优');
INSERT INTO `homework` VALUES (7, '数学', 'stu19', '初二一班', '*********', '2022-12-21 00:00:00', '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2022-12-20 03:42:45', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2022-12-20 03:42:45', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2022-12-20 03:42:45', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2022-12-20 03:42:45', '', NULL, '是否开启注册用户功能（true开启，false关闭）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '第一中学', 0, '校长', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-12-20 03:42:44', 'admin', '2022-12-21 00:48:54');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '初一', 1, '初一级长', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-12-20 03:42:44', 'admin', '2022-12-21 00:49:27');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '初二', 2, '初二级长', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-12-20 03:42:44', 'admin', '2022-12-21 01:30:52');
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '初一一班', 1, '一班班主任', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-12-20 03:42:44', 'admin', '2022-12-21 01:30:28');
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '初一二班', 2, '初一二班班主任', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-12-20 03:42:44', 'admin', '2022-12-21 01:30:40');
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '初一三班', 3, '初一三班班主任', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-12-20 03:42:44', 'admin', '2022-12-21 01:30:45');
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '初一四班', 4, '初一四班班主任', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-12-20 03:42:44', 'admin', '2022-12-21 01:30:49');
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2022-12-20 03:42:44', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '初二一班', 1, '初二一班班主任', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-12-20 03:42:44', 'admin', '2022-12-21 01:31:12');
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '初二二班', 2, '初二二班班主任', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-12-20 03:42:44', 'admin', '2022-12-21 01:31:27');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2022-12-20 03:42:45', '', NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2022-12-20 03:42:45', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示信息',
  `access_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 190 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '0', '登录成功', '2022-12-20 06:20:50');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '0', '退出成功', '2022-12-21 02:33:35');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '0', '登录成功', '2022-12-21 02:33:48');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '0', '退出成功', '2022-12-21 16:43:16');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '0', '登录成功', '2022-12-21 16:43:23');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '0', '退出成功', '2022-12-21 18:09:15');
INSERT INTO `sys_logininfor` VALUES (106, 'headmaster', '127.0.0.1', '1', '密码输入错误1次', '2022-12-21 18:09:26');
INSERT INTO `sys_logininfor` VALUES (107, 'headmaster', '127.0.0.1', '0', '登录成功', '2022-12-21 18:09:37');
INSERT INTO `sys_logininfor` VALUES (108, 'headmaster', '127.0.0.1', '0', '退出成功', '2022-12-21 18:10:11');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '0', '登录成功', '2022-12-21 18:10:18');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '0', '退出成功', '2022-12-21 18:26:43');
INSERT INTO `sys_logininfor` VALUES (111, 'headmaster', '127.0.0.1', '0', '登录成功', '2022-12-21 18:27:02');
INSERT INTO `sys_logininfor` VALUES (112, 'headmaster', '127.0.0.1', '0', '退出成功', '2022-12-21 18:37:08');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '0', '登录成功', '2022-12-21 19:17:07');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '0', '退出成功', '2022-12-21 19:33:36');
INSERT INTO `sys_logininfor` VALUES (115, 'headmaster', '127.0.0.1', '1', '密码输入错误1次', '2022-12-21 19:33:46');
INSERT INTO `sys_logininfor` VALUES (116, 'headmaster', '127.0.0.1', '0', '登录成功', '2022-12-21 19:34:06');
INSERT INTO `sys_logininfor` VALUES (117, 'headmaster', '127.0.0.1', '0', '退出成功', '2022-12-22 01:01:48');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '0', '登录成功', '2022-12-22 01:02:29');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '0', '退出成功', '2022-12-22 01:35:55');
INSERT INTO `sys_logininfor` VALUES (120, 'stu1', '127.0.0.1', '0', '登录成功', '2022-12-22 01:36:05');
INSERT INTO `sys_logininfor` VALUES (121, 'stu1', '127.0.0.1', '0', '退出成功', '2022-12-22 01:36:23');
INSERT INTO `sys_logininfor` VALUES (122, 'headmaster', '127.0.0.1', '0', '登录成功', '2022-12-22 01:36:33');
INSERT INTO `sys_logininfor` VALUES (123, 'headmaster', '127.0.0.1', '0', '退出成功', '2022-12-22 02:05:39');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '0', '登录成功', '2022-12-22 02:05:45');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '0', '退出成功', '2022-12-22 02:06:03');
INSERT INTO `sys_logininfor` VALUES (126, 'ry', '127.0.0.1', '1', '密码输入错误1次', '2022-12-22 02:06:12');
INSERT INTO `sys_logininfor` VALUES (127, 'ry', '127.0.0.1', '1', '密码输入错误2次', '2022-12-22 02:06:17');
INSERT INTO `sys_logininfor` VALUES (128, 'ry', '127.0.0.1', '1', '密码输入错误3次', '2022-12-22 02:06:27');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '1', '密码输入错误1次', '2022-12-22 02:06:36');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '1', '密码输入错误2次', '2022-12-22 02:06:51');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '0', '登录成功', '2022-12-22 02:06:59');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '0', '退出成功', '2022-12-22 02:09:17');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '1', '密码输入错误1次', '2022-12-22 02:09:21');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '1', '密码输入错误2次', '2022-12-22 02:09:29');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '1', '密码输入错误3次', '2022-12-22 02:09:34');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '1', '密码输入错误4次', '2022-12-22 02:10:17');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '1', '密码输入错误5次', '2022-12-22 02:10:32');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '1', '密码输入错误5次，帐户锁定10分钟', '2022-12-22 02:11:09');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '1', '密码输入错误5次，帐户锁定10分钟', '2022-12-22 02:12:50');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '1', '密码输入错误5次，帐户锁定10分钟', '2022-12-22 02:13:34');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '1', '密码输入错误5次，帐户锁定10分钟', '2022-12-22 02:14:09');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '1', '密码输入错误5次，帐户锁定10分钟', '2022-12-22 02:15:13');
INSERT INTO `sys_logininfor` VALUES (143, 'headmaster', '127.0.0.1', '0', '登录成功', '2022-12-22 02:15:34');
INSERT INTO `sys_logininfor` VALUES (144, 'headmaster', '127.0.0.1', '0', '退出成功', '2022-12-22 02:16:59');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '1', '密码输入错误5次，帐户锁定10分钟', '2022-12-22 02:17:04');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '1', '密码输入错误5次，帐户锁定10分钟', '2022-12-22 02:18:16');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '0', '登录成功', '2022-12-22 02:23:46');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '0', '退出成功', '2022-12-22 02:25:15');
INSERT INTO `sys_logininfor` VALUES (149, 'ry', '127.0.0.1', '0', '登录成功', '2022-12-22 02:25:24');
INSERT INTO `sys_logininfor` VALUES (150, 'ry', '127.0.0.1', '0', '退出成功', '2022-12-22 02:26:37');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '127.0.0.1', '0', '登录成功', '2022-12-22 02:26:48');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '127.0.0.1', '0', '退出成功', '2022-12-22 02:27:04');
INSERT INTO `sys_logininfor` VALUES (153, 'zhao', '127.0.0.1', '0', '登录成功', '2022-12-22 02:27:15');
INSERT INTO `sys_logininfor` VALUES (154, 'zhao', '127.0.0.1', '0', '退出成功', '2022-12-22 02:28:20');
INSERT INTO `sys_logininfor` VALUES (155, 'admin', '127.0.0.1', '0', '登录成功', '2022-12-22 02:28:24');
INSERT INTO `sys_logininfor` VALUES (156, 'admin', '127.0.0.1', '0', '退出成功', '2022-12-22 02:28:44');
INSERT INTO `sys_logininfor` VALUES (157, 'ry', '127.0.0.1', '0', '登录成功', '2022-12-22 02:28:56');
INSERT INTO `sys_logininfor` VALUES (158, 'ry', '127.0.0.1', '0', '退出成功', '2022-12-22 02:29:43');
INSERT INTO `sys_logininfor` VALUES (159, 'admin', '127.0.0.1', '0', '登录成功', '2022-12-22 02:29:47');
INSERT INTO `sys_logininfor` VALUES (160, 'admin', '127.0.0.1', '0', '退出成功', '2022-12-22 02:42:11');
INSERT INTO `sys_logininfor` VALUES (161, 'ry', '127.0.0.1', '0', '登录成功', '2022-12-22 02:42:25');
INSERT INTO `sys_logininfor` VALUES (162, 'ry', '127.0.0.1', '0', '退出成功', '2022-12-22 02:46:53');
INSERT INTO `sys_logininfor` VALUES (163, 'ry', '127.0.0.1', '0', '登录成功', '2022-12-22 02:47:02');
INSERT INTO `sys_logininfor` VALUES (164, 'ry', '127.0.0.1', '0', '退出成功', '2022-12-22 02:48:04');
INSERT INTO `sys_logininfor` VALUES (165, 'headmaster', '127.0.0.1', '0', '登录成功', '2022-12-22 02:48:17');
INSERT INTO `sys_logininfor` VALUES (166, 'headmaster', '127.0.0.1', '0', '登录成功', '2022-12-22 02:49:28');
INSERT INTO `sys_logininfor` VALUES (167, 'headmaster', '127.0.0.1', '0', '退出成功', '2022-12-22 02:53:42');
INSERT INTO `sys_logininfor` VALUES (168, 'ry', '127.0.0.1', '0', '登录成功', '2022-12-22 02:53:52');
INSERT INTO `sys_logininfor` VALUES (169, 'ry', '127.0.0.1', '0', '退出成功', '2022-12-22 03:01:00');
INSERT INTO `sys_logininfor` VALUES (170, 'admin', '127.0.0.1', '0', '登录成功', '2022-12-22 03:01:50');
INSERT INTO `sys_logininfor` VALUES (171, 'admin', '127.0.0.1', '0', '退出成功', '2022-12-22 03:05:53');
INSERT INTO `sys_logininfor` VALUES (172, 'ry', '127.0.0.1', '0', '登录成功', '2022-12-22 03:06:05');
INSERT INTO `sys_logininfor` VALUES (173, 'ry', '127.0.0.1', '0', '退出成功', '2022-12-22 03:06:36');
INSERT INTO `sys_logininfor` VALUES (174, 'headmaster', '127.0.0.1', '0', '登录成功', '2022-12-22 03:06:46');
INSERT INTO `sys_logininfor` VALUES (175, 'headmaster', '127.0.0.1', '0', '退出成功', '2022-12-22 03:08:02');
INSERT INTO `sys_logininfor` VALUES (176, 'zhao', '127.0.0.1', '0', '登录成功', '2022-12-22 03:08:11');
INSERT INTO `sys_logininfor` VALUES (177, 'zhao', '127.0.0.1', '0', '退出成功', '2022-12-22 03:09:25');
INSERT INTO `sys_logininfor` VALUES (178, 'ry', '127.0.0.1', '0', '登录成功', '2022-12-22 03:09:35');
INSERT INTO `sys_logininfor` VALUES (179, 'ry', '127.0.0.1', '0', '退出成功', '2022-12-22 03:12:37');
INSERT INTO `sys_logininfor` VALUES (180, 'admin', '127.0.0.1', '0', '登录成功', '2022-12-22 03:12:42');
INSERT INTO `sys_logininfor` VALUES (181, 'admin', '127.0.0.1', '0', '退出成功', '2022-12-22 03:13:21');
INSERT INTO `sys_logininfor` VALUES (182, 'ry', '127.0.0.1', '1', '密码输入错误1次', '2022-12-22 03:13:30');
INSERT INTO `sys_logininfor` VALUES (183, 'ry', '127.0.0.1', '0', '登录成功', '2022-12-22 03:13:38');
INSERT INTO `sys_logininfor` VALUES (184, 'ry', '127.0.0.1', '0', '退出成功', '2022-12-22 03:14:52');
INSERT INTO `sys_logininfor` VALUES (185, 'admin', '127.0.0.1', '0', '登录成功', '2022-12-22 03:14:56');
INSERT INTO `sys_logininfor` VALUES (186, 'admin', '127.0.0.1', '0', '退出成功', '2022-12-22 03:19:00');
INSERT INTO `sys_logininfor` VALUES (187, 'zhao', '127.0.0.1', '0', '登录成功', '2022-12-22 03:19:09');
INSERT INTO `sys_logininfor` VALUES (188, 'zhao', '127.0.0.1', '0', '退出成功', '2022-12-22 03:21:10');
INSERT INTO `sys_logininfor` VALUES (189, 'headmaster', '127.0.0.1', '0', '登录成功', '2022-12-22 03:21:20');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(1) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2018 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2022-12-20 03:42:45', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2022-12-20 03:42:45', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 4, 'http://ruoyi.vip', NULL, '', 0, 0, 'M', '0', '0', '', 'guide', 'admin', '2022-12-20 03:42:45', '', NULL, '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2022-12-20 03:42:45', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2022-12-20 03:42:45', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (103, '班级管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2022-12-20 03:42:45', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '身份列表', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2022-12-20 03:42:45', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2022-12-20 03:42:45', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2022-12-20 03:42:45', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (116, '系统接口', 3, 3, 'http://localhost:8080/swagger-ui/index.html', '', '', 0, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2022-12-20 03:42:45', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'system/operlog/index', '', 1, 0, 'C', '0', '0', 'system:operlog:list', 'form', 'admin', '2022-12-20 03:42:45', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'system/logininfor/index', '', 1, 0, 'C', '0', '0', 'system:logininfor:list', 'logininfor', 'admin', '2022-12-20 03:42:45', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 115, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 115, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 115, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 115, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2022-12-20 03:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2012, '作业提交记录', 1, 1, 'homework', 'system/homework/index', NULL, 1, 0, 'C', '0', '0', 'system:homework:list', 'post', 'admin', '2022-12-21 17:19:41', '', NULL, '作业提交记录菜单');
INSERT INTO `sys_menu` VALUES (2013, '作业提交记录查询', 2012, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:homework:query', '#', 'admin', '2022-12-21 17:19:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2014, '作业提交记录新增', 2012, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:homework:add', '#', 'admin', '2022-12-21 17:19:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2015, '作业提交记录修改', 2012, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:homework:edit', '#', 'admin', '2022-12-21 17:19:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2016, '作业提交记录删除', 2012, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:homework:remove', '#', 'admin', '2022-12-21 17:19:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2017, '作业提交记录导出', 2012, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:homework:export', '#', 'admin', '2022-12-21 17:19:41', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2022-12-20 03:42:45', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2022-12-20 03:42:45', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 242 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '代码生成', 6, 'com.ruoyi.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '127.0.0.1', '', '\"sys_user_role,sys_user_post,sys_logininfor,sys_job_log,sys_job,sys_role_menu,sys_role_dept,sys_dict_type,sys_dict_data,sys_config\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-20 07:08:16');
INSERT INTO `sys_oper_log` VALUES (101, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', '{\"tables\":\"sys_user_role\"}', NULL, 0, NULL, '2022-12-20 07:12:47');
INSERT INTO `sys_oper_log` VALUES (102, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', '{\"tables\":\"sys_user_post\"}', NULL, 0, NULL, '2022-12-20 07:13:18');
INSERT INTO `sys_oper_log` VALUES (103, '代码生成', 2, 'com.ruoyi.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/gen', '127.0.0.1', '', '{\"businessName\":\"post\",\"className\":\"SysUserPost\",\"columns\":[{\"capJavaField\":\"UserId\",\"columnComment\":\"用户ID\",\"columnId\":65,\"columnName\":\"user_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-20 07:08:16\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"userId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"PostId\",\"columnComment\":\"岗位ID\",\"columnId\":66,\"columnName\":\"post_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2022-12-20 07:08:16\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"postId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"yanpei\",\"functionName\":\"用户与岗位关联\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"system\",\"options\":\"{}\",\"packageName\":\"com.ruoyi.system\",\"params\":{},\"sub\":false,\"tableComment\":\"用户与岗位关联表\",\"tableId\":9,\"tableName\":\"sys_user_post\",\"tplCategory\":\"crud\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-20 07:13:51');
INSERT INTO `sys_oper_log` VALUES (104, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', '{\"tables\":\"sys_user_post\"}', NULL, 0, NULL, '2022-12-20 07:13:56');
INSERT INTO `sys_oper_log` VALUES (105, '菜单管理', 3, 'com.ruoyi.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/2', '127.0.0.1', '', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', 0, NULL, '2022-12-21 00:35:46');
INSERT INTO `sys_oper_log` VALUES (106, '菜单管理', 3, 'com.ruoyi.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/111', '127.0.0.1', '', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', 0, NULL, '2022-12-21 00:35:55');
INSERT INTO `sys_oper_log` VALUES (107, '部门管理', 2, 'com.ruoyi.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"ancestors\":\"0\",\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2022-12-20 03:42:44\",\"delFlag\":\"0\",\"deptId\":100,\"deptName\":\"第一中学\",\"email\":\"ry@qq.com\",\"leader\":\"校长\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 00:48:54');
INSERT INTO `sys_oper_log` VALUES (108, '部门管理', 2, 'com.ruoyi.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"ancestors\":\"0,100\",\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2022-12-20 03:42:44\",\"delFlag\":\"0\",\"deptId\":101,\"deptName\":\"初一\",\"email\":\"ry@qq.com\",\"leader\":\"初一级长\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 00:49:27');
INSERT INTO `sys_oper_log` VALUES (109, '部门管理', 2, 'com.ruoyi.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"ancestors\":\"0,100,101\",\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2022-12-20 03:42:44\",\"delFlag\":\"0\",\"deptId\":103,\"deptName\":\"一班\",\"email\":\"ry@qq.com\",\"leader\":\"一班班主任\",\"orderNum\":1,\"params\":{},\"parentId\":101,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 00:50:06');
INSERT INTO `sys_oper_log` VALUES (110, '部门管理', 2, 'com.ruoyi.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"ancestors\":\"0,100,101\",\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2022-12-20 03:42:44\",\"delFlag\":\"0\",\"deptId\":104,\"deptName\":\"二班\",\"email\":\"ry@qq.com\",\"leader\":\"二班班主任\",\"orderNum\":2,\"params\":{},\"parentId\":101,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 00:50:44');
INSERT INTO `sys_oper_log` VALUES (111, '部门管理', 2, 'com.ruoyi.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"ancestors\":\"0,100,101\",\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2022-12-20 03:42:44\",\"delFlag\":\"0\",\"deptId\":105,\"deptName\":\"三班\",\"email\":\"ry@qq.com\",\"leader\":\"三班班主任\",\"orderNum\":3,\"params\":{},\"parentId\":101,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 00:50:58');
INSERT INTO `sys_oper_log` VALUES (112, '部门管理', 2, 'com.ruoyi.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"ancestors\":\"0,100,101\",\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2022-12-20 03:42:44\",\"delFlag\":\"0\",\"deptId\":106,\"deptName\":\"四班\",\"email\":\"ry@qq.com\",\"leader\":\"四班班主任\",\"orderNum\":4,\"params\":{},\"parentId\":101,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 00:51:28');
INSERT INTO `sys_oper_log` VALUES (113, '部门管理', 2, 'com.ruoyi.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"ancestors\":\"0,100\",\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2022-12-20 03:42:44\",\"delFlag\":\"0\",\"deptId\":102,\"deptName\":\"初二\",\"email\":\"ry@qq.com\",\"leader\":\"初二级长\",\"orderNum\":2,\"params\":{},\"parentId\":100,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 00:52:35');
INSERT INTO `sys_oper_log` VALUES (114, '部门管理', 3, 'com.ruoyi.system.controller.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/dept/107', '127.0.0.1', '', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 00:52:39');
INSERT INTO `sys_oper_log` VALUES (115, '部门管理', 2, 'com.ruoyi.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"ancestors\":\"0,100,101\",\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2022-12-20 03:42:44\",\"delFlag\":\"0\",\"deptId\":103,\"deptName\":\"初一一班\",\"email\":\"ry@qq.com\",\"leader\":\"一班班主任\",\"orderNum\":1,\"params\":{},\"parentId\":101,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 01:30:28');
INSERT INTO `sys_oper_log` VALUES (116, '部门管理', 2, 'com.ruoyi.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"ancestors\":\"0,100,101\",\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2022-12-20 03:42:44\",\"delFlag\":\"0\",\"deptId\":104,\"deptName\":\"二班\",\"email\":\"ry@qq.com\",\"leader\":\"初一二班班主任\",\"orderNum\":2,\"params\":{},\"parentId\":101,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 01:30:33');
INSERT INTO `sys_oper_log` VALUES (117, '部门管理', 2, 'com.ruoyi.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"ancestors\":\"0,100,101\",\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2022-12-20 03:42:44\",\"delFlag\":\"0\",\"deptId\":104,\"deptName\":\"初一二班\",\"email\":\"ry@qq.com\",\"leader\":\"初一二班班主任\",\"orderNum\":2,\"params\":{},\"parentId\":101,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 01:30:40');
INSERT INTO `sys_oper_log` VALUES (118, '部门管理', 2, 'com.ruoyi.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"ancestors\":\"0,100,101\",\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2022-12-20 03:42:44\",\"delFlag\":\"0\",\"deptId\":105,\"deptName\":\"初一三班\",\"email\":\"ry@qq.com\",\"leader\":\"初一三班班主任\",\"orderNum\":3,\"params\":{},\"parentId\":101,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 01:30:45');
INSERT INTO `sys_oper_log` VALUES (119, '部门管理', 2, 'com.ruoyi.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"ancestors\":\"0,100,101\",\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2022-12-20 03:42:44\",\"delFlag\":\"0\",\"deptId\":106,\"deptName\":\"初一四班\",\"email\":\"ry@qq.com\",\"leader\":\"初一四班班主任\",\"orderNum\":4,\"params\":{},\"parentId\":101,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 01:30:49');
INSERT INTO `sys_oper_log` VALUES (120, '部门管理', 2, 'com.ruoyi.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"ancestors\":\"0,100\",\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2022-12-20 03:42:44\",\"delFlag\":\"0\",\"deptId\":102,\"deptName\":\"初二\",\"email\":\"ry@qq.com\",\"leader\":\"初二级长\",\"orderNum\":2,\"params\":{},\"parentId\":100,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 01:30:52');
INSERT INTO `sys_oper_log` VALUES (121, '部门管理', 2, 'com.ruoyi.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"ancestors\":\"0,100,102\",\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2022-12-20 03:42:44\",\"delFlag\":\"0\",\"deptId\":108,\"deptName\":\"初二一班\",\"email\":\"ry@qq.com\",\"leader\":\"初二一班班主任\",\"orderNum\":1,\"params\":{},\"parentId\":102,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 01:31:12');
INSERT INTO `sys_oper_log` VALUES (122, '部门管理', 2, 'com.ruoyi.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"ancestors\":\"0,100,102\",\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2022-12-20 03:42:44\",\"delFlag\":\"0\",\"deptId\":109,\"deptName\":\"初二二班\",\"email\":\"ry@qq.com\",\"leader\":\"初二二班班主任\",\"orderNum\":2,\"params\":{},\"parentId\":102,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 01:31:27');
INSERT INTO `sys_oper_log` VALUES (123, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', '{\"tables\":\"sys_role_dept\"}', NULL, 0, NULL, '2022-12-21 01:39:25');
INSERT INTO `sys_oper_log` VALUES (124, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', '{\"tables\":\"sys_role_dept\"}', NULL, 0, NULL, '2022-12-21 01:40:25');
INSERT INTO `sys_oper_log` VALUES (125, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', '{\"tables\":\"sys_role_dept\"}', NULL, 0, NULL, '2022-12-21 01:46:24');
INSERT INTO `sys_oper_log` VALUES (126, '岗位管理', 2, 'com.ruoyi.system.controller.SysPostController.edit()', 'PUT', 1, 'admin', NULL, '/post', '127.0.0.1', '', '{\"createBy\":\"admin\",\"createTime\":\"2022-12-20 03:42:44\",\"flag\":false,\"params\":{},\"postCode\":\"hm\",\"postId\":1,\"postName\":\"校长\",\"postSort\":1,\"remark\":\"\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 02:12:52');
INSERT INTO `sys_oper_log` VALUES (127, '岗位管理', 2, 'com.ruoyi.system.controller.SysPostController.edit()', 'PUT', 1, 'admin', NULL, '/post', '127.0.0.1', '', '{\"createBy\":\"admin\",\"createTime\":\"2022-12-20 03:42:44\",\"flag\":false,\"params\":{},\"postCode\":\"pp\",\"postId\":2,\"postName\":\"级长\",\"postSort\":2,\"remark\":\"\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 02:13:26');
INSERT INTO `sys_oper_log` VALUES (128, '岗位管理', 2, 'com.ruoyi.system.controller.SysPostController.edit()', 'PUT', 1, 'admin', NULL, '/post', '127.0.0.1', '', '{\"createBy\":\"admin\",\"createTime\":\"2022-12-20 03:42:44\",\"flag\":false,\"params\":{},\"postCode\":\"ct\",\"postId\":3,\"postName\":\"班主任\",\"postSort\":3,\"remark\":\"\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 02:13:53');
INSERT INTO `sys_oper_log` VALUES (129, '岗位管理', 2, 'com.ruoyi.system.controller.SysPostController.edit()', 'PUT', 1, 'admin', NULL, '/post', '127.0.0.1', '', '{\"createBy\":\"admin\",\"createTime\":\"2022-12-20 03:42:44\",\"flag\":false,\"params\":{},\"postCode\":\"tea\",\"postId\":4,\"postName\":\"老师\",\"postSort\":4,\"remark\":\"\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 02:14:04');
INSERT INTO `sys_oper_log` VALUES (130, '岗位管理', 1, 'com.ruoyi.system.controller.SysPostController.add()', 'POST', 1, 'admin', NULL, '/post', '127.0.0.1', '', '{\"createBy\":\"admin\",\"flag\":false,\"params\":{},\"postCode\":\"stu\",\"postId\":5,\"postName\":\"学生\",\"postSort\":5,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 02:14:14');
INSERT INTO `sys_oper_log` VALUES (131, '岗位管理', 2, 'com.ruoyi.system.controller.SysPostController.edit()', 'PUT', 1, 'admin', NULL, '/post', '127.0.0.1', '', '{\"createBy\":\"admin\",\"createTime\":\"2022-12-20 03:42:44\",\"flag\":false,\"params\":{},\"postCode\":\"pp\",\"postId\":2,\"postName\":\"年级长\",\"postSort\":2,\"remark\":\"\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 02:14:29');
INSERT INTO `sys_oper_log` VALUES (132, '岗位管理', 2, 'com.ruoyi.system.controller.SysPostController.edit()', 'PUT', 1, 'admin', NULL, '/post', '127.0.0.1', '', '{\"createBy\":\"admin\",\"createTime\":\"2022-12-20 03:42:44\",\"flag\":false,\"params\":{},\"postCode\":\"tea\",\"postId\":4,\"postName\":\"语文老师\",\"postSort\":4,\"remark\":\"\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 02:14:48');
INSERT INTO `sys_oper_log` VALUES (133, '岗位管理', 2, 'com.ruoyi.system.controller.SysPostController.edit()', 'PUT', 1, 'admin', NULL, '/post', '127.0.0.1', '', '{\"createBy\":\"admin\",\"createTime\":\"2022-12-21 02:14:14\",\"flag\":false,\"params\":{},\"postCode\":\"stu\",\"postId\":5,\"postName\":\"学生\",\"postSort\":99,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 02:14:56');
INSERT INTO `sys_oper_log` VALUES (134, '岗位管理', 1, 'com.ruoyi.system.controller.SysPostController.add()', 'POST', 1, 'admin', NULL, '/post', '127.0.0.1', '', '{\"createBy\":\"admin\",\"flag\":false,\"params\":{},\"postCode\":\"math——tea\",\"postId\":6,\"postName\":\"数学老师\",\"postSort\":5,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 02:15:13');
INSERT INTO `sys_oper_log` VALUES (135, '岗位管理', 3, 'com.ruoyi.system.controller.SysPostController.remove()', 'DELETE', 1, 'admin', NULL, '/post/5', '127.0.0.1', '', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 02:15:26');
INSERT INTO `sys_oper_log` VALUES (136, '岗位管理', 2, 'com.ruoyi.system.controller.SysPostController.edit()', 'PUT', 1, 'admin', NULL, '/post', '127.0.0.1', '', '{\"createBy\":\"admin\",\"createTime\":\"2022-12-21 02:15:13\",\"flag\":false,\"params\":{},\"postCode\":\"math_tea\",\"postId\":6,\"postName\":\"数学老师\",\"postSort\":5,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 02:15:57');
INSERT INTO `sys_oper_log` VALUES (137, '岗位管理', 1, 'com.ruoyi.system.controller.SysPostController.add()', 'POST', 1, 'admin', NULL, '/post', '127.0.0.1', '', '{\"createBy\":\"admin\",\"flag\":false,\"params\":{},\"postCode\":\"eng_tea\",\"postId\":7,\"postName\":\"英语老师\",\"postSort\":6,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 02:16:25');
INSERT INTO `sys_oper_log` VALUES (138, '岗位管理', 1, 'com.ruoyi.system.controller.SysPostController.add()', 'POST', 1, 'admin', NULL, '/post', '127.0.0.1', '', '{\"createBy\":\"admin\",\"flag\":false,\"params\":{},\"postCode\":\"stu\",\"postId\":8,\"postName\":\"学生\",\"postSort\":99,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 02:16:38');
INSERT INTO `sys_oper_log` VALUES (139, '岗位管理', 2, 'com.ruoyi.system.controller.SysPostController.edit()', 'PUT', 1, 'admin', NULL, '/post', '127.0.0.1', '', '{\"createBy\":\"admin\",\"createTime\":\"2022-12-20 03:42:44\",\"flag\":false,\"params\":{},\"postCode\":\"cn_tea\",\"postId\":4,\"postName\":\"语文老师\",\"postSort\":4,\"remark\":\"\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 02:16:53');
INSERT INTO `sys_oper_log` VALUES (140, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', '{\"tables\":\"sys_config\"}', NULL, 0, NULL, '2022-12-21 02:36:42');
INSERT INTO `sys_oper_log` VALUES (141, '代码生成', 6, 'com.ruoyi.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '127.0.0.1', '', '\"sys_oper_log\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 02:41:29');
INSERT INTO `sys_oper_log` VALUES (142, '代码生成', 3, 'com.ruoyi.gen.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/gen/1,2,3,4,5,6,7,8,9,10', '127.0.0.1', '', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 02:46:04');
INSERT INTO `sys_oper_log` VALUES (143, '代码生成', 3, 'com.ruoyi.gen.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/gen/12', '127.0.0.1', '', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 02:46:08');
INSERT INTO `sys_oper_log` VALUES (144, '代码生成', 6, 'com.ruoyi.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '127.0.0.1', '', '\"homework\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 03:10:18');
INSERT INTO `sys_oper_log` VALUES (145, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', '{\"tables\":\"homework\"}', NULL, 0, NULL, '2022-12-21 03:12:23');
INSERT INTO `sys_oper_log` VALUES (146, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', '{\"tables\":\"homework\"}', NULL, 0, NULL, '2022-12-21 17:05:45');
INSERT INTO `sys_oper_log` VALUES (147, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', '{\"tables\":\"homework\"}', NULL, 0, NULL, '2022-12-21 17:18:42');
INSERT INTO `sys_oper_log` VALUES (148, '用户管理', 1, 'com.ruoyi.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":100,\"nickName\":\"王校长\",\"params\":{},\"postIds\":[1],\"roleIds\":[2],\"status\":\"0\",\"userId\":100,\"userName\":\"headmaster\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 17:40:52');
INSERT INTO `sys_oper_log` VALUES (149, '角色管理', 2, 'com.ruoyi.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"admin\":false,\"createTime\":\"2022-12-20 03:42:44\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,2012,2013,2014,2015,2016,2017,101,1007,1008,1009,1010,1011,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 17:50:05');
INSERT INTO `sys_oper_log` VALUES (150, '用户头像', 2, 'com.ruoyi.system.controller.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/user/profile/avatar', '127.0.0.1', '', '', '{\"msg\":\"文件服务异常，请联系管理员\",\"code\":500}', 0, NULL, '2022-12-21 17:51:53');
INSERT INTO `sys_oper_log` VALUES (151, '用户头像', 2, 'com.ruoyi.system.controller.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/user/profile/avatar', '127.0.0.1', '', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"http://127.0.0.1:9300/statics/2022/12/21/blob_20221221175247A001.png\",\"code\":200}', 0, NULL, '2022-12-21 17:52:47');
INSERT INTO `sys_oper_log` VALUES (152, '个人信息', 2, 'com.ruoyi.system.controller.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/user/profile', '127.0.0.1', '', '{\"admin\":true,\"createBy\":\"admin\",\"createTime\":\"2022-12-20 03:42:44\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":103,\"deptName\":\"初一一班\",\"leader\":\"一班班主任\",\"orderNum\":1,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"email\":\"ry@163.com\",\"loginDate\":\"2022-12-20 03:42:44\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"KITA IKUYO\",\"params\":{},\"phonenumber\":\"15888888888\",\"remark\":\"管理员\",\"roles\":[{\"admin\":true,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":1,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"roleSort\":1,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"userId\":1,\"userName\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 17:53:04');
INSERT INTO `sys_oper_log` VALUES (153, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-20 03:42:44\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":105,\"deptName\":\"初一三班\",\"leader\":\"初一三班班主任\",\"orderNum\":3,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"deptId\":101,\"email\":\"ry@qq.com\",\"loginDate\":\"2022-12-20 03:42:44\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"李级长\",\"params\":{},\"phonenumber\":\"15666666666\",\"postIds\":[2],\"remark\":\"测试员\",\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":2,\"userName\":\"ry\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 17:57:37');
INSERT INTO `sys_oper_log` VALUES (154, '代码生成', 6, 'com.ruoyi.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '127.0.0.1', '', '\"sys_user_post,sys_role_dept\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 17:58:40');
INSERT INTO `sys_oper_log` VALUES (155, '代码生成', 6, 'com.ruoyi.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '127.0.0.1', '', '\"sys_user\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 17:59:05');
INSERT INTO `sys_oper_log` VALUES (156, '代码生成', 6, 'com.ruoyi.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '127.0.0.1', '', '\"sys_dept\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 18:02:58');
INSERT INTO `sys_oper_log` VALUES (157, '用户管理', 1, 'com.ruoyi.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"zhao\",\"params\":{},\"postIds\":[2],\"roleIds\":[],\"status\":\"0\",\"userId\":101,\"userName\":\"赵级长\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 18:11:59');
INSERT INTO `sys_oper_log` VALUES (158, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-21 18:11:59\",\"delFlag\":\"0\",\"deptId\":102,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"zhao\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[2],\"roleIds\":[2],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":101,\"userName\":\"赵级长\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 18:12:27');
INSERT INTO `sys_oper_log` VALUES (159, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-20 03:42:44\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":101,\"deptName\":\"初一\",\"leader\":\"初一级长\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":101,\"email\":\"ry@qq.com\",\"loginDate\":\"2022-12-20 03:42:44\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"李级长\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[2],\"remark\":\"测试员\",\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":2,\"userName\":\"ry\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 18:12:34');
INSERT INTO `sys_oper_log` VALUES (160, '用户管理', 3, 'com.ruoyi.system.controller.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/user/101', '127.0.0.1', '', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 18:12:58');
INSERT INTO `sys_oper_log` VALUES (161, '用户管理', 1, 'com.ruoyi.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"赵级长\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":102,\"userName\":\"zhao\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 18:13:21');
INSERT INTO `sys_oper_log` VALUES (162, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-21 18:13:21\",\"delFlag\":\"0\",\"deptId\":102,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"赵级长\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[2],\"roleIds\":[2],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":102,\"userName\":\"zhao\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 18:13:59');
INSERT INTO `sys_oper_log` VALUES (163, '用户管理', 1, 'com.ruoyi.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":103,\"nickName\":\"stu1\",\"params\":{},\"postIds\":[8],\"roleIds\":[2],\"status\":\"0\",\"userId\":103,\"userName\":\"stu1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 01:10:39');
INSERT INTO `sys_oper_log` VALUES (164, '用户管理', 1, 'com.ruoyi.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":103,\"nickName\":\"stu2\",\"params\":{},\"postIds\":[8],\"roleIds\":[],\"status\":\"0\",\"userId\":104,\"userName\":\"stu2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 01:11:05');
INSERT INTO `sys_oper_log` VALUES (165, '用户管理', 1, 'com.ruoyi.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"stu3\",\"params\":{},\"postIds\":[8],\"roleIds\":[],\"status\":\"0\",\"userId\":105,\"userName\":\"stu3\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 01:11:42');
INSERT INTO `sys_oper_log` VALUES (166, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-22 01:11:42\",\"delFlag\":\"0\",\"deptId\":103,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"stu3\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[8],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":105,\"userName\":\"stu3\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 01:12:35');
INSERT INTO `sys_oper_log` VALUES (167, '用户管理', 5, 'com.ruoyi.system.controller.SysUserController.export()', 'POST', 1, 'admin', NULL, '/user/export', '127.0.0.1', '', '{\"admin\":false,\"params\":{\"dataScope\":\"\"}}', NULL, 0, NULL, '2022-12-22 01:14:30');
INSERT INTO `sys_oper_log` VALUES (168, '用户管理', 6, 'com.ruoyi.system.controller.SysUserController.importData()', 'POST', 1, 'admin', NULL, '/user/importData', '127.0.0.1', '', 'false', '{\"msg\":\"恭喜您，数据已全部导入成功！共 25 条，数据如下：<br/>1、账号 stu4 导入成功<br/>2、账号 stu5 导入成功<br/>3、账号 stu6 导入成功<br/>4、账号 stu7 导入成功<br/>5、账号 stu8 导入成功<br/>6、账号 stu9 导入成功<br/>7、账号 stu10 导入成功<br/>8、账号 stu11 导入成功<br/>9、账号 stu12 导入成功<br/>10、账号 stu13 导入成功<br/>11、账号 stu14 导入成功<br/>12、账号 stu15 导入成功<br/>13、账号 stu16 导入成功<br/>14、账号 stu17 导入成功<br/>15、账号 stu18 导入成功<br/>16、账号 stu19 导入成功<br/>17、账号 stu20 导入成功<br/>18、账号 stu21 导入成功<br/>19、账号 stu22 导入成功<br/>20、账号 stu23 导入成功<br/>21、账号 stu24 导入成功<br/>22、账号 stu25 导入成功<br/>23、账号 stu26 导入成功<br/>24、账号 stu27 导入成功<br/>25、账号 stu28 导入成功\",\"code\":200}', 0, NULL, '2022-12-22 01:19:07');
INSERT INTO `sys_oper_log` VALUES (169, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-22 01:19:04\",\"delFlag\":\"0\",\"deptId\":104,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"stu4\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[8],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":106,\"userName\":\"stu4\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 01:19:37');
INSERT INTO `sys_oper_log` VALUES (170, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-22 01:19:04\",\"delFlag\":\"0\",\"deptId\":104,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"stu5\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":107,\"userName\":\"stu5\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 01:19:47');
INSERT INTO `sys_oper_log` VALUES (171, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-22 01:19:04\",\"delFlag\":\"0\",\"deptId\":104,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"stu6\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[8],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":108,\"userName\":\"stu6\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 01:19:54');
INSERT INTO `sys_oper_log` VALUES (172, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-22 01:19:04\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":104,\"deptName\":\"初一二班\",\"leader\":\"初一二班班主任\",\"orderNum\":2,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"deptId\":104,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"stu5\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[8],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":107,\"userName\":\"stu5\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 01:19:59');
INSERT INTO `sys_oper_log` VALUES (173, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-22 01:19:04\",\"delFlag\":\"0\",\"deptId\":105,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"stu7\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":109,\"userName\":\"stu7\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 01:20:29');
INSERT INTO `sys_oper_log` VALUES (174, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-22 01:19:04\",\"delFlag\":\"0\",\"deptId\":105,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"stu8\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":110,\"userName\":\"stu8\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 01:20:33');
INSERT INTO `sys_oper_log` VALUES (175, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-22 01:19:05\",\"delFlag\":\"0\",\"deptId\":105,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"stu9\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":111,\"userName\":\"stu9\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 01:20:37');
INSERT INTO `sys_oper_log` VALUES (176, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-22 01:19:05\",\"delFlag\":\"0\",\"deptId\":105,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"stu10\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":112,\"userName\":\"stu10\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 01:20:43');
INSERT INTO `sys_oper_log` VALUES (177, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-22 01:19:05\",\"delFlag\":\"0\",\"deptId\":105,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"stu11\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":113,\"userName\":\"stu11\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 01:20:48');
INSERT INTO `sys_oper_log` VALUES (178, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-22 01:19:05\",\"delFlag\":\"0\",\"deptId\":105,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"stu12\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":114,\"userName\":\"stu12\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 01:21:09');
INSERT INTO `sys_oper_log` VALUES (179, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-22 01:19:05\",\"delFlag\":\"0\",\"deptId\":106,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"stu13\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":115,\"userName\":\"stu13\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 01:21:14');
INSERT INTO `sys_oper_log` VALUES (180, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-22 01:19:05\",\"delFlag\":\"0\",\"deptId\":106,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"stu14\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":116,\"userName\":\"stu14\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 01:21:18');
INSERT INTO `sys_oper_log` VALUES (181, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-22 01:19:05\",\"delFlag\":\"0\",\"deptId\":106,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"stu15\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":117,\"userName\":\"stu15\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 01:21:21');
INSERT INTO `sys_oper_log` VALUES (182, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-22 01:19:05\",\"delFlag\":\"0\",\"deptId\":106,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"stu16\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":118,\"userName\":\"stu16\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 01:21:26');
INSERT INTO `sys_oper_log` VALUES (183, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-22 01:19:06\",\"delFlag\":\"0\",\"deptId\":106,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"stu18\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":120,\"userName\":\"stu18\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 01:21:30');
INSERT INTO `sys_oper_log` VALUES (184, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-22 01:19:05\",\"delFlag\":\"0\",\"deptId\":106,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"stu17\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":119,\"userName\":\"stu17\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 01:21:33');
INSERT INTO `sys_oper_log` VALUES (185, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-22 01:19:06\",\"delFlag\":\"0\",\"deptId\":108,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"stu19\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":121,\"userName\":\"stu19\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 01:21:40');
INSERT INTO `sys_oper_log` VALUES (186, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-22 01:19:06\",\"delFlag\":\"0\",\"deptId\":108,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"stu20\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":122,\"userName\":\"stu20\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 01:21:46');
INSERT INTO `sys_oper_log` VALUES (187, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-22 01:19:06\",\"delFlag\":\"0\",\"deptId\":108,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"stu21\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":123,\"userName\":\"stu21\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 01:21:49');
INSERT INTO `sys_oper_log` VALUES (188, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-22 01:19:06\",\"delFlag\":\"0\",\"deptId\":108,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"stu22\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":124,\"userName\":\"stu22\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 01:21:53');
INSERT INTO `sys_oper_log` VALUES (189, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-22 01:19:06\",\"delFlag\":\"0\",\"deptId\":109,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"stu23\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":125,\"userName\":\"stu23\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 01:21:57');
INSERT INTO `sys_oper_log` VALUES (190, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-22 01:19:06\",\"delFlag\":\"0\",\"deptId\":109,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"stu24\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":126,\"userName\":\"stu24\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 01:22:01');
INSERT INTO `sys_oper_log` VALUES (191, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-22 01:19:06\",\"delFlag\":\"0\",\"deptId\":109,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"stu25\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":127,\"userName\":\"stu25\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 01:22:04');
INSERT INTO `sys_oper_log` VALUES (192, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-22 01:19:07\",\"delFlag\":\"0\",\"deptId\":109,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"stu26\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":128,\"userName\":\"stu26\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 01:22:08');
INSERT INTO `sys_oper_log` VALUES (193, '个人信息', 2, 'com.ruoyi.system.controller.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/user/profile', '127.0.0.1', '', '{\"admin\":true,\"createBy\":\"admin\",\"createTime\":\"2022-12-20 03:42:44\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":103,\"deptName\":\"初一一班\",\"leader\":\"一班班主任\",\"orderNum\":1,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"email\":\"IKUYO@gmail.com\",\"loginDate\":\"2022-12-20 03:42:44\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"KITA IKUYO\",\"params\":{},\"phonenumber\":\"15888888888\",\"remark\":\"管理员\",\"roles\":[{\"admin\":true,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":1,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"roleSort\":1,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"userId\":1,\"userName\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 01:31:24');
INSERT INTO `sys_oper_log` VALUES (194, '角色管理', 1, 'com.ruoyi.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,2012,2013,2014,2015,2016,2017],\"params\":{},\"roleId\":100,\"roleKey\":\"aconly\",\"roleName\":\"仅访问\",\"roleSort\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 01:33:31');
INSERT INTO `sys_oper_log` VALUES (195, '角色管理', 2, 'com.ruoyi.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"admin\":false,\"createTime\":\"2022-12-22 01:33:30\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,2012,2013,2014,2015,2016,2017],\"params\":{},\"roleId\":100,\"roleKey\":\"aconly\",\"roleName\":\"仅访问\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 01:33:51');
INSERT INTO `sys_oper_log` VALUES (196, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-22 01:10:39\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":103,\"deptName\":\"初一一班\",\"leader\":\"一班班主任\",\"orderNum\":1,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"deptId\":103,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"stu1\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[8],\"roleIds\":[100],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":103,\"userName\":\"stu1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 01:35:48');
INSERT INTO `sys_oper_log` VALUES (197, '作业提交记录', 1, 'com.ruoyi.system.controller.HomeworkController.add()', 'POST', 1, 'headmaster', NULL, '/homework', '127.0.0.1', '', '{\"hmClass\":\"初一一班\",\"hmName\":\"stu1\",\"hmSub\":\"语文\",\"hmSubtime\":\"2022-12-21 00:00:00\",\"hmUrl\":\"*********\",\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'hm_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\RYC\\ruoyi-modules\\ruoyi-system\\target\\classes\\mapper\\system\\HomeworkMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.HomeworkMapper.insertHomework-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into homework          ( hm_sub,             hm_name,             hm_class,             hm_url,             hm_subtime )           values ( ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'hm_id\' doesn\'t have a default value\n; Field \'hm_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'hm_id\' doesn\'t have a default value', '2022-12-22 01:38:44');
INSERT INTO `sys_oper_log` VALUES (198, '作业提交记录', 1, 'com.ruoyi.system.controller.HomeworkController.add()', 'POST', 1, 'headmaster', NULL, '/homework', '127.0.0.1', '', '{\"hmClass\":\"初一一班\",\"hmName\":\"stu1\",\"hmSub\":\"语文\",\"hmSubtime\":\"2022-12-21 00:00:00\",\"hmUrl\":\"*********\",\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'hm_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\RYC\\ruoyi-modules\\ruoyi-system\\target\\classes\\mapper\\system\\HomeworkMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.HomeworkMapper.insertHomework-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into homework          ( hm_sub,             hm_name,             hm_class,             hm_url,             hm_subtime )           values ( ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'hm_id\' doesn\'t have a default value\n; Field \'hm_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'hm_id\' doesn\'t have a default value', '2022-12-22 01:38:48');
INSERT INTO `sys_oper_log` VALUES (199, '作业提交记录', 1, 'com.ruoyi.system.controller.HomeworkController.add()', 'POST', 1, 'headmaster', NULL, '/homework', '127.0.0.1', '', '{\"hmClass\":\"初一一班\",\"hmName\":\"stu1\",\"hmSub\":\"语文\",\"hmSubtime\":\"2022-12-21 00:00:00\",\"hmUrl\":\"*********\",\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'hm_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\RYC\\ruoyi-modules\\ruoyi-system\\target\\classes\\mapper\\system\\HomeworkMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.HomeworkMapper.insertHomework-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into homework          ( hm_sub,             hm_name,             hm_class,             hm_url,             hm_subtime )           values ( ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'hm_id\' doesn\'t have a default value\n; Field \'hm_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'hm_id\' doesn\'t have a default value', '2022-12-22 01:38:49');
INSERT INTO `sys_oper_log` VALUES (200, '作业提交记录', 1, 'com.ruoyi.system.controller.HomeworkController.add()', 'POST', 1, 'headmaster', NULL, '/homework', '127.0.0.1', '', '{\"hmClass\":\"初一一班\",\"hmName\":\"stu1\",\"hmSub\":\"语文\",\"hmSubtime\":\"2022-12-21 00:00:00\",\"hmUrl\":\"*********\",\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'hm_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\RYC\\ruoyi-modules\\ruoyi-system\\target\\classes\\mapper\\system\\HomeworkMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.HomeworkMapper.insertHomework-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into homework          ( hm_sub,             hm_name,             hm_class,             hm_url,             hm_subtime )           values ( ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'hm_id\' doesn\'t have a default value\n; Field \'hm_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'hm_id\' doesn\'t have a default value', '2022-12-22 01:38:53');
INSERT INTO `sys_oper_log` VALUES (201, '作业提交记录', 1, 'com.ruoyi.system.controller.HomeworkController.add()', 'POST', 1, 'headmaster', NULL, '/homework', '127.0.0.1', '', '{\"hmClass\":\"初一一班\",\"hmName\":\"stu1\",\"hmSub\":\"语文\",\"hmSubtime\":\"2022-12-21 00:00:00\",\"hmUrl\":\"*********\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 01:40:04');
INSERT INTO `sys_oper_log` VALUES (202, '作业提交记录', 1, 'com.ruoyi.system.controller.HomeworkController.add()', 'POST', 1, 'headmaster', NULL, '/homework', '127.0.0.1', '', '{\"hmClass\":\"初一一班\",\"hmName\":\"stu3\",\"hmSub\":\"数学\",\"hmSubtime\":\"2022-12-20 00:00:00\",\"hmUrl\":\"**********\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 01:40:46');
INSERT INTO `sys_oper_log` VALUES (203, '作业提交记录', 2, 'com.ruoyi.system.controller.HomeworkController.edit()', 'PUT', 1, 'headmaster', NULL, '/homework', '127.0.0.1', '', '{\"hmClass\":\"初一一班\",\"hmId\":2,\"hmName\":\"stu3\",\"hmSub\":\"数学\",\"hmSubtime\":\"2022-12-20 00:00:00\",\"hmUrl\":\"*********\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 01:40:55');
INSERT INTO `sys_oper_log` VALUES (204, '作业提交记录', 1, 'com.ruoyi.system.controller.HomeworkController.add()', 'POST', 1, 'headmaster', NULL, '/homework', '127.0.0.1', '', '{\"hmClass\":\"初一一班\",\"hmName\":\"stu2\",\"hmSub\":\"英语\",\"hmSubtime\":\"2022-12-20 00:00:00\",\"hmUrl\":\"*********\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 01:41:34');
INSERT INTO `sys_oper_log` VALUES (205, '作业提交记录', 1, 'com.ruoyi.system.controller.HomeworkController.add()', 'POST', 1, 'headmaster', NULL, '/homework', '127.0.0.1', '', '{\"hmClass\":\"初一三班\",\"hmName\":\"stu7\",\"hmSub\":\"语文\",\"hmSubtime\":\"2022-12-20 00:00:00\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 02:02:14');
INSERT INTO `sys_oper_log` VALUES (206, '作业提交记录', 2, 'com.ruoyi.system.controller.HomeworkController.edit()', 'PUT', 1, 'headmaster', NULL, '/homework', '127.0.0.1', '', '{\"hmClass\":\"初一三班\",\"hmId\":4,\"hmName\":\"stu7\",\"hmSub\":\"语文\",\"hmSubtime\":\"2022-12-20 00:00:00\",\"hmUrl\":\"*********\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 02:02:18');
INSERT INTO `sys_oper_log` VALUES (207, '作业提交记录', 1, 'com.ruoyi.system.controller.HomeworkController.add()', 'POST', 1, 'headmaster', NULL, '/homework', '127.0.0.1', '', '{\"hmClass\":\"初一三班\",\"hmName\":\"stu8\",\"hmSub\":\"数学\",\"hmSubtime\":\"2022-12-20 00:00:00\",\"hmUrl\":\"*********\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 02:02:53');
INSERT INTO `sys_oper_log` VALUES (208, '作业提交记录', 1, 'com.ruoyi.system.controller.HomeworkController.add()', 'POST', 1, 'headmaster', NULL, '/homework', '127.0.0.1', '', '{\"hmClass\":\"初一三班\",\"hmName\":\"stu7\",\"hmSub\":\"英语\",\"hmSubtime\":\"2022-12-21 00:00:00\",\"hmUrl\":\"*********\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 02:03:37');
INSERT INTO `sys_oper_log` VALUES (209, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'headmaster', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-21 17:40:52\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"第一中学\",\"leader\":\"校长\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"deptId\":100,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"王校长\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[1],\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"headmaster\",\"userId\":100,\"userName\":\"headmaster\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 02:05:07');
INSERT INTO `sys_oper_log` VALUES (210, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'headmaster', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-21 17:40:52\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"第一中学\",\"leader\":\"校长\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"deptId\":101,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"王校长\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[1],\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"headmaster\",\"userId\":100,\"userName\":\"headmaster\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 02:05:22');
INSERT INTO `sys_oper_log` VALUES (211, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'headmaster', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-21 17:40:52\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":101,\"deptName\":\"初一\",\"leader\":\"初一级长\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":100,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"王校长\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[1],\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"headmaster\",\"userId\":100,\"userName\":\"headmaster\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 02:05:31');
INSERT INTO `sys_oper_log` VALUES (212, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.resetPwd()', 'PUT', 1, 'admin', NULL, '/user/resetPwd', '127.0.0.1', '', '{\"admin\":false,\"params\":{},\"updateBy\":\"admin\",\"userId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 02:07:16');
INSERT INTO `sys_oper_log` VALUES (213, '个人信息', 2, 'com.ruoyi.system.controller.SysProfileController.updatePwd()', 'PUT', 1, 'admin', NULL, '/user/profile/updatePwd', '127.0.0.1', '', '\"admin123\" \"9437474\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 02:24:12');
INSERT INTO `sys_oper_log` VALUES (214, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.resetPwd()', 'PUT', 1, 'admin', NULL, '/user/resetPwd', '127.0.0.1', '', '{\"admin\":false,\"params\":{},\"updateBy\":\"admin\",\"userId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 02:24:29');
INSERT INTO `sys_oper_log` VALUES (215, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-20 03:42:44\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":101,\"deptName\":\"初一\",\"leader\":\"初一级长\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":103,\"email\":\"ry@qq.com\",\"loginDate\":\"2022-12-20 03:42:44\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"李级长\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[2],\"remark\":\"测试员\",\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":2,\"userName\":\"ry\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 02:28:40');
INSERT INTO `sys_oper_log` VALUES (216, '角色管理', 2, 'com.ruoyi.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"admin\":false,\"createTime\":\"2022-12-20 03:42:44\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,2012,2013,2014,2015,2016,2017,101,1007,1008,1009,1010,1011,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 02:35:46');
INSERT INTO `sys_oper_log` VALUES (217, '角色管理', 1, 'com.ruoyi.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[],\"params\":{},\"roleId\":101,\"roleKey\":\"c1\",\"roleName\":\"初一级长\",\"roleSort\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 02:36:08');
INSERT INTO `sys_oper_log` VALUES (218, '角色管理', 1, 'com.ruoyi.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,2012,2013,2014,2015,2016,2017,101,1007,1008,1009,1010,1011,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024],\"params\":{},\"roleId\":102,\"roleKey\":\"c2\",\"roleName\":\"初二级长\",\"roleSort\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 02:36:35');
INSERT INTO `sys_oper_log` VALUES (219, '角色管理', 2, 'com.ruoyi.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"admin\":false,\"createTime\":\"2022-12-22 02:36:08\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,2012,2013,2014,2015,2016,2017,101,1007,1008,1009,1010,1011,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024],\"params\":{},\"roleId\":101,\"roleKey\":\"c1\",\"roleName\":\"初一级长\",\"roleSort\":0,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 02:36:42');
INSERT INTO `sys_oper_log` VALUES (220, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-20 03:42:44\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":103,\"deptName\":\"初一一班\",\"leader\":\"一班班主任\",\"orderNum\":1,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"deptId\":101,\"email\":\"ry@qq.com\",\"loginDate\":\"2022-12-20 03:42:44\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"李级长\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[2],\"remark\":\"测试员\",\"roleIds\":[101],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"管理员\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":2,\"userName\":\"ry\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 02:37:03');
INSERT INTO `sys_oper_log` VALUES (221, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-21 18:13:21\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":102,\"deptName\":\"初二\",\"leader\":\"初二级长\",\"orderNum\":2,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":102,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"赵级长\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[2],\"roleIds\":[102],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"管理员\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":102,\"userName\":\"zhao\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 02:37:11');
INSERT INTO `sys_oper_log` VALUES (222, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'ry', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-20 03:42:44\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":101,\"deptName\":\"初一\",\"leader\":\"初一级长\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":101,\"email\":\"ry@qq.com\",\"loginDate\":\"2022-12-20 03:42:44\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"李级长\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"remark\":\"测试员\",\"roleIds\":[101],\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":101,\"roleKey\":\"c1\",\"roleName\":\"初一级长\",\"roleSort\":4,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"updateBy\":\"ry\",\"userId\":2,\"userName\":\"ry\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 02:55:43');
INSERT INTO `sys_oper_log` VALUES (223, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'ry', NULL, '/user', '127.0.0.1', '', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-12-20 03:42:44\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":101,\"deptName\":\"初一\",\"leader\":\"初一级长\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":101,\"email\":\"ry@qq.com\",\"loginDate\":\"2022-12-20 03:42:44\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"李级长\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[2],\"remark\":\"测试员\",\"roleIds\":[101],\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":101,\"roleKey\":\"c1\",\"roleName\":\"初一级长\",\"roleSort\":4,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"updateBy\":\"ry\",\"userId\":2,\"userName\":\"ry\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 02:55:57');
INSERT INTO `sys_oper_log` VALUES (224, '角色管理', 2, 'com.ruoyi.system.controller.SysRoleController.dataScope()', 'PUT', 1, 'ry', NULL, '/role/dataScope', '127.0.0.1', '', '{\"admin\":false,\"createTime\":\"2022-12-22 02:36:08\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":101,\"roleKey\":\"c1\",\"roleName\":\"初一级长\",\"roleSort\":4,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 02:56:44');
INSERT INTO `sys_oper_log` VALUES (225, '角色管理', 2, 'com.ruoyi.system.controller.SysRoleController.dataScope()', 'PUT', 1, 'ry', NULL, '/role/dataScope', '127.0.0.1', '', '{\"admin\":false,\"createTime\":\"2022-12-22 01:33:30\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":100,\"roleKey\":\"aconly\",\"roleName\":\"仅访问\",\"roleSort\":6,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 02:56:52');
INSERT INTO `sys_oper_log` VALUES (226, '角色管理', 2, 'com.ruoyi.system.controller.SysRoleController.dataScope()', 'PUT', 1, 'ry', NULL, '/role/dataScope', '127.0.0.1', '', '{\"admin\":false,\"createTime\":\"2022-12-22 01:33:30\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":100,\"roleKey\":\"aconly\",\"roleName\":\"仅访问\",\"roleSort\":6,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 02:56:58');
INSERT INTO `sys_oper_log` VALUES (227, '角色管理', 2, 'com.ruoyi.system.controller.SysRoleController.dataScope()', 'PUT', 1, 'ry', NULL, '/role/dataScope', '127.0.0.1', '', '{\"admin\":false,\"createTime\":\"2022-12-22 02:36:08\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[100,101,103,104,105,106],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":101,\"roleKey\":\"c1\",\"roleName\":\"初一级长\",\"roleSort\":4,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 02:57:30');
INSERT INTO `sys_oper_log` VALUES (228, '角色管理', 2, 'com.ruoyi.system.controller.SysRoleController.dataScope()', 'PUT', 1, 'ry', NULL, '/role/dataScope', '127.0.0.1', '', '{\"admin\":false,\"createTime\":\"2022-12-22 02:36:35\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[100,102,108,109],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":102,\"roleKey\":\"c2\",\"roleName\":\"初二级长\",\"roleSort\":5,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 02:57:43');
INSERT INTO `sys_oper_log` VALUES (229, '角色管理', 2, 'com.ruoyi.system.controller.SysRoleController.dataScope()', 'PUT', 1, 'ry', NULL, '/role/dataScope', '127.0.0.1', '', '{\"admin\":false,\"createTime\":\"2022-12-22 01:33:30\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":100,\"roleKey\":\"aconly\",\"roleName\":\"仅访问\",\"roleSort\":6,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 02:57:55');
INSERT INTO `sys_oper_log` VALUES (230, '角色管理', 2, 'com.ruoyi.system.controller.SysRoleController.dataScope()', 'PUT', 1, 'ry', NULL, '/role/dataScope', '127.0.0.1', '', '{\"admin\":false,\"createTime\":\"2022-12-22 02:36:08\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[100,101,103,104,105,106],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":101,\"roleKey\":\"c1\",\"roleName\":\"初一级长\",\"roleSort\":4,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 02:59:18');
INSERT INTO `sys_oper_log` VALUES (231, '角色管理', 2, 'com.ruoyi.system.controller.SysRoleController.dataScope()', 'PUT', 1, 'ry', NULL, '/role/dataScope', '127.0.0.1', '', '{\"admin\":false,\"createTime\":\"2022-12-22 02:36:35\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[100,102,108,109],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":102,\"roleKey\":\"c2\",\"roleName\":\"初二级长\",\"roleSort\":5,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 02:59:24');
INSERT INTO `sys_oper_log` VALUES (232, '角色管理', 2, 'com.ruoyi.system.controller.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/role/dataScope', '127.0.0.1', '', '{\"admin\":false,\"createTime\":\"2022-12-22 02:36:08\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[100,101,103,104,105,106],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":101,\"roleKey\":\"c1\",\"roleName\":\"初一级长\",\"roleSort\":4,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 03:02:11');
INSERT INTO `sys_oper_log` VALUES (233, '角色管理', 2, 'com.ruoyi.system.controller.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/role/dataScope', '127.0.0.1', '', '{\"admin\":false,\"createTime\":\"2022-12-22 02:36:35\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[100,102,108,109],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":102,\"roleKey\":\"c2\",\"roleName\":\"初二级长\",\"roleSort\":5,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 03:02:17');
INSERT INTO `sys_oper_log` VALUES (234, '角色管理', 2, 'com.ruoyi.system.controller.SysRoleController.dataScope()', 'PUT', 1, 'ry', NULL, '/role/dataScope', '127.0.0.1', '', '{\"admin\":false,\"createTime\":\"2022-12-22 02:36:08\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":101,\"roleKey\":\"c1\",\"roleName\":\"初一级长\",\"roleSort\":4,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 03:12:26');
INSERT INTO `sys_oper_log` VALUES (235, '角色管理', 2, 'com.ruoyi.system.controller.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/role/dataScope', '127.0.0.1', '', '{\"admin\":false,\"createTime\":\"2022-12-22 02:36:08\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[100,101,103,104,105,106],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":101,\"roleKey\":\"c1\",\"roleName\":\"初一级长\",\"roleSort\":4,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 03:13:00');
INSERT INTO `sys_oper_log` VALUES (236, '角色管理', 2, 'com.ruoyi.system.controller.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/role/dataScope', '127.0.0.1', '', '{\"admin\":false,\"createTime\":\"2022-12-22 02:36:35\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[100,102,108,109],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":102,\"roleKey\":\"c2\",\"roleName\":\"初二级长\",\"roleSort\":5,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 03:13:05');
INSERT INTO `sys_oper_log` VALUES (237, '角色管理', 2, 'com.ruoyi.system.controller.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/role/dataScope', '127.0.0.1', '', '{\"admin\":false,\"createTime\":\"2022-12-22 01:33:30\",\"dataScope\":\"5\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":100,\"roleKey\":\"aconly\",\"roleName\":\"仅访问\",\"roleSort\":6,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 03:13:14');
INSERT INTO `sys_oper_log` VALUES (238, '作业提交记录', 1, 'com.ruoyi.system.controller.HomeworkController.add()', 'POST', 1, 'admin', NULL, '/homework', '127.0.0.1', '', '{\"hmClass\":\"初二一班\",\"hmName\":\"stu19\",\"hmSub\":\"数学\",\"hmSubtime\":\"2022-12-21 00:00:00\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 03:17:49');
INSERT INTO `sys_oper_log` VALUES (239, '作业提交记录', 2, 'com.ruoyi.system.controller.HomeworkController.edit()', 'PUT', 1, 'admin', NULL, '/homework', '127.0.0.1', '', '{\"hmClass\":\"初二一班\",\"hmId\":7,\"hmMark\":\"\",\"hmName\":\"stu19\",\"hmSub\":\"数学\",\"hmSubtime\":\"2022-12-21 00:00:00\",\"hmUrl\":\"*********\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 03:18:08');
INSERT INTO `sys_oper_log` VALUES (240, '作业提交记录', 2, 'com.ruoyi.system.controller.HomeworkController.edit()', 'PUT', 1, 'admin', NULL, '/homework', '127.0.0.1', '', '{\"hmClass\":\"初一三班\",\"hmId\":5,\"hmMark\":\"90\",\"hmName\":\"stu8\",\"hmSub\":\"数学\",\"hmSubtime\":\"2022-12-20 00:00:00\",\"hmUrl\":\"*********\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 03:18:18');
INSERT INTO `sys_oper_log` VALUES (241, '作业提交记录', 2, 'com.ruoyi.system.controller.HomeworkController.edit()', 'PUT', 1, 'admin', NULL, '/homework', '127.0.0.1', '', '{\"hmClass\":\"初一三班\",\"hmId\":6,\"hmMark\":\"优\",\"hmName\":\"stu7\",\"hmSub\":\"英语\",\"hmSubtime\":\"2022-12-21 00:00:00\",\"hmUrl\":\"*********\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-22 03:18:25');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'hm', '校长', 1, '0', 'admin', '2022-12-20 03:42:44', 'admin', '2022-12-21 02:12:52', '');
INSERT INTO `sys_post` VALUES (2, 'pp', '年级长', 2, '0', 'admin', '2022-12-20 03:42:44', 'admin', '2022-12-21 02:14:29', '');
INSERT INTO `sys_post` VALUES (3, 'ct', '班主任', 3, '0', 'admin', '2022-12-20 03:42:44', 'admin', '2022-12-21 02:13:53', '');
INSERT INTO `sys_post` VALUES (4, 'cn_tea', '语文老师', 4, '0', 'admin', '2022-12-20 03:42:44', 'admin', '2022-12-21 02:16:53', '');
INSERT INTO `sys_post` VALUES (6, 'math_tea', '数学老师', 5, '0', 'admin', '2022-12-21 02:15:13', 'admin', '2022-12-21 02:15:57', NULL);
INSERT INTO `sys_post` VALUES (7, 'eng_tea', '英语老师', 6, '0', 'admin', '2022-12-21 02:16:25', '', NULL, NULL);
INSERT INTO `sys_post` VALUES (8, 'stu', '学生', 99, '0', 'admin', '2022-12-21 02:16:38', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2022-12-20 03:42:44', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '管理员', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2022-12-20 03:42:44', 'admin', '2022-12-22 02:35:46', '普通角色');
INSERT INTO `sys_role` VALUES (100, '仅访问', 'aconly', 6, '5', 1, 1, '0', '0', 'admin', '2022-12-22 01:33:30', 'admin', '2022-12-22 03:13:14', NULL);
INSERT INTO `sys_role` VALUES (101, '初一级长', 'c1', 4, '2', 1, 1, '0', '0', 'admin', '2022-12-22 02:36:08', 'admin', '2022-12-22 03:13:00', NULL);
INSERT INTO `sys_role` VALUES (102, '初二级长', 'c2', 5, '2', 1, 1, '0', '0', 'admin', '2022-12-22 02:36:35', '', '2022-12-22 03:13:05', NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 102);
INSERT INTO `sys_role_dept` VALUES (2, 103);
INSERT INTO `sys_role_dept` VALUES (2, 104);
INSERT INTO `sys_role_dept` VALUES (2, 105);
INSERT INTO `sys_role_dept` VALUES (2, 106);
INSERT INTO `sys_role_dept` VALUES (2, 108);
INSERT INTO `sys_role_dept` VALUES (2, 109);
INSERT INTO `sys_role_dept` VALUES (101, 100);
INSERT INTO `sys_role_dept` VALUES (101, 101);
INSERT INTO `sys_role_dept` VALUES (101, 103);
INSERT INTO `sys_role_dept` VALUES (101, 104);
INSERT INTO `sys_role_dept` VALUES (101, 105);
INSERT INTO `sys_role_dept` VALUES (101, 106);
INSERT INTO `sys_role_dept` VALUES (102, 100);
INSERT INTO `sys_role_dept` VALUES (102, 102);
INSERT INTO `sys_role_dept` VALUES (102, 108);
INSERT INTO `sys_role_dept` VALUES (102, 109);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 2012);
INSERT INTO `sys_role_menu` VALUES (2, 2013);
INSERT INTO `sys_role_menu` VALUES (2, 2014);
INSERT INTO `sys_role_menu` VALUES (2, 2015);
INSERT INTO `sys_role_menu` VALUES (2, 2016);
INSERT INTO `sys_role_menu` VALUES (2, 2017);
INSERT INTO `sys_role_menu` VALUES (100, 1);
INSERT INTO `sys_role_menu` VALUES (100, 2012);
INSERT INTO `sys_role_menu` VALUES (100, 2013);
INSERT INTO `sys_role_menu` VALUES (100, 2014);
INSERT INTO `sys_role_menu` VALUES (100, 2015);
INSERT INTO `sys_role_menu` VALUES (100, 2016);
INSERT INTO `sys_role_menu` VALUES (100, 2017);
INSERT INTO `sys_role_menu` VALUES (101, 1);
INSERT INTO `sys_role_menu` VALUES (101, 100);
INSERT INTO `sys_role_menu` VALUES (101, 101);
INSERT INTO `sys_role_menu` VALUES (101, 103);
INSERT INTO `sys_role_menu` VALUES (101, 104);
INSERT INTO `sys_role_menu` VALUES (101, 1000);
INSERT INTO `sys_role_menu` VALUES (101, 1001);
INSERT INTO `sys_role_menu` VALUES (101, 1002);
INSERT INTO `sys_role_menu` VALUES (101, 1003);
INSERT INTO `sys_role_menu` VALUES (101, 1004);
INSERT INTO `sys_role_menu` VALUES (101, 1005);
INSERT INTO `sys_role_menu` VALUES (101, 1006);
INSERT INTO `sys_role_menu` VALUES (101, 1007);
INSERT INTO `sys_role_menu` VALUES (101, 1008);
INSERT INTO `sys_role_menu` VALUES (101, 1009);
INSERT INTO `sys_role_menu` VALUES (101, 1010);
INSERT INTO `sys_role_menu` VALUES (101, 1011);
INSERT INTO `sys_role_menu` VALUES (101, 1016);
INSERT INTO `sys_role_menu` VALUES (101, 1017);
INSERT INTO `sys_role_menu` VALUES (101, 1018);
INSERT INTO `sys_role_menu` VALUES (101, 1019);
INSERT INTO `sys_role_menu` VALUES (101, 1020);
INSERT INTO `sys_role_menu` VALUES (101, 1021);
INSERT INTO `sys_role_menu` VALUES (101, 1022);
INSERT INTO `sys_role_menu` VALUES (101, 1023);
INSERT INTO `sys_role_menu` VALUES (101, 1024);
INSERT INTO `sys_role_menu` VALUES (101, 2012);
INSERT INTO `sys_role_menu` VALUES (101, 2013);
INSERT INTO `sys_role_menu` VALUES (101, 2014);
INSERT INTO `sys_role_menu` VALUES (101, 2015);
INSERT INTO `sys_role_menu` VALUES (101, 2016);
INSERT INTO `sys_role_menu` VALUES (101, 2017);
INSERT INTO `sys_role_menu` VALUES (102, 1);
INSERT INTO `sys_role_menu` VALUES (102, 100);
INSERT INTO `sys_role_menu` VALUES (102, 101);
INSERT INTO `sys_role_menu` VALUES (102, 103);
INSERT INTO `sys_role_menu` VALUES (102, 104);
INSERT INTO `sys_role_menu` VALUES (102, 1000);
INSERT INTO `sys_role_menu` VALUES (102, 1001);
INSERT INTO `sys_role_menu` VALUES (102, 1002);
INSERT INTO `sys_role_menu` VALUES (102, 1003);
INSERT INTO `sys_role_menu` VALUES (102, 1004);
INSERT INTO `sys_role_menu` VALUES (102, 1005);
INSERT INTO `sys_role_menu` VALUES (102, 1006);
INSERT INTO `sys_role_menu` VALUES (102, 1007);
INSERT INTO `sys_role_menu` VALUES (102, 1008);
INSERT INTO `sys_role_menu` VALUES (102, 1009);
INSERT INTO `sys_role_menu` VALUES (102, 1010);
INSERT INTO `sys_role_menu` VALUES (102, 1011);
INSERT INTO `sys_role_menu` VALUES (102, 1016);
INSERT INTO `sys_role_menu` VALUES (102, 1017);
INSERT INTO `sys_role_menu` VALUES (102, 1018);
INSERT INTO `sys_role_menu` VALUES (102, 1019);
INSERT INTO `sys_role_menu` VALUES (102, 1020);
INSERT INTO `sys_role_menu` VALUES (102, 1021);
INSERT INTO `sys_role_menu` VALUES (102, 1022);
INSERT INTO `sys_role_menu` VALUES (102, 1023);
INSERT INTO `sys_role_menu` VALUES (102, 1024);
INSERT INTO `sys_role_menu` VALUES (102, 2012);
INSERT INTO `sys_role_menu` VALUES (102, 2013);
INSERT INTO `sys_role_menu` VALUES (102, 2014);
INSERT INTO `sys_role_menu` VALUES (102, 2015);
INSERT INTO `sys_role_menu` VALUES (102, 2016);
INSERT INTO `sys_role_menu` VALUES (102, 2017);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 131 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', 'KITA IKUYO', '00', 'IKUYO@gmail.com', '15888888888', '1', 'http://127.0.0.1:9300/statics/2022/12/21/blob_20221221175247A001.png', '$2a$10$J6/7l.kNv4.jemhtKSZCYu9YpIgqFBzt1qHCdOAClW4JhOuFTJibm', '0', '0', '127.0.0.1', '2022-12-20 03:42:44', 'admin', '2022-12-20 03:42:44', '', '2022-12-22 01:31:24', '管理员');
INSERT INTO `sys_user` VALUES (2, 101, 'ry', '李级长', '00', 'ry@qq.com', '', '1', '', '$2a$10$z7ereM6cLuai8pCVW1XWTeHIAmv3EFaOgbmw4N5qlzR9RYb5WFJyW', '0', '0', '127.0.0.1', '2022-12-20 03:42:44', 'admin', '2022-12-20 03:42:44', 'ry', '2022-12-22 02:55:57', '测试员');
INSERT INTO `sys_user` VALUES (100, 100, 'headmaster', '王校长', '00', '', '', '0', '', '$2a$10$AP91EGtkdXQc5qbQMyaBI.ahvHcWMNwdeQ/82KMJQgY85cGT..e/6', '0', '0', '', NULL, 'admin', '2022-12-21 17:40:52', 'headmaster', '2022-12-22 02:05:31', NULL);
INSERT INTO `sys_user` VALUES (101, 102, '赵级长', 'zhao', '00', '', '', '0', '', '$2a$10$5v5ieCGmkTcG6MIf6Xp02OF/1GwyFLh5SWRoW6xMSavNU1hkte/.q', '0', '2', '', NULL, 'admin', '2022-12-21 18:11:59', 'admin', '2022-12-21 18:12:27', NULL);
INSERT INTO `sys_user` VALUES (102, 102, 'zhao', '赵级长', '00', '', '', '0', '', '$2a$10$w683x5Kta7Hj1X.l7p3qguc3xGFcJny2kB3hciuuZ.DorF1vmSIxK', '0', '0', '', NULL, 'admin', '2022-12-21 18:13:21', 'admin', '2022-12-22 02:37:11', NULL);
INSERT INTO `sys_user` VALUES (103, 103, 'stu1', 'stu1', '00', '', '', '0', '', '$2a$10$2svub9WmJiiY6pgrpCwVB.O5jY2NyCIqK6s33lTVIfs.yz/23wyGi', '0', '0', '', NULL, 'admin', '2022-12-22 01:10:39', 'admin', '2022-12-22 01:35:48', NULL);
INSERT INTO `sys_user` VALUES (104, 103, 'stu2', 'stu2', '00', '', '', '0', '', '$2a$10$.pz9gxXzTD00MmwtPEhiK.7uDJxO4HkP6AmM02UYjflOC8xofvTeG', '0', '0', '', NULL, 'admin', '2022-12-22 01:11:05', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (105, 103, 'stu3', 'stu3', '00', '', '', '0', '', '$2a$10$vLUHkaDz2scTZrOzHeZrX.6pED142SKS3NtBFZm17CdQ3FKxACKMi', '0', '0', '', NULL, 'admin', '2022-12-22 01:11:42', 'admin', '2022-12-22 01:12:35', NULL);
INSERT INTO `sys_user` VALUES (106, 104, 'stu4', 'stu4', '00', '', '', '0', '', '$2a$10$qnAXwSbudosvByQoJIm3eu/pIscnPWeKgGZ79Uz6IQgc1M5Pus0b6', '0', '0', '', NULL, 'admin', '2022-12-22 01:19:04', 'admin', '2022-12-22 01:19:37', NULL);
INSERT INTO `sys_user` VALUES (107, 104, 'stu5', 'stu5', '00', '', '', '0', '', '$2a$10$P3Y.JwL5Hb0xmcqjdrG2K.rtw3r39/JbXX/R72hsbADUB6pW7RyYu', '0', '0', '', NULL, 'admin', '2022-12-22 01:19:04', 'admin', '2022-12-22 01:19:59', NULL);
INSERT INTO `sys_user` VALUES (108, 104, 'stu6', 'stu6', '00', '', '', '0', '', '$2a$10$8ce43wpx7EU/5BWDy5F/Uuy7vPhoviVuynkdH8kd6h8vKw4UONshK', '0', '0', '', NULL, 'admin', '2022-12-22 01:19:04', 'admin', '2022-12-22 01:19:54', NULL);
INSERT INTO `sys_user` VALUES (109, 105, 'stu7', 'stu7', '00', '', '', '0', '', '$2a$10$G2ynaB450TLq5cRW1NYMz.19pRzT35FWaKUByxO8b5Jlyv5vTTGJi', '0', '0', '', NULL, 'admin', '2022-12-22 01:19:04', 'admin', '2022-12-22 01:20:29', NULL);
INSERT INTO `sys_user` VALUES (110, 105, 'stu8', 'stu8', '00', '', '', '0', '', '$2a$10$8ntrQlAr4.9DshidUTlBReiqFg5ijfnqyHCEa4jvpavQwnJLImjUe', '0', '0', '', NULL, 'admin', '2022-12-22 01:19:04', 'admin', '2022-12-22 01:20:33', NULL);
INSERT INTO `sys_user` VALUES (111, 105, 'stu9', 'stu9', '00', '', '', '0', '', '$2a$10$0vZErZM/vWZyi0DvG1RPZuRgFAk3AV1v5yE88Ql0ZUhInstZFpUwW', '0', '0', '', NULL, 'admin', '2022-12-22 01:19:05', 'admin', '2022-12-22 01:20:37', NULL);
INSERT INTO `sys_user` VALUES (112, 105, 'stu10', 'stu10', '00', '', '', '0', '', '$2a$10$QNg15clAc/qFosBWsqUZR.By0iylb/IEXXxLitgFwQi37s8boQ6de', '0', '0', '', NULL, 'admin', '2022-12-22 01:19:05', 'admin', '2022-12-22 01:20:43', NULL);
INSERT INTO `sys_user` VALUES (113, 105, 'stu11', 'stu11', '00', '', '', '0', '', '$2a$10$Cpu2T0DDhDMN46bj0.hC7OUIb8GNhnfAcbOFgpMlHOOdP9A0TSt2q', '0', '0', '', NULL, 'admin', '2022-12-22 01:19:05', 'admin', '2022-12-22 01:20:48', NULL);
INSERT INTO `sys_user` VALUES (114, 105, 'stu12', 'stu12', '00', '', '', '0', '', '$2a$10$Imd7Z73qNsDql/A1vMfqPOLEbRVdhzEvMWAhTg.gEPr.Is6s7jXnK', '0', '0', '', NULL, 'admin', '2022-12-22 01:19:05', 'admin', '2022-12-22 01:21:09', NULL);
INSERT INTO `sys_user` VALUES (115, 106, 'stu13', 'stu13', '00', '', '', '0', '', '$2a$10$iGfN1Ne4KmVlmFgxQFttBOuWjiUy7C3M5ALHZvN.qw7KZwxqoQGRi', '0', '0', '', NULL, 'admin', '2022-12-22 01:19:05', 'admin', '2022-12-22 01:21:14', NULL);
INSERT INTO `sys_user` VALUES (116, 106, 'stu14', 'stu14', '00', '', '', '0', '', '$2a$10$qksVaP2/njs9qYNyPteVQ.dnBsc/lxO2WxkPXys1vLdQoYtXJEdKC', '0', '0', '', NULL, 'admin', '2022-12-22 01:19:05', 'admin', '2022-12-22 01:21:18', NULL);
INSERT INTO `sys_user` VALUES (117, 106, 'stu15', 'stu15', '00', '', '', '0', '', '$2a$10$8e1fbB.wepNtMcEsy96szuHa5fXD.1mJ1mI.eNNedwwd9mKJTYGXa', '0', '0', '', NULL, 'admin', '2022-12-22 01:19:05', 'admin', '2022-12-22 01:21:21', NULL);
INSERT INTO `sys_user` VALUES (118, 106, 'stu16', 'stu16', '00', '', '', '0', '', '$2a$10$qc5rhw.iI4wJ/a.I54TeFuHuUZ2XoqN5pd9Frp5bqnzPPKxNxxxD6', '0', '0', '', NULL, 'admin', '2022-12-22 01:19:05', 'admin', '2022-12-22 01:21:26', NULL);
INSERT INTO `sys_user` VALUES (119, 106, 'stu17', 'stu17', '00', '', '', '0', '', '$2a$10$QlTeAPR/RS4DdjAONOfN.OzaliZPFROf0nG79R55Lcn64hM.I10m.', '0', '0', '', NULL, 'admin', '2022-12-22 01:19:05', 'admin', '2022-12-22 01:21:33', NULL);
INSERT INTO `sys_user` VALUES (120, 106, 'stu18', 'stu18', '00', '', '', '0', '', '$2a$10$NsXf1Fv9VFMsBeJYVYsBIuINmOXpGmRqrPxZVJQcIqMK1wYL1cQa.', '0', '0', '', NULL, 'admin', '2022-12-22 01:19:06', 'admin', '2022-12-22 01:21:30', NULL);
INSERT INTO `sys_user` VALUES (121, 108, 'stu19', 'stu19', '00', '', '', '0', '', '$2a$10$NFuM.3dkUESjFDUf8gLdT.lJawR0rlY2gaXFMtETW727mm/64GLAW', '0', '0', '', NULL, 'admin', '2022-12-22 01:19:06', 'admin', '2022-12-22 01:21:40', NULL);
INSERT INTO `sys_user` VALUES (122, 108, 'stu20', 'stu20', '00', '', '', '0', '', '$2a$10$FIzXWUMcIZzkZhdHz4eCO.zF64Hz6Ly/jBBuZZjOcJux/tU/OAQ/O', '0', '0', '', NULL, 'admin', '2022-12-22 01:19:06', 'admin', '2022-12-22 01:21:46', NULL);
INSERT INTO `sys_user` VALUES (123, 108, 'stu21', 'stu21', '00', '', '', '0', '', '$2a$10$KHVn4DQ1UVcMLw7VnbxxReyhrR39RNou7oArdlXgLf1OoL4vLGLPO', '0', '0', '', NULL, 'admin', '2022-12-22 01:19:06', 'admin', '2022-12-22 01:21:49', NULL);
INSERT INTO `sys_user` VALUES (124, 108, 'stu22', 'stu22', '00', '', '', '0', '', '$2a$10$1mKpdxowYiVj2aGcjVWTQOiYOiVLmPRvKRIISjOw6vNJwGlcNhc.e', '0', '0', '', NULL, 'admin', '2022-12-22 01:19:06', 'admin', '2022-12-22 01:21:53', NULL);
INSERT INTO `sys_user` VALUES (125, 109, 'stu23', 'stu23', '00', '', '', '0', '', '$2a$10$4LLmRVNDPMYKQfuZ7pH/B.A3xqy6/ytf/B8MmLsS3GBwyCBvjflxC', '0', '0', '', NULL, 'admin', '2022-12-22 01:19:06', 'admin', '2022-12-22 01:21:57', NULL);
INSERT INTO `sys_user` VALUES (126, 109, 'stu24', 'stu24', '00', '', '', '0', '', '$2a$10$A/XIWsVOy1jffQcUlRbxPOJ4E5lNWZ72LEWw1vmaqLJ/Wf5X3qSPi', '0', '0', '', NULL, 'admin', '2022-12-22 01:19:06', 'admin', '2022-12-22 01:22:01', NULL);
INSERT INTO `sys_user` VALUES (127, 109, 'stu25', 'stu25', '00', '', '', '0', '', '$2a$10$q//ZMOwy81pMfm/NbbAea.V.x3MQgFq4VcG8cn6Kl7tK/8e560jp.', '0', '0', '', NULL, 'admin', '2022-12-22 01:19:06', 'admin', '2022-12-22 01:22:04', NULL);
INSERT INTO `sys_user` VALUES (128, 109, 'stu26', 'stu26', '00', '', '', '0', '', '$2a$10$rk5DBvNQ2MWS/BevRc4ri.qdodPIz9mD6FVKBDFDfmBjXlygMy1/q', '0', '0', '', NULL, 'admin', '2022-12-22 01:19:07', 'admin', '2022-12-22 01:22:08', NULL);
INSERT INTO `sys_user` VALUES (129, NULL, 'stu27', 'stu27', '00', '', '', '0', '', '$2a$10$zufc13EvCk9UGQwNAOf7XeNwyuhPxxtatRQFgE.AIJkUulS2taiVS', '0', '0', '', NULL, 'admin', '2022-12-22 01:19:07', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (130, NULL, 'stu28', 'stu28', '00', '', '', '0', '', '$2a$10$ihhxqIb.fi9RCf1clWmkwei4TqLZ1/iqL7eFToULSx/SSSydaI2P.', '0', '0', '', NULL, 'admin', '2022-12-22 01:19:07', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);
INSERT INTO `sys_user_post` VALUES (100, 1);
INSERT INTO `sys_user_post` VALUES (102, 2);
INSERT INTO `sys_user_post` VALUES (103, 8);
INSERT INTO `sys_user_post` VALUES (104, 8);
INSERT INTO `sys_user_post` VALUES (105, 8);
INSERT INTO `sys_user_post` VALUES (106, 8);
INSERT INTO `sys_user_post` VALUES (107, 8);
INSERT INTO `sys_user_post` VALUES (108, 8);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 101);
INSERT INTO `sys_user_role` VALUES (100, 2);
INSERT INTO `sys_user_role` VALUES (102, 102);
INSERT INTO `sys_user_role` VALUES (103, 100);

SET FOREIGN_KEY_CHECKS = 1;
