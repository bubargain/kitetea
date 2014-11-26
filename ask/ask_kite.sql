-- MySQL dump 10.13  Distrib 5.5.24, for Win64 (x86)
--
-- Host: localhost    Database: ask_kite
-- ------------------------------------------------------
-- Server version	5.5.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aws_active_data`
--

DROP TABLE IF EXISTS `aws_active_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_active_data` (
  `active_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `expire_time` int(10) DEFAULT NULL,
  `active_code` varchar(32) DEFAULT NULL,
  `active_type_code` varchar(16) DEFAULT NULL,
  `add_time` int(10) DEFAULT NULL,
  `add_ip` bigint(12) DEFAULT NULL,
  `active_time` int(10) DEFAULT NULL,
  `active_ip` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`active_id`),
  KEY `active_code` (`active_code`),
  KEY `active_type_code` (`active_type_code`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_active_data`
--

LOCK TABLES `aws_active_data` WRITE;
/*!40000 ALTER TABLE `aws_active_data` DISABLE KEYS */;
INSERT INTO `aws_active_data` VALUES (1,2,1417071323,'d5c03cf8bf63be9acce9','VALID_EMAIL',1416984923,2130706433,NULL,NULL);
/*!40000 ALTER TABLE `aws_active_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_answer`
--

DROP TABLE IF EXISTS `aws_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_answer` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '回答id',
  `question_id` int(11) NOT NULL COMMENT '问题id',
  `answer_content` text COMMENT '回答内容',
  `add_time` int(10) DEFAULT '0' COMMENT '添加时间',
  `against_count` int(11) NOT NULL DEFAULT '0' COMMENT '反对人数',
  `agree_count` int(11) NOT NULL DEFAULT '0' COMMENT '支持人数',
  `uid` int(11) DEFAULT '0' COMMENT '发布问题用户ID',
  `comment_count` int(11) DEFAULT '0' COMMENT '评论总数',
  `uninterested_count` int(11) DEFAULT '0' COMMENT '不感兴趣',
  `thanks_count` int(11) DEFAULT '0' COMMENT '感谢数量',
  `category_id` int(11) DEFAULT '0' COMMENT '分类id',
  `has_attach` tinyint(1) DEFAULT '0' COMMENT '是否存在附件',
  `ip` bigint(11) DEFAULT NULL,
  `force_fold` tinyint(1) DEFAULT '0' COMMENT '强制折叠',
  `anonymous` tinyint(1) DEFAULT '0',
  `publish_source` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`answer_id`),
  KEY `question_id` (`question_id`),
  KEY `agree_count` (`agree_count`),
  KEY `against_count` (`against_count`),
  KEY `add_time` (`add_time`),
  KEY `uid` (`uid`),
  KEY `uninterested_count` (`uninterested_count`),
  KEY `force_fold` (`force_fold`),
  KEY `anonymous` (`anonymous`),
  KEY `publich_source` (`publish_source`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='回答';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_answer`
--

LOCK TABLES `aws_answer` WRITE;
/*!40000 ALTER TABLE `aws_answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_answer_comments`
--

DROP TABLE IF EXISTS `aws_answer_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_answer_comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `answer_id` int(11) DEFAULT '0',
  `uid` int(11) DEFAULT '0',
  `message` text,
  `time` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `answer_id` (`answer_id`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_answer_comments`
--

LOCK TABLES `aws_answer_comments` WRITE;
/*!40000 ALTER TABLE `aws_answer_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_answer_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_answer_thanks`
--

DROP TABLE IF EXISTS `aws_answer_thanks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_answer_thanks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `answer_id` int(11) DEFAULT '0',
  `user_name` varchar(255) DEFAULT NULL,
  `time` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `answer_id` (`answer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_answer_thanks`
--

LOCK TABLES `aws_answer_thanks` WRITE;
/*!40000 ALTER TABLE `aws_answer_thanks` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_answer_thanks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_answer_uninterested`
--

DROP TABLE IF EXISTS `aws_answer_uninterested`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_answer_uninterested` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `answer_id` int(11) DEFAULT '0',
  `user_name` varchar(255) DEFAULT NULL,
  `time` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `answer_id` (`answer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_answer_uninterested`
--

LOCK TABLES `aws_answer_uninterested` WRITE;
/*!40000 ALTER TABLE `aws_answer_uninterested` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_answer_uninterested` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_answer_vote`
--

DROP TABLE IF EXISTS `aws_answer_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_answer_vote` (
  `voter_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动ID',
  `answer_id` int(11) DEFAULT NULL COMMENT '回复id',
  `answer_uid` int(11) DEFAULT NULL COMMENT '回复作者id',
  `vote_uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `add_time` int(10) DEFAULT NULL COMMENT '添加时间',
  `vote_value` tinyint(4) NOT NULL COMMENT '-1反对 1 支持',
  `reputation_factor` int(10) DEFAULT '0',
  PRIMARY KEY (`voter_id`),
  KEY `answer_id` (`answer_id`),
  KEY `vote_value` (`vote_value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_answer_vote`
--

LOCK TABLES `aws_answer_vote` WRITE;
/*!40000 ALTER TABLE `aws_answer_vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_answer_vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_approval`
--

DROP TABLE IF EXISTS `aws_approval`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_approval` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(16) DEFAULT NULL,
  `data` mediumtext NOT NULL,
  `uid` int(11) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `uid` (`uid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_approval`
--

LOCK TABLES `aws_approval` WRITE;
/*!40000 ALTER TABLE `aws_approval` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_approval` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_article`
--

DROP TABLE IF EXISTS `aws_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_article` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text,
  `comments` int(10) DEFAULT '0',
  `views` int(10) DEFAULT '0',
  `add_time` int(10) DEFAULT NULL,
  `has_attach` tinyint(1) NOT NULL DEFAULT '0',
  `lock` int(1) NOT NULL DEFAULT '0',
  `votes` int(10) DEFAULT '0',
  `title_fulltext` text,
  `category_id` int(10) DEFAULT '0',
  `is_recommend` tinyint(1) DEFAULT '0',
  `chapter_id` int(10) unsigned DEFAULT NULL,
  `sort` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `has_attach` (`has_attach`),
  KEY `uid` (`uid`),
  KEY `comments` (`comments`),
  KEY `views` (`views`),
  KEY `add_time` (`add_time`),
  KEY `lock` (`lock`),
  KEY `votes` (`votes`),
  KEY `category_id` (`category_id`),
  KEY `is_recommend` (`is_recommend`),
  KEY `chapter_id` (`chapter_id`),
  KEY `sort` (`sort`),
  FULLTEXT KEY `title_fulltext` (`title_fulltext`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_article`
--

LOCK TABLES `aws_article` WRITE;
/*!40000 ALTER TABLE `aws_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_article_comments`
--

DROP TABLE IF EXISTS `aws_article_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_article_comments` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `article_id` int(10) NOT NULL,
  `message` text NOT NULL,
  `add_time` int(10) NOT NULL,
  `at_uid` int(10) DEFAULT NULL,
  `votes` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `article_id` (`article_id`),
  KEY `add_time` (`add_time`),
  KEY `votes` (`votes`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_article_comments`
--

LOCK TABLES `aws_article_comments` WRITE;
/*!40000 ALTER TABLE `aws_article_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_article_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_article_vote`
--

DROP TABLE IF EXISTS `aws_article_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_article_vote` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `type` varchar(16) DEFAULT NULL,
  `item_id` int(10) NOT NULL,
  `rating` tinyint(1) DEFAULT '0',
  `time` int(10) NOT NULL,
  `reputation_factor` int(10) DEFAULT '0',
  `item_uid` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`),
  KEY `item_id` (`item_id`),
  KEY `time` (`time`),
  KEY `item_uid` (`item_uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_article_vote`
--

LOCK TABLES `aws_article_vote` WRITE;
/*!40000 ALTER TABLE `aws_article_vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_article_vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_attach`
--

DROP TABLE IF EXISTS `aws_attach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_attach` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) DEFAULT NULL COMMENT '附件名称',
  `access_key` varchar(32) DEFAULT NULL COMMENT '批次 Key',
  `add_time` int(10) DEFAULT '0' COMMENT '上传时间',
  `file_location` varchar(255) DEFAULT NULL COMMENT '文件位置',
  `is_image` int(1) DEFAULT '0',
  `item_type` varchar(32) DEFAULT '0' COMMENT '关联类型',
  `item_id` bigint(20) DEFAULT '0' COMMENT '关联 ID',
  `wait_approval` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `access_key` (`access_key`),
  KEY `is_image` (`is_image`),
  KEY `fetch` (`item_id`,`item_type`),
  KEY `wait_approval` (`wait_approval`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_attach`
--

LOCK TABLES `aws_attach` WRITE;
/*!40000 ALTER TABLE `aws_attach` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_attach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_category`
--

DROP TABLE IF EXISTS `aws_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  `sort` smallint(6) DEFAULT '0',
  `url_token` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `url_token` (`url_token`),
  KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_category`
--

LOCK TABLES `aws_category` WRITE;
/*!40000 ALTER TABLE `aws_category` DISABLE KEYS */;
INSERT INTO `aws_category` VALUES (1,'Default','question',NULL,0,0,'1'),(2,'Pure Tea','question',NULL,0,0,NULL),(3,'Fusion Tea','question',NULL,0,0,NULL),(7,'Other Drinks','question',NULL,0,0,NULL);
/*!40000 ALTER TABLE `aws_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_draft`
--

DROP TABLE IF EXISTS `aws_draft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_draft` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `type` varchar(16) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `data` text,
  `time` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `item_id` (`item_id`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_draft`
--

LOCK TABLES `aws_draft` WRITE;
/*!40000 ALTER TABLE `aws_draft` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_draft` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_edm_task`
--

DROP TABLE IF EXISTS `aws_edm_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_edm_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `message` mediumtext NOT NULL,
  `subject` varchar(255) NOT NULL,
  `from_name` varchar(255) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_edm_task`
--

LOCK TABLES `aws_edm_task` WRITE;
/*!40000 ALTER TABLE `aws_edm_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_edm_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_edm_taskdata`
--

DROP TABLE IF EXISTS `aws_edm_taskdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_edm_taskdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskid` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sent_time` int(10) NOT NULL,
  `view_time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `taskid` (`taskid`),
  KEY `sent_time` (`sent_time`),
  KEY `view_time` (`view_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_edm_taskdata`
--

LOCK TABLES `aws_edm_taskdata` WRITE;
/*!40000 ALTER TABLE `aws_edm_taskdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_edm_taskdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_edm_unsubscription`
--

DROP TABLE IF EXISTS `aws_edm_unsubscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_edm_unsubscription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_edm_unsubscription`
--

LOCK TABLES `aws_edm_unsubscription` WRITE;
/*!40000 ALTER TABLE `aws_edm_unsubscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_edm_unsubscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_edm_userdata`
--

DROP TABLE IF EXISTS `aws_edm_userdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_edm_userdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usergroup` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usergroup` (`usergroup`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_edm_userdata`
--

LOCK TABLES `aws_edm_userdata` WRITE;
/*!40000 ALTER TABLE `aws_edm_userdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_edm_userdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_edm_usergroup`
--

DROP TABLE IF EXISTS `aws_edm_usergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_edm_usergroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_edm_usergroup`
--

LOCK TABLES `aws_edm_usergroup` WRITE;
/*!40000 ALTER TABLE `aws_edm_usergroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_edm_usergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_education_experience`
--

DROP TABLE IF EXISTS `aws_education_experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_education_experience` (
  `education_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户UID',
  `education_years` int(11) DEFAULT NULL COMMENT '入学年份',
  `school_name` varchar(64) DEFAULT NULL COMMENT '学校名',
  `school_type` tinyint(4) DEFAULT NULL COMMENT '学校类别',
  `departments` varchar(64) DEFAULT NULL COMMENT '院系',
  `add_time` int(10) DEFAULT NULL COMMENT '记录添加时间',
  PRIMARY KEY (`education_id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='教育经历';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_education_experience`
--

LOCK TABLES `aws_education_experience` WRITE;
/*!40000 ALTER TABLE `aws_education_experience` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_education_experience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_favorite`
--

DROP TABLE IF EXISTS `aws_favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_favorite` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `item_id` int(11) DEFAULT '0',
  `time` int(10) DEFAULT '0',
  `type` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `time` (`time`),
  KEY `item_id` (`item_id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_favorite`
--

LOCK TABLES `aws_favorite` WRITE;
/*!40000 ALTER TABLE `aws_favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_favorite_tag`
--

DROP TABLE IF EXISTS `aws_favorite_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_favorite_tag` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `title` varchar(128) DEFAULT NULL,
  `item_id` int(11) DEFAULT '0',
  `type` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `title` (`title`),
  KEY `type` (`type`),
  KEY `item_id` (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_favorite_tag`
--

LOCK TABLES `aws_favorite_tag` WRITE;
/*!40000 ALTER TABLE `aws_favorite_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_favorite_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_feature`
--

DROP TABLE IF EXISTS `aws_feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_feature` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL COMMENT '专题标题',
  `description` varchar(255) DEFAULT NULL COMMENT '专题描述',
  `icon` varchar(255) DEFAULT NULL COMMENT '专题图标',
  `topic_count` int(11) NOT NULL DEFAULT '0' COMMENT '话题计数',
  `css` text COMMENT '自定义CSS',
  `url_token` varchar(32) DEFAULT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `url_token` (`url_token`),
  KEY `title` (`title`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_feature`
--

LOCK TABLES `aws_feature` WRITE;
/*!40000 ALTER TABLE `aws_feature` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_feature_topic`
--

DROP TABLE IF EXISTS `aws_feature_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_feature_topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feature_id` int(11) NOT NULL DEFAULT '0' COMMENT '专题ID',
  `topic_id` int(11) NOT NULL DEFAULT '0' COMMENT '话题ID',
  PRIMARY KEY (`id`),
  KEY `feature_id` (`feature_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_feature_topic`
--

LOCK TABLES `aws_feature_topic` WRITE;
/*!40000 ALTER TABLE `aws_feature_topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_feature_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_geo_location`
--

DROP TABLE IF EXISTS `aws_geo_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_geo_location` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `item_type` varchar(32) NOT NULL,
  `item_id` int(10) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `add_time` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `item_type` (`item_type`),
  KEY `add_time` (`add_time`),
  KEY `geo_location` (`latitude`,`longitude`),
  KEY `item_id` (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_geo_location`
--

LOCK TABLES `aws_geo_location` WRITE;
/*!40000 ALTER TABLE `aws_geo_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_geo_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_help_chapter`
--

DROP TABLE IF EXISTS `aws_help_chapter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_help_chapter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `url_token` varchar(32) DEFAULT NULL,
  `sort` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `url_token` (`url_token`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='帮助中心';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_help_chapter`
--

LOCK TABLES `aws_help_chapter` WRITE;
/*!40000 ALTER TABLE `aws_help_chapter` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_help_chapter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_inbox`
--

DROP TABLE IF EXISTS `aws_inbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_inbox` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '发送者 ID',
  `dialog_id` int(11) DEFAULT NULL COMMENT '对话id',
  `message` text COMMENT '内容',
  `add_time` int(10) DEFAULT NULL COMMENT '添加时间',
  `sender_remove` tinyint(1) DEFAULT '0',
  `recipient_remove` tinyint(1) DEFAULT '0',
  `receipt` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `dialog_id` (`dialog_id`),
  KEY `uid` (`uid`),
  KEY `add_time` (`add_time`),
  KEY `sender_remove` (`sender_remove`),
  KEY `recipient_remove` (`recipient_remove`),
  KEY `sender_receipt` (`receipt`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_inbox`
--

LOCK TABLES `aws_inbox` WRITE;
/*!40000 ALTER TABLE `aws_inbox` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_inbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_inbox_dialog`
--

DROP TABLE IF EXISTS `aws_inbox_dialog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_inbox_dialog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '对话ID',
  `sender_uid` int(11) DEFAULT NULL COMMENT '发送者UID',
  `sender_unread` int(11) DEFAULT NULL COMMENT '发送者未读',
  `recipient_uid` int(11) DEFAULT NULL COMMENT '接收者UID',
  `recipient_unread` int(11) DEFAULT NULL COMMENT '接收者未读',
  `add_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `update_time` int(11) DEFAULT NULL COMMENT '最后更新时间',
  `sender_count` int(11) DEFAULT NULL COMMENT '发送者显示对话条数',
  `recipient_count` int(11) DEFAULT NULL COMMENT '接收者显示对话条数',
  PRIMARY KEY (`id`),
  KEY `recipient_uid` (`recipient_uid`),
  KEY `sender_uid` (`sender_uid`),
  KEY `update_time` (`update_time`),
  KEY `add_time` (`add_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_inbox_dialog`
--

LOCK TABLES `aws_inbox_dialog` WRITE;
/*!40000 ALTER TABLE `aws_inbox_dialog` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_inbox_dialog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_integral_log`
--

DROP TABLE IF EXISTS `aws_integral_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_integral_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `action` varchar(16) DEFAULT NULL,
  `integral` int(11) DEFAULT NULL,
  `note` varchar(128) DEFAULT NULL,
  `balance` int(11) DEFAULT '0',
  `item_id` int(11) DEFAULT '0',
  `time` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `action` (`action`),
  KEY `time` (`time`),
  KEY `integral` (`integral`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_integral_log`
--

LOCK TABLES `aws_integral_log` WRITE;
/*!40000 ALTER TABLE `aws_integral_log` DISABLE KEYS */;
INSERT INTO `aws_integral_log` VALUES (1,1,'REGISTER',2000,'初始资本',2000,0,1416973901),(2,1,'UPDATE_SIGNATURE',10,'Complete one sentence introduction',2010,0,1416984753),(3,2,'REGISTER',2000,'初始资本',2000,0,1416984923),(4,1,'NEW_QUESTION',-20,'发起问题 #1',1990,1,1416986000);
/*!40000 ALTER TABLE `aws_integral_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_invitation`
--

DROP TABLE IF EXISTS `aws_invitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_invitation` (
  `invitation_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '激活ID',
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `invitation_code` varchar(32) DEFAULT NULL COMMENT '激活码',
  `invitation_email` varchar(255) DEFAULT NULL COMMENT '激活email',
  `add_time` int(10) DEFAULT NULL COMMENT '添加时间',
  `add_ip` bigint(12) DEFAULT NULL COMMENT '添加IP',
  `active_expire` tinyint(1) DEFAULT '0' COMMENT '激活过期',
  `active_time` int(10) DEFAULT NULL COMMENT '激活时间',
  `active_ip` bigint(12) DEFAULT NULL COMMENT '激活IP',
  `active_status` tinyint(4) DEFAULT '0' COMMENT '1已使用0未使用-1已删除',
  `active_uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`invitation_id`),
  KEY `uid` (`uid`),
  KEY `invitation_code` (`invitation_code`),
  KEY `invitation_email` (`invitation_email`),
  KEY `active_time` (`active_time`),
  KEY `active_ip` (`active_ip`),
  KEY `active_status` (`active_status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_invitation`
--

LOCK TABLES `aws_invitation` WRITE;
/*!40000 ALTER TABLE `aws_invitation` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_invitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_jobs`
--

DROP TABLE IF EXISTS `aws_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(64) DEFAULT NULL COMMENT '职位名',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_jobs`
--

LOCK TABLES `aws_jobs` WRITE;
/*!40000 ALTER TABLE `aws_jobs` DISABLE KEYS */;
INSERT INTO `aws_jobs` VALUES (1,'销售'),(2,'市场/市场拓展/公关'),(3,'商务/采购/贸易'),(4,'计算机软、硬件/互联网/IT'),(5,'电子/半导体/仪表仪器'),(6,'通信技术'),(7,'客户服务/技术支持'),(8,'行政/后勤'),(9,'人力资源'),(10,'高级管理'),(11,'生产/加工/制造'),(12,'质控/安检'),(13,'工程机械'),(14,'技工'),(15,'财会/审计/统计'),(16,'金融/银行/保险/证券/投资'),(17,'建筑/房地产/装修/物业'),(18,'交通/仓储/物流'),(19,'普通劳动力/家政服务'),(20,'零售业'),(21,'教育/培训'),(22,'咨询/顾问'),(23,'学术/科研'),(24,'法律'),(25,'美术/设计/创意'),(26,'编辑/文案/传媒/影视/新闻'),(27,'酒店/餐饮/旅游/娱乐'),(28,'化工'),(29,'能源/矿产/地质勘查'),(30,'医疗/护理/保健/美容'),(31,'生物/制药/医疗器械'),(32,'翻译（口译与笔译）'),(33,'公务员'),(34,'环境科学/环保'),(35,'农/林/牧/渔业'),(36,'兼职/临时/培训生/储备干部'),(37,'在校学生'),(38,'其他');
/*!40000 ALTER TABLE `aws_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_mail_queue`
--

DROP TABLE IF EXISTS `aws_mail_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_mail_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `send_to` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `is_error` tinyint(1) NOT NULL DEFAULT '0',
  `error_message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `is_error` (`is_error`),
  KEY `send_to` (`send_to`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_mail_queue`
--

LOCK TABLES `aws_mail_queue` WRITE;
/*!40000 ALTER TABLE `aws_mail_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_mail_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_nav_menu`
--

DROP TABLE IF EXISTS `aws_nav_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_nav_menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `type_id` int(11) DEFAULT '0',
  `link` varchar(255) DEFAULT NULL COMMENT '链接',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`link`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_nav_menu`
--

LOCK TABLES `aws_nav_menu` WRITE;
/*!40000 ALTER TABLE `aws_nav_menu` DISABLE KEYS */;
INSERT INTO `aws_nav_menu` VALUES (3,'Fusion Tea',NULL,'category',3,NULL,'',99),(5,'Other Drinks',NULL,'category',7,NULL,'',99),(4,'Pure Tea',NULL,'category',2,NULL,'',99);
/*!40000 ALTER TABLE `aws_nav_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_notification`
--

DROP TABLE IF EXISTS `aws_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_notification` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `sender_uid` int(11) DEFAULT NULL COMMENT '发送者ID',
  `recipient_uid` int(11) DEFAULT '0' COMMENT '接收者ID',
  `action_type` int(4) DEFAULT NULL COMMENT '操作类型',
  `model_type` smallint(11) NOT NULL DEFAULT '0',
  `source_id` varchar(16) NOT NULL DEFAULT '0' COMMENT '关联 ID',
  `add_time` int(10) DEFAULT NULL COMMENT '添加时间',
  `read_flag` tinyint(1) DEFAULT '0' COMMENT '阅读状态',
  PRIMARY KEY (`notification_id`),
  KEY `recipient_read_flag` (`recipient_uid`,`read_flag`),
  KEY `sender_uid` (`sender_uid`),
  KEY `model_type` (`model_type`),
  KEY `source_id` (`source_id`),
  KEY `action_type` (`action_type`),
  KEY `add_time` (`add_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='系统通知';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_notification`
--

LOCK TABLES `aws_notification` WRITE;
/*!40000 ALTER TABLE `aws_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_notification_data`
--

DROP TABLE IF EXISTS `aws_notification_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_notification_data` (
  `notification_id` int(11) unsigned NOT NULL,
  `data` text,
  PRIMARY KEY (`notification_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='系统通知数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_notification_data`
--

LOCK TABLES `aws_notification_data` WRITE;
/*!40000 ALTER TABLE `aws_notification_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_notification_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_pages`
--

DROP TABLE IF EXISTS `aws_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_pages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `url_token` varchar(32) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `contents` text,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `url_token` (`url_token`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_pages`
--

LOCK TABLES `aws_pages` WRITE;
/*!40000 ALTER TABLE `aws_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_posts_index`
--

DROP TABLE IF EXISTS `aws_posts_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_posts_index` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `post_id` int(10) NOT NULL,
  `post_type` varchar(16) NOT NULL DEFAULT '',
  `add_time` int(10) NOT NULL,
  `update_time` int(10) DEFAULT '0',
  `category_id` int(10) DEFAULT '0',
  `is_recommend` tinyint(1) DEFAULT '0',
  `view_count` int(10) DEFAULT '0',
  `anonymous` tinyint(1) DEFAULT '0',
  `popular_value` int(10) DEFAULT '0',
  `uid` int(10) NOT NULL,
  `lock` tinyint(1) DEFAULT '0',
  `agree_count` int(10) DEFAULT '0',
  `answer_count` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `post_type` (`post_type`),
  KEY `add_time` (`add_time`),
  KEY `update_time` (`update_time`),
  KEY `category_id` (`category_id`),
  KEY `is_recommend` (`is_recommend`),
  KEY `anonymous` (`anonymous`),
  KEY `popular_value` (`popular_value`),
  KEY `uid` (`uid`),
  KEY `lock` (`lock`),
  KEY `agree_count` (`agree_count`),
  KEY `answer_count` (`answer_count`),
  KEY `view_count` (`view_count`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_posts_index`
--

LOCK TABLES `aws_posts_index` WRITE;
/*!40000 ALTER TABLE `aws_posts_index` DISABLE KEYS */;
INSERT INTO `aws_posts_index` VALUES (1,1,'question',1416986000,1416986000,1,0,0,0,0,1,0,0,0);
/*!40000 ALTER TABLE `aws_posts_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_question`
--

DROP TABLE IF EXISTS `aws_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_question` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_content` varchar(255) NOT NULL DEFAULT '' COMMENT '问题内容',
  `question_detail` text COMMENT '问题说明',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  `update_time` int(11) DEFAULT NULL,
  `published_uid` int(11) DEFAULT NULL COMMENT '发布用户UID',
  `answer_count` int(11) NOT NULL DEFAULT '0' COMMENT '回答计数',
  `answer_users` int(11) NOT NULL DEFAULT '0' COMMENT '回答人数',
  `view_count` int(11) NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `focus_count` int(11) NOT NULL DEFAULT '0' COMMENT '关注数',
  `comment_count` int(11) NOT NULL DEFAULT '0' COMMENT '评论数',
  `action_history_id` int(11) NOT NULL DEFAULT '0' COMMENT '动作的记录表的关连id',
  `category_id` int(11) NOT NULL DEFAULT '0' COMMENT '分类 ID',
  `agree_count` int(11) NOT NULL DEFAULT '0' COMMENT '回复赞同数总和',
  `against_count` int(11) NOT NULL DEFAULT '0' COMMENT '回复反对数总和',
  `best_answer` int(11) NOT NULL DEFAULT '0' COMMENT '最佳回复 ID',
  `has_attach` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否存在附件',
  `unverified_modify` text,
  `unverified_modify_count` int(10) NOT NULL DEFAULT '0',
  `ip` bigint(11) DEFAULT NULL,
  `last_answer` int(11) NOT NULL DEFAULT '0' COMMENT '最后回答 ID',
  `popular_value` double NOT NULL DEFAULT '0',
  `popular_value_update` int(10) NOT NULL DEFAULT '0',
  `lock` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否锁定',
  `anonymous` tinyint(1) NOT NULL DEFAULT '0',
  `thanks_count` int(10) NOT NULL DEFAULT '0',
  `question_content_fulltext` text,
  `is_recommend` tinyint(1) NOT NULL DEFAULT '0',
  `weibo_msg_id` bigint(20) DEFAULT NULL,
  `received_email_id` int(10) DEFAULT NULL,
  `chapter_id` int(10) unsigned DEFAULT NULL,
  `sort` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`question_id`),
  KEY `category_id` (`category_id`),
  KEY `update_time` (`update_time`),
  KEY `add_time` (`add_time`),
  KEY `published_uid` (`published_uid`),
  KEY `answer_count` (`answer_count`),
  KEY `agree_count` (`agree_count`),
  KEY `question_content` (`question_content`),
  KEY `lock` (`lock`),
  KEY `thanks_count` (`thanks_count`),
  KEY `anonymous` (`anonymous`),
  KEY `popular_value` (`popular_value`),
  KEY `best_answer` (`best_answer`),
  KEY `popular_value_update` (`popular_value_update`),
  KEY `against_count` (`against_count`),
  KEY `is_recommend` (`is_recommend`),
  KEY `weibo_msg_id` (`weibo_msg_id`),
  KEY `received_email_id` (`received_email_id`),
  KEY `unverified_modify_count` (`unverified_modify_count`),
  KEY `chapter_id` (`chapter_id`),
  KEY `sort` (`sort`),
  FULLTEXT KEY `question_content_fulltext` (`question_content_fulltext`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='问题列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_question`
--

LOCK TABLES `aws_question` WRITE;
/*!40000 ALTER TABLE `aws_question` DISABLE KEYS */;
INSERT INTO `aws_question` VALUES (1,'what\'s the difference of oolong tea and black tea ?','Friends keep talking about oolong tea, but I have no idea what\'s that exactly',1416986000,1416986000,1,0,0,4,1,0,0,1,0,0,0,0,NULL,0,2130706433,0,1,1416986444,0,0,0,'difference oolong tea black',0,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `aws_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_question_comments`
--

DROP TABLE IF EXISTS `aws_question_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_question_comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `question_id` int(11) DEFAULT '0',
  `uid` int(11) DEFAULT '0',
  `message` text,
  `time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `question_id` (`question_id`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_question_comments`
--

LOCK TABLES `aws_question_comments` WRITE;
/*!40000 ALTER TABLE `aws_question_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_question_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_question_focus`
--

DROP TABLE IF EXISTS `aws_question_focus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_question_focus` (
  `focus_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `question_id` int(11) DEFAULT NULL COMMENT '话题ID',
  `uid` int(11) DEFAULT NULL COMMENT '用户UID',
  `add_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`focus_id`),
  KEY `question_id` (`question_id`),
  KEY `question_uid` (`question_id`,`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='问题关注表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_question_focus`
--

LOCK TABLES `aws_question_focus` WRITE;
/*!40000 ALTER TABLE `aws_question_focus` DISABLE KEYS */;
INSERT INTO `aws_question_focus` VALUES (1,1,1,1416986000);
/*!40000 ALTER TABLE `aws_question_focus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_question_invite`
--

DROP TABLE IF EXISTS `aws_question_invite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_question_invite` (
  `question_invite_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `question_id` int(11) NOT NULL COMMENT '问题ID',
  `sender_uid` int(11) NOT NULL,
  `recipients_uid` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL COMMENT '受邀Email',
  `add_time` int(10) DEFAULT '0' COMMENT '添加时间',
  `available_time` int(10) DEFAULT '0' COMMENT '生效时间',
  PRIMARY KEY (`question_invite_id`),
  KEY `question_id` (`question_id`),
  KEY `sender_uid` (`sender_uid`),
  KEY `recipients_uid` (`recipients_uid`),
  KEY `add_time` (`add_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='邀请问答';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_question_invite`
--

LOCK TABLES `aws_question_invite` WRITE;
/*!40000 ALTER TABLE `aws_question_invite` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_question_invite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_question_thanks`
--

DROP TABLE IF EXISTS `aws_question_thanks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_question_thanks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `question_id` int(11) DEFAULT '0',
  `user_name` varchar(255) DEFAULT NULL,
  `time` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `question_id` (`question_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_question_thanks`
--

LOCK TABLES `aws_question_thanks` WRITE;
/*!40000 ALTER TABLE `aws_question_thanks` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_question_thanks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_question_uninterested`
--

DROP TABLE IF EXISTS `aws_question_uninterested`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_question_uninterested` (
  `interested_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `question_id` int(11) DEFAULT NULL COMMENT '话题ID',
  `uid` int(11) DEFAULT NULL COMMENT '用户UID',
  `add_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`interested_id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='问题不感兴趣表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_question_uninterested`
--

LOCK TABLES `aws_question_uninterested` WRITE;
/*!40000 ALTER TABLE `aws_question_uninterested` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_question_uninterested` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_received_email`
--

DROP TABLE IF EXISTS `aws_received_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_received_email` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `config_id` int(10) NOT NULL,
  `message_id` varchar(255) NOT NULL,
  `date` int(10) NOT NULL,
  `from` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `content` text,
  `question_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `config_id` (`config_id`),
  KEY `message_id` (`message_id`),
  KEY `date` (`date`),
  KEY `question_id` (`question_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='已导入邮件列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_received_email`
--

LOCK TABLES `aws_received_email` WRITE;
/*!40000 ALTER TABLE `aws_received_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_received_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_receiving_email_config`
--

DROP TABLE IF EXISTS `aws_receiving_email_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_receiving_email_config` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `protocol` varchar(10) NOT NULL,
  `server` varchar(255) NOT NULL,
  `ssl` tinyint(1) NOT NULL DEFAULT '0',
  `port` smallint(5) DEFAULT NULL,
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `uid` int(10) NOT NULL,
  `access_key` varchar(32) NOT NULL,
  `has_attach` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `server` (`server`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='邮件账号列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_receiving_email_config`
--

LOCK TABLES `aws_receiving_email_config` WRITE;
/*!40000 ALTER TABLE `aws_receiving_email_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_receiving_email_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_redirect`
--

DROP TABLE IF EXISTS `aws_redirect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_redirect` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT '0',
  `target_id` int(11) DEFAULT '0',
  `time` int(10) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_redirect`
--

LOCK TABLES `aws_redirect` WRITE;
/*!40000 ALTER TABLE `aws_redirect` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_redirect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_related_links`
--

DROP TABLE IF EXISTS `aws_related_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_related_links` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `item_type` varchar(32) NOT NULL,
  `item_id` int(10) NOT NULL,
  `link` varchar(255) NOT NULL,
  `add_time` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `item_type` (`item_type`),
  KEY `item_id` (`item_id`),
  KEY `add_time` (`add_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_related_links`
--

LOCK TABLES `aws_related_links` WRITE;
/*!40000 ALTER TABLE `aws_related_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_related_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_related_topic`
--

DROP TABLE IF EXISTS `aws_related_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_related_topic` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) DEFAULT '0' COMMENT '话题 ID',
  `related_id` int(11) DEFAULT '0' COMMENT '相关话题 ID',
  PRIMARY KEY (`id`),
  KEY `topic_id` (`topic_id`),
  KEY `related_id` (`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_related_topic`
--

LOCK TABLES `aws_related_topic` WRITE;
/*!40000 ALTER TABLE `aws_related_topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_related_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_report`
--

DROP TABLE IF EXISTS `aws_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '举报用户id',
  `type` varchar(50) DEFAULT NULL COMMENT '类别',
  `target_id` int(11) DEFAULT '0' COMMENT 'ID',
  `reason` varchar(255) DEFAULT NULL COMMENT '举报理由',
  `url` varchar(255) DEFAULT NULL,
  `add_time` int(11) DEFAULT '0' COMMENT '举报时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否处理',
  PRIMARY KEY (`id`),
  KEY `add_time` (`add_time`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_report`
--

LOCK TABLES `aws_report` WRITE;
/*!40000 ALTER TABLE `aws_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_reputation_category`
--

DROP TABLE IF EXISTS `aws_reputation_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_reputation_category` (
  `auto_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) DEFAULT '0',
  `category_id` smallint(4) DEFAULT '0',
  `update_time` int(10) DEFAULT '0',
  `reputation` int(10) DEFAULT '0',
  `thanks_count` int(10) DEFAULT '0',
  `agree_count` int(10) DEFAULT '0',
  `question_count` int(10) DEFAULT '0',
  PRIMARY KEY (`auto_id`),
  UNIQUE KEY `uid_category_id` (`uid`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_reputation_category`
--

LOCK TABLES `aws_reputation_category` WRITE;
/*!40000 ALTER TABLE `aws_reputation_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_reputation_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_reputation_topic`
--

DROP TABLE IF EXISTS `aws_reputation_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_reputation_topic` (
  `auto_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `topic_id` int(11) DEFAULT '0' COMMENT '话题ID',
  `topic_count` int(10) DEFAULT '0' COMMENT '威望问题话题计数',
  `update_time` int(10) DEFAULT NULL COMMENT '更新时间',
  `agree_count` int(10) DEFAULT '0' COMMENT '赞成',
  `thanks_count` int(10) DEFAULT '0' COMMENT '感谢',
  `reputation` int(10) DEFAULT '0',
  PRIMARY KEY (`auto_id`),
  KEY `topic_count` (`topic_count`),
  KEY `uid` (`uid`),
  KEY `topic_id` (`topic_id`),
  KEY `reputation` (`reputation`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_reputation_topic`
--

LOCK TABLES `aws_reputation_topic` WRITE;
/*!40000 ALTER TABLE `aws_reputation_topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_reputation_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_school`
--

DROP TABLE IF EXISTS `aws_school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_school` (
  `school_id` int(11) NOT NULL COMMENT '自增ID',
  `school_type` tinyint(4) DEFAULT NULL COMMENT '学校类型ID',
  `school_code` int(11) DEFAULT NULL COMMENT '学校编码',
  `school_name` varchar(64) DEFAULT NULL COMMENT '学校名称',
  `area_code` int(11) DEFAULT NULL COMMENT '地区代码',
  PRIMARY KEY (`school_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='学校';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_school`
--

LOCK TABLES `aws_school` WRITE;
/*!40000 ALTER TABLE `aws_school` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_search_cache`
--

DROP TABLE IF EXISTS `aws_search_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_search_cache` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL,
  `data` mediumtext NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_search_cache`
--

LOCK TABLES `aws_search_cache` WRITE;
/*!40000 ALTER TABLE `aws_search_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_search_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_sessions`
--

DROP TABLE IF EXISTS `aws_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_sessions` (
  `id` varchar(32) NOT NULL,
  `modified` int(10) NOT NULL,
  `data` text NOT NULL,
  `lifetime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `modified` (`modified`),
  KEY `lifetime` (`lifetime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_sessions`
--

LOCK TABLES `aws_sessions` WRITE;
/*!40000 ALTER TABLE `aws_sessions` DISABLE KEYS */;
INSERT INTO `aws_sessions` VALUES ('s8dq72kjmneqvmmde4i2h4ah72',1416987079,'hgz__Anwsion|a:4:{s:11:\"client_info\";a:3:{s:12:\"__CLIENT_UID\";s:1:\"1\";s:18:\"__CLIENT_USER_NAME\";s:7:\"kitetea\";s:17:\"__CLIENT_PASSWORD\";s:32:\"d3d6df3574cd539dc1ead3ffcf19e6c9\";}s:10:\"permission\";a:15:{s:16:\"is_administortar\";s:1:\"1\";s:12:\"is_moderator\";s:1:\"1\";s:16:\"publish_question\";s:1:\"1\";s:21:\"publish_approval_time\";a:2:{s:5:\"start\";s:0:\"\";s:3:\"end\";s:0:\"\";}s:13:\"edit_question\";s:1:\"1\";s:10:\"edit_topic\";s:1:\"1\";s:12:\"manage_topic\";s:1:\"1\";s:12:\"create_topic\";s:1:\"1\";s:17:\"redirect_question\";s:1:\"1\";s:13:\"upload_attach\";s:1:\"1\";s:11:\"publish_url\";s:1:\"1\";s:15:\"publish_article\";s:1:\"1\";s:12:\"edit_article\";s:1:\"1\";s:19:\"edit_question_topic\";s:1:\"1\";s:15:\"publish_comment\";s:1:\"1\";}s:11:\"valid_email\";s:18:\"daniel@kitetea.com\";s:11:\"admin_login\";s:140:\"7NfOwcCik5KnlcWx1dWSxN3kzM_jw6ChlqCQn8_Q5dLZ2taXsMWMnp6hspi-xsWgl56X1Oemm6Oep6GHvtPNztKmlKGdmKChp6mHvdfcyMnm2qCfm56gmLOU4N7IwI6olKiamJ6gpak.\";}hgz__Captcha|a:1:{s:4:\"word\";s:4:\"9ys5\";}',1440),('0f30q8gnjcaerfr9gjs1c4pis5',1416984712,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('bdj50a9qjjbrd929200nrgieu1',1416984883,'hgz__Anwsion|a:2:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;}',1440),('sidne1kd7bah86h5tnj9om38q6',1416984771,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('mqah0n0u6f516evkhgjqbqcsj3',1416984776,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('aqafo95vp4a4bg85stmhgtc9i3',1416984777,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('1erc4q3fg83srm69c7t42d5bq6',1416984781,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('s03k060c7tm7clp84nq39fia97',1416984791,'hgz__Anwsion|a:2:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;}',1440),('58cdkbe5igh3cnv5df09duieq5',1416984795,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('nqg379b86ka5bsk4h5usa1o671',1416984863,'hgz__Anwsion|a:2:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;}',1440),('rqpovq6tddmptaqjhk078925q4',1416984874,'hgz__Anwsion|a:2:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;}',1440),('np320mf2i3dvrm80tdgdm28vp7',1416984888,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('n36ho83d9qv05l6387vvq1ukr3',1416985135,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('nptbiinfcd4gk7krm1morsdg26',1416985162,'hgz__Anwsion|a:2:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;}',1440),('dsm8pjogn91hj6okkmceicale5',1416985164,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('24id8pktei7q6k2t6jq8kaqr00',1416985167,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('hugiasf19k0eqm9mdto100fsh7',1416985222,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('omal9n38d502g7gks389s7c6a0',1416985237,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('4ppqs2db2tij1hta58eusd5ra5',1416985241,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('2qmps4h8vkq997g3s45ije8920',1416985252,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('6rnv2tdq0srphm2ti2imc9h9d2',1416985255,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('3m6hat0ku7n2hdhjel1a6gf8i5',1416985262,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('h31hnsp40u6ib87cl8319k3vg0',1416985273,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('p7q3ppsfcq29eo7p7kqv5nbsn4',1416985277,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('3hbc5o8g9sf19lfddcdnq42ug3',1416985287,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('q73nv236haah88g9nenhjfjg00',1416985293,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('ur50r8abevmn3gg45gercmf5e4',1416985299,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('aafpb2endi1vf48dn9bev071e4',1416985307,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('tj88bmhk9pmcbog41sbq3jar97',1416985312,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('dqmqgfnkqtaojmkek3pciaccg1',1416985323,'hgz__Anwsion|a:3:{s:10:\"permission\";N;s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('77rn34g3infr2bj4do6l42jqs7',1416985325,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('ma4se61strf8nqo5sa88qo05a1',1416985325,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('nd9k0rmqm1pcrsimgat3psamm5',1416985326,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('u87hvbqnvstnqvs33j4mv9o6m3',1416985331,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('9trenjhujaugq78r4mi2i03dq7',1416985332,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('a1ms8a1gsfoevj11a2h77sukr0',1416985342,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('bdngn3jb5jhk2v8n92ik8u66m7',1416985553,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('2hul27h2vdvh5hg3b4ktvqool6',1416985594,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('3i22aibqeiep2rrvs0co66cd47',1416985599,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('2jml6uh23kmh2u1h5tefsgi9i3',1416985603,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('fhvbvjmh3mkbs5bqrvhlugogh7',1416985605,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('mrkne4evdieunuu8qotf84ili2',1416985881,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('vdqrpcafafdjuu7kh0cng14g56',1416985904,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('9k62jchfpe3t2fvqdavtpp5ct4',1416985908,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('pa08u5qedjgfn8j7sm5s4tfus6',1416985912,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('3kufqfkehsph1fvp4tibsdgdn7',1416986012,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('vfar5cj67p8sbdbsfmm9grn947',1416986038,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('ijk0d70jm52lvdseokeve5m7m3',1416986041,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('vjibgbsti18u7a4q5kdal1jgj2',1416986045,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('52f9vi9btsbll097gd2845kg54',1416986048,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('r5grkn366ja5cklevqtnbpedq7',1416986057,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('q1hflhqr7h1fe3ung0pvtqvjd2',1416986061,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('74e442v1ok0jprof88oq20pe16',1416986068,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('0h9djkj4nk5ndlgs3pjhv1epl3',1416986292,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('ruvkfr9qidh8dcr7i01fqk7k92',1416986296,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('0h2jnllr0q6cv6qcv9t3h09u92',1416986295,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('pnqdbnieb4g4ob7ueeu1b70al0',1416986299,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('2qmg7eb9sii647sl9t56310ch2',1416986303,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('knon6ska4plsilr2vg58jca430',1416986306,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('cvirokued1clv1kicll6crn3n3',1416986310,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('vtpqgr1ho44pis209qhva89i81',1416986322,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('obt2cd7ctlmah4ohi9fo9nbli6',1416986332,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('ovhr21t3vpodl1l0jnifnunk47',1416986340,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('jj5efj5gn7tilnj5ootijna931',1416986341,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('sljqbr5osiu5vk55l8gbj3st27',1416986347,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('v8hih42rvsk5jg4mk37nanbop3',1416986355,'hgz__Anwsion|a:3:{s:10:\"permission\";N;s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ltgtg4kfao425r48n7ptqgpt53',1416986357,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('4oqddf0t96nvjo5b5bsqmsehl6',1416986360,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('9lc7m8n6b4c65d3eccbavpra63',1416986421,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('k2vct73psqpd0lfq1tmpe2suv4',1416986425,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('82l9fvmpp7bbm016k42pt9lss6',1416986429,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('nnde90juuchb6a2f0ksmqjepo3',1416986436,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('ltqc0v4qtsjv7heqc4qcd95dr3',1416986439,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('151s99k46cv5r68b0u1udnenh5',1416986441,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('405snbhjch479ht4l529b7lga5',1416986444,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('1n5od5g373aid622dotdrs2t82',1416986474,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('7ntkg8se72tldmfjbqelslpam3',1416986478,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('ke81jr2spcqv3vgmsr12k0f0o2',1416986486,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('u8vqs14mtkrbpoj4hh2af4hfc0',1416986490,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('30i1sos720b9kpjhtgse5q2sv4',1416986496,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('st9uclcmaf57bigri0tdpi7ie3',1416986502,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('2ha7igmdsf9upukcu8p24qv861',1416986512,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('g99spup8emj7hvdosmfap1bgf3',1416986647,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('rt14tmsouhfiodmavnnsgljmb4',1416986651,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('keosoni2fs6kjlnsfdp163g533',1416986654,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('sviinrm64dhfrghnp9uqgresc4',1416986690,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('uv4m1mfe5jcn1k98bv13pt5m22',1416986698,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440),('1mohknvmv7dv6hj5vv2h4iq030',1416986706,'hgz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"admin_login\";N;}',1440);
/*!40000 ALTER TABLE `aws_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_system_setting`
--

DROP TABLE IF EXISTS `aws_system_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_system_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `varname` varchar(255) NOT NULL COMMENT '字段名',
  `value` text COMMENT '变量值',
  PRIMARY KEY (`id`),
  UNIQUE KEY `varname` (`varname`)
) ENGINE=MyISAM AUTO_INCREMENT=128 DEFAULT CHARSET=utf8 COMMENT='系统设置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_system_setting`
--

LOCK TABLES `aws_system_setting` WRITE;
/*!40000 ALTER TABLE `aws_system_setting` DISABLE KEYS */;
INSERT INTO `aws_system_setting` VALUES (1,'db_engine','s:6:\"MyISAM\";'),(2,'site_name','s:8:\"KITE Q&A\";'),(3,'description','s:69:\"Knowledge about tea and discussion how to blend most delicious drink.\";'),(4,'keywords','s:69:\"KITE TEA, tea , tea leaves, drink, fusion tea, tea blend, Chinese tea\";'),(5,'sensitive_words','s:0:\"\";'),(6,'def_focus_uids','s:1:\"1\";'),(7,'answer_edit_time','s:2:\"30\";'),(8,'cache_level_high','s:2:\"60\";'),(9,'cache_level_normal','s:3:\"600\";'),(10,'cache_level_low','s:4:\"1800\";'),(11,'unread_flush_interval','s:3:\"100\";'),(12,'newer_invitation_num','s:1:\"5\";'),(13,'index_per_page','s:2:\"20\";'),(14,'from_email','s:20:\"danielma@kitetea.com\";'),(15,'img_url','s:0:\"\";'),(16,'upload_url','s:30:\"http://ask.kitetea.com/uploads\";'),(17,'upload_dir','s:27:\"F:/website/kite/ask/uploads\";'),(18,'ui_style','s:7:\"default\";'),(19,'uninterested_fold','s:1:\"5\";'),(20,'sina_akey',NULL),(21,'sina_skey',NULL),(22,'sina_weibo_enabled','s:1:\"N\";'),(23,'answer_unique','s:1:\"N\";'),(24,'notifications_per_page','s:2:\"10\";'),(25,'contents_per_page','s:2:\"10\";'),(26,'hot_question_period','s:1:\"7\";'),(27,'category_display_mode','s:4:\"icon\";'),(28,'recommend_users_number','s:1:\"6\";'),(29,'ucenter_enabled','s:1:\"N\";'),(30,'register_valid_type','s:1:\"N\";'),(31,'best_answer_day','s:2:\"30\";'),(32,'answer_self_question','s:1:\"Y\";'),(33,'censoruser','s:5:\"admin\";'),(34,'best_answer_min_count','s:1:\"3\";'),(35,'reputation_function','s:78:\"[最佳答案]*3+[赞同]*1-[反对]*1+[发起者赞同]*2-[发起者反对]*1\";'),(36,'db_version','s:8:\"20141121\";'),(37,'statistic_code','s:0:\"\";'),(38,'upload_enable','s:1:\"Y\";'),(39,'answer_length_lower','s:1:\"2\";'),(40,'quick_publish','s:1:\"Y\";'),(41,'register_type','s:4:\"open\";'),(42,'question_title_limit','s:3:\"100\";'),(43,'register_seccode','s:1:\"Y\";'),(44,'admin_login_seccode','s:1:\"Y\";'),(45,'comment_limit','s:1:\"0\";'),(46,'backup_dir',''),(47,'best_answer_reput','s:2:\"20\";'),(48,'publisher_reputation_factor','s:2:\"10\";'),(49,'request_route_custom','s:97:\"/account/login/===/login/\n/account/logout/===/logout/\n/account/setting/(:any)/===/setting/(:any)/\";'),(50,'upload_size_limit','s:3:\"512\";'),(51,'upload_avatar_size_limit','s:3:\"512\";'),(52,'topic_title_limit','s:2:\"12\";'),(53,'url_rewrite_enable','s:1:\"N\";'),(54,'best_agree_min_count','s:1:\"3\";'),(55,'site_close','s:1:\"N\";'),(56,'close_notice','s:39:\"站点已关闭，管理员请登录。\";'),(57,'qq_login_enabled','s:1:\"N\";'),(58,'qq_login_app_id',''),(59,'qq_login_app_key',''),(60,'integral_system_enabled','s:1:\"N\";'),(61,'integral_system_config_register','s:4:\"2000\";'),(62,'integral_system_config_profile','s:3:\"100\";'),(63,'integral_system_config_invite','s:3:\"200\";'),(64,'integral_system_config_best_answer','s:3:\"200\";'),(65,'integral_system_config_answer_fold','s:3:\"-50\";'),(66,'integral_system_config_new_question','s:3:\"-20\";'),(67,'integral_system_config_new_answer','s:2:\"-5\";'),(68,'integral_system_config_thanks','s:3:\"-10\";'),(69,'integral_system_config_invite_answer','s:3:\"-10\";'),(70,'username_rule','s:1:\"1\";'),(71,'username_length_min','s:1:\"2\";'),(72,'username_length_max','s:2:\"14\";'),(73,'category_enable','s:1:\"Y\";'),(74,'integral_unit','s:6:\"金币\";'),(75,'nav_menu_show_child','s:1:\"1\";'),(76,'anonymous_enable','s:1:\"Y\";'),(77,'report_reason','s:63:\"广告/SPAM\n恶意灌水\n违规内容\n文不对题\n重复发问\";'),(78,'allowed_upload_types','s:41:\"jpg,jpeg,png,gif,zip,doc,docx,rar,pdf,psd\";'),(79,'site_announce','s:0:\"\";'),(80,'icp_beian','s:0:\"\";'),(81,'report_message_uid','s:1:\"1\";'),(82,'today_topics','s:0:\"\";'),(83,'welcome_recommend_users','s:0:\"\";'),(84,'welcome_message_pm','s:158:\"Dear {username}，\nThanks for your registion at http:://ask.kitetea.com.\nIf you have any question about tea, please don\'t be hesitate to ask here.\n\n{sitename}\";'),(85,'time_style','s:1:\"Y\";'),(86,'reputation_log_factor','s:1:\"3\";'),(87,'advanced_editor_enable','s:1:\"Y\";'),(88,'auto_question_lock_day','s:1:\"0\";'),(89,'default_timezone','s:9:\"Etc/GMT-8\";'),(90,'reader_questions_last_days','s:2:\"30\";'),(91,'reader_questions_agree_count','s:2:\"10\"'),(92,'weixin_mp_token','s:0:\"\";'),(93,'new_user_email_setting','a:0:{}'),(94,'new_user_notification_setting','a:0:{}'),(95,'user_action_history_fresh_upgrade','s:1:\"Y\";'),(96,'cache_dir','s:0:\"\";'),(97,'ucenter_charset','s:5:\"UTF-8\";'),(98,'question_topics_limit','s:2:\"10\";'),(99,'mail_config','a:7:{s:9:\"transport\";s:4:\"smtp\";s:7:\"charset\";s:5:\"UTF-8\";s:6:\"server\";s:15:\"smtp.ym.163.com\";s:3:\"ssl\";s:1:\"1\";s:4:\"port\";s:3:\"465\";s:8:\"username\";s:19:\"service@kitetea.com\";s:8:\"password\";s:10:\"pgHGNE6HP6\";}'),(100,'auto_create_social_topics','s:1:\"N\";'),(101,'weixin_subscribe_message_key','s:0:\"\";'),(102,'weixin_no_result_message_key','s:0:\"\";'),(103,'weixin_mp_menu','a:0:{}'),(104,'new_question_force_add_topic','s:1:\"N\";'),(105,'unfold_question_comments','s:1:\"N\";'),(106,'report_diagnostics','s:1:\"Y\";'),(107,'weixin_app_id','s:0:\"\";'),(108,'weixin_app_secret','s:0:\"\";'),(109,'weixin_account_role','s:7:\"base\";'),(110,'weibo_msg_enabled','s:1:\"N\";'),(111,'weibo_msg_published_user','a:0:\"\";'),(112,'admin_notifications','a:13:{s:15:\"answer_approval\";i:0;s:17:\"question_approval\";i:0;s:16:\"article_approval\";i:0;s:24:\"article_comment_approval\";i:0;s:18:\"weibo_msg_approval\";i:0;s:23:\"received_email_approval\";i:0;s:23:\"unverified_modify_count\";i:0;s:11:\"user_report\";i:0;s:17:\"register_approval\";i:1;s:15:\"verify_approval\";i:0;s:12:\"last_version\";a:2:{s:7:\"version\";s:5:\"3.0.1\";s:9:\"build_day\";s:8:\"20141121\";}s:10:\"sina_users\";N;s:19:\"receive_email_error\";N;}'),(113,'slave_mail_config','a:5:{s:6:\"server\";s:0:\"\";s:3:\"ssl\";s:1:\"0\";s:4:\"port\";s:0:\"\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";}'),(114,'receiving_email_global_config','a:2:{s:7:\"enabled\";s:1:\"N\";s:12:\"publish_user\";N;}'),(115,'last_sent_valid_email_id','i:0;'),(116,'google_login_enabled','s:1:\"N\";'),(117,'google_client_id','s:0:\"\";'),(118,'google_client_secret','s:0:\"\";'),(119,'facebook_login_enabled','s:1:\"N\";'),(120,'facebook_app_id','s:0:\"\";'),(121,'facebook_app_secret','s:0:\"\";'),(122,'twitter_login_enabled','s:1:\"N\";'),(123,'twitter_consumer_key','s:0:\"\";'),(124,'twitter_consumer_secret','s:0:\"\";'),(125,'weixin_encoding_aes_key','s:0:\"\";'),(126,'integral_system_config_answer_change_source','s:1:\"Y\";'),(127,'register_agreement','s:1608:\"当您申请用户时，表示您已经同意遵守本规章。\n欢迎您加入本站点参与交流和讨论，本站点为社区，为维护网上公共秩序和社会稳定，请您自觉遵守以下条款：\n\n一、不得利用本站危害国家安全、泄露国家秘密，不得侵犯国家社会集体的和公民的合法权益，不得利用本站制作、复制和传播下列信息：\n　（一）煽动抗拒、破坏宪法和法律、行政法规实施的；\n　（二）煽动颠覆国家政权，推翻社会主义制度的；\n　（三）煽动分裂国家、破坏国家统一的；\n　（四）煽动民族仇恨、民族歧视，破坏民族团结的；\n　（五）捏造或者歪曲事实，散布谣言，扰乱社会秩序的；\n　（六）宣扬封建迷信、淫秽、色情、赌博、暴力、凶杀、恐怖、教唆犯罪的；\n　（七）公然侮辱他人或者捏造事实诽谤他人的，或者进行其他恶意攻击的；\n　（八）损害国家机关信誉的；\n　（九）其他违反宪法和法律行政法规的；\n　（十）进行商业广告行为的。\n\n二、互相尊重，对自己的言论和行为负责。\n三、禁止在申请用户时使用相关本站的词汇，或是带有侮辱、毁谤、造谣类的或是有其含义的各种语言进行注册用户，否则我们会将其删除。\n四、禁止以任何方式对本站进行各种破坏行为。\n五、如果您有违反国家相关法律法规的行为，本站概不负责，您的登录信息均被记录无疑，必要时，我们会向相关的国家管理部门提供此类信息。\";');
/*!40000 ALTER TABLE `aws_system_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_topic`
--

DROP TABLE IF EXISTS `aws_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_topic` (
  `topic_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '话题id',
  `topic_title` varchar(64) DEFAULT NULL COMMENT '话题标题',
  `add_time` int(10) DEFAULT NULL COMMENT '添加时间',
  `discuss_count` int(11) DEFAULT '0' COMMENT '讨论计数',
  `topic_description` text COMMENT '话题描述',
  `topic_pic` varchar(255) DEFAULT NULL COMMENT '话题图片',
  `topic_lock` tinyint(2) NOT NULL DEFAULT '0' COMMENT '话题是否锁定 1 锁定 0 未锁定',
  `focus_count` int(11) DEFAULT '0' COMMENT '关注计数',
  `user_related` tinyint(1) DEFAULT '0' COMMENT '是否被用户关联',
  `url_token` varchar(32) DEFAULT NULL,
  `merged_id` int(11) DEFAULT '0',
  `seo_title` varchar(255) DEFAULT NULL,
  `parent_id` int(10) DEFAULT '0',
  `is_parent` tinyint(1) DEFAULT '0',
  `discuss_count_last_week` int(10) DEFAULT '0',
  `discuss_count_last_month` int(10) DEFAULT '0',
  `discuss_count_update` int(10) DEFAULT '0',
  PRIMARY KEY (`topic_id`),
  UNIQUE KEY `topic_title` (`topic_title`),
  KEY `url_token` (`url_token`),
  KEY `merged_id` (`merged_id`),
  KEY `discuss_count` (`discuss_count`),
  KEY `add_time` (`add_time`),
  KEY `user_related` (`user_related`),
  KEY `focus_count` (`focus_count`),
  KEY `topic_lock` (`topic_lock`),
  KEY `parent_id` (`parent_id`),
  KEY `is_parent` (`is_parent`),
  KEY `discuss_count_last_week` (`discuss_count_last_week`),
  KEY `discuss_count_last_month` (`discuss_count_last_month`),
  KEY `discuss_count_update` (`discuss_count_update`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='话题';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_topic`
--

LOCK TABLES `aws_topic` WRITE;
/*!40000 ALTER TABLE `aws_topic` DISABLE KEYS */;
INSERT INTO `aws_topic` VALUES (2,'oolong',1416986000,1,'',NULL,0,1,0,NULL,0,NULL,0,0,1,1,1416986000);
/*!40000 ALTER TABLE `aws_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_topic_focus`
--

DROP TABLE IF EXISTS `aws_topic_focus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_topic_focus` (
  `focus_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `topic_id` int(11) DEFAULT NULL COMMENT '话题ID',
  `uid` int(11) DEFAULT NULL COMMENT '用户UID',
  `add_time` int(10) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`focus_id`),
  KEY `uid` (`uid`),
  KEY `topic_id` (`topic_id`),
  KEY `topic_uid` (`topic_id`,`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='话题关注表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_topic_focus`
--

LOCK TABLES `aws_topic_focus` WRITE;
/*!40000 ALTER TABLE `aws_topic_focus` DISABLE KEYS */;
INSERT INTO `aws_topic_focus` VALUES (2,2,1,1416986000);
/*!40000 ALTER TABLE `aws_topic_focus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_topic_merge`
--

DROP TABLE IF EXISTS `aws_topic_merge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_topic_merge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` int(11) NOT NULL DEFAULT '0',
  `target_id` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) DEFAULT '0',
  `time` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `source_id` (`source_id`),
  KEY `target_id` (`target_id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_topic_merge`
--

LOCK TABLES `aws_topic_merge` WRITE;
/*!40000 ALTER TABLE `aws_topic_merge` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_topic_merge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_topic_relation`
--

DROP TABLE IF EXISTS `aws_topic_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_topic_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增 ID',
  `topic_id` int(11) DEFAULT '0' COMMENT '话题id',
  `item_id` int(11) DEFAULT '0',
  `add_time` int(10) DEFAULT '0' COMMENT '添加时间',
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `type` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `topic_id` (`topic_id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`),
  KEY `item_id` (`item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_topic_relation`
--

LOCK TABLES `aws_topic_relation` WRITE;
/*!40000 ALTER TABLE `aws_topic_relation` DISABLE KEYS */;
INSERT INTO `aws_topic_relation` VALUES (1,2,1,1416986000,1,'question');
/*!40000 ALTER TABLE `aws_topic_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_user_action_history`
--

DROP TABLE IF EXISTS `aws_user_action_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_user_action_history` (
  `history_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `associate_type` tinyint(1) DEFAULT NULL COMMENT '关联类型: 1 问题 2 回答 3 评论 4 话题',
  `associate_action` smallint(3) DEFAULT NULL COMMENT '操作类型',
  `associate_id` int(11) DEFAULT NULL COMMENT '关联ID',
  `add_time` int(10) DEFAULT NULL COMMENT '添加时间',
  `associate_attached` int(11) DEFAULT NULL,
  `anonymous` tinyint(1) DEFAULT '0' COMMENT '是否匿名',
  `fold_status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`history_id`),
  KEY `add_time` (`add_time`),
  KEY `uid` (`uid`),
  KEY `associate_id` (`associate_id`),
  KEY `anonymous` (`anonymous`),
  KEY `fold_status` (`fold_status`),
  KEY `associate` (`associate_type`,`associate_action`),
  KEY `associate_attached` (`associate_attached`),
  KEY `associate_with_id` (`associate_id`,`associate_type`,`associate_action`),
  KEY `associate_with_uid` (`uid`,`associate_type`,`associate_action`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='用户操作记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_user_action_history`
--

LOCK TABLES `aws_user_action_history` WRITE;
/*!40000 ALTER TABLE `aws_user_action_history` DISABLE KEYS */;
INSERT INTO `aws_user_action_history` VALUES (2,1,4,401,2,1416986000,-1,0,0),(3,1,4,406,2,1416986000,-1,0,0),(4,1,1,401,1,1416986000,2,0,0),(5,1,4,401,2,1416986000,1,0,0),(6,1,1,101,1,1416986000,-1,0,0);
/*!40000 ALTER TABLE `aws_user_action_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_user_action_history_data`
--

DROP TABLE IF EXISTS `aws_user_action_history_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_user_action_history_data` (
  `history_id` int(11) unsigned NOT NULL,
  `associate_content` text,
  `associate_attached` text,
  `addon_data` text COMMENT '附加数据',
  PRIMARY KEY (`history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_user_action_history_data`
--

LOCK TABLES `aws_user_action_history_data` WRITE;
/*!40000 ALTER TABLE `aws_user_action_history_data` DISABLE KEYS */;
INSERT INTO `aws_user_action_history_data` VALUES (2,'oolong','',''),(3,'','',''),(4,'oolong','',''),(5,'oolong','',''),(6,'what\'s the difference of oolong tea and black tea ?','Friends keep talking about oolong tea, but I have no idea what\'s that exactly','');
/*!40000 ALTER TABLE `aws_user_action_history_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_user_action_history_fresh`
--

DROP TABLE IF EXISTS `aws_user_action_history_fresh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_user_action_history_fresh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `history_id` int(11) NOT NULL,
  `associate_id` int(11) NOT NULL,
  `associate_type` tinyint(1) NOT NULL,
  `associate_action` smallint(3) NOT NULL,
  `add_time` int(10) NOT NULL DEFAULT '0',
  `uid` int(10) NOT NULL DEFAULT '0',
  `anonymous` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `associate` (`associate_type`,`associate_action`),
  KEY `add_time` (`add_time`),
  KEY `uid` (`uid`),
  KEY `history_id` (`history_id`),
  KEY `associate_with_id` (`id`,`associate_type`,`associate_action`),
  KEY `associate_with_uid` (`uid`,`associate_type`,`associate_action`),
  KEY `anonymous` (`anonymous`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_user_action_history_fresh`
--

LOCK TABLES `aws_user_action_history_fresh` WRITE;
/*!40000 ALTER TABLE `aws_user_action_history_fresh` DISABLE KEYS */;
INSERT INTO `aws_user_action_history_fresh` VALUES (5,5,2,4,401,1416986000,1,0),(6,6,1,1,101,1416986000,1,0);
/*!40000 ALTER TABLE `aws_user_action_history_fresh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_user_follow`
--

DROP TABLE IF EXISTS `aws_user_follow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_user_follow` (
  `follow_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `fans_uid` int(11) DEFAULT NULL COMMENT '关注人的UID',
  `friend_uid` int(11) DEFAULT NULL COMMENT '被关注人的uid',
  `add_time` int(10) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`follow_id`),
  KEY `fans_uid` (`fans_uid`),
  KEY `friend_uid` (`friend_uid`),
  KEY `user_follow` (`fans_uid`,`friend_uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户关注表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_user_follow`
--

LOCK TABLES `aws_user_follow` WRITE;
/*!40000 ALTER TABLE `aws_user_follow` DISABLE KEYS */;
INSERT INTO `aws_user_follow` VALUES (1,2,1,1416984923);
/*!40000 ALTER TABLE `aws_user_follow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_users`
--

DROP TABLE IF EXISTS `aws_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_users` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户的 UID',
  `user_name` varchar(255) DEFAULT NULL COMMENT '用户名',
  `email` varchar(255) DEFAULT NULL COMMENT 'EMAIL',
  `mobile` varchar(16) DEFAULT NULL COMMENT '用户手机',
  `password` varchar(32) DEFAULT NULL COMMENT '用户密码',
  `salt` varchar(16) DEFAULT NULL COMMENT '用户附加混淆码',
  `avatar_file` varchar(128) DEFAULT NULL COMMENT '头像文件',
  `sex` tinyint(1) DEFAULT NULL COMMENT '性别',
  `birthday` int(10) DEFAULT NULL COMMENT '生日',
  `province` varchar(64) DEFAULT NULL COMMENT '省',
  `city` varchar(64) DEFAULT NULL COMMENT '市',
  `job_id` int(10) DEFAULT '0' COMMENT '职业ID',
  `reg_time` int(10) DEFAULT NULL COMMENT '注册时间',
  `reg_ip` bigint(12) DEFAULT NULL COMMENT '注册IP',
  `last_login` int(10) DEFAULT '0' COMMENT '最后登录时间',
  `last_ip` bigint(12) DEFAULT NULL COMMENT '最后登录 IP',
  `online_time` int(10) DEFAULT '0' COMMENT '在线时间',
  `last_active` int(10) DEFAULT NULL COMMENT '最后活跃时间',
  `notification_unread` int(11) NOT NULL DEFAULT '0' COMMENT '未读系统通知',
  `inbox_unread` int(11) NOT NULL DEFAULT '0' COMMENT '未读短信息',
  `inbox_recv` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-所有人可以发给我,1-我关注的人',
  `fans_count` int(10) NOT NULL DEFAULT '0' COMMENT '粉丝数',
  `friend_count` int(10) NOT NULL DEFAULT '0' COMMENT '观众数',
  `invite_count` int(10) NOT NULL DEFAULT '0' COMMENT '邀请我回答数量',
  `question_count` int(10) NOT NULL DEFAULT '0' COMMENT '问题数量',
  `answer_count` int(10) NOT NULL DEFAULT '0' COMMENT '回答数量',
  `topic_focus_count` int(10) NOT NULL DEFAULT '0' COMMENT '关注话题数量',
  `invitation_available` int(10) NOT NULL DEFAULT '0' COMMENT '邀请数量',
  `group_id` int(10) DEFAULT '0' COMMENT '用户组',
  `reputation_group` int(10) DEFAULT '0' COMMENT '威望对应组',
  `forbidden` tinyint(1) DEFAULT '0' COMMENT '是否禁止用户',
  `valid_email` tinyint(1) DEFAULT '0' COMMENT '邮箱验证',
  `is_first_login` tinyint(1) DEFAULT '1' COMMENT '首次登录标记',
  `agree_count` int(10) DEFAULT '0' COMMENT '赞同数量',
  `thanks_count` int(10) DEFAULT '0' COMMENT '感谢数量',
  `views_count` int(10) DEFAULT '0' COMMENT '个人主页查看数量',
  `reputation` int(10) DEFAULT '0' COMMENT '威望',
  `reputation_update_time` int(10) DEFAULT '0' COMMENT '威望更新',
  `weibo_visit` tinyint(1) DEFAULT '1' COMMENT '微博允许访问',
  `integral` int(10) DEFAULT '0',
  `draft_count` int(10) DEFAULT NULL,
  `common_email` varchar(255) DEFAULT NULL COMMENT '常用邮箱',
  `url_token` varchar(32) DEFAULT NULL COMMENT '个性网址',
  `url_token_update` int(10) DEFAULT '0',
  `verified` varchar(32) DEFAULT NULL,
  `default_timezone` varchar(32) DEFAULT NULL,
  `email_settings` varchar(255) DEFAULT '',
  `weixin_settings` varchar(255) DEFAULT '',
  `recent_topics` text,
  PRIMARY KEY (`uid`),
  KEY `user_name` (`user_name`),
  KEY `email` (`email`),
  KEY `reputation` (`reputation`),
  KEY `reputation_update_time` (`reputation_update_time`),
  KEY `group_id` (`group_id`),
  KEY `agree_count` (`agree_count`),
  KEY `thanks_count` (`thanks_count`),
  KEY `forbidden` (`forbidden`),
  KEY `valid_email` (`valid_email`),
  KEY `last_active` (`last_active`),
  KEY `integral` (`integral`),
  KEY `url_token` (`url_token`),
  KEY `verified` (`verified`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_users`
--

LOCK TABLES `aws_users` WRITE;
/*!40000 ALTER TABLE `aws_users` DISABLE KEYS */;
INSERT INTO `aws_users` VALUES (1,'kitetea','danielma@kitetea.com','','d3d6df3574cd539dc1ead3ffcf19e6c9','cwtw',NULL,3,NULL,'','',0,1416973901,2130706433,1416985144,2130706433,2603,1416987079,0,0,0,1,0,0,1,0,1,10,1,5,0,1,0,0,0,0,0,1416986693,1,1990,0,NULL,NULL,0,NULL,'','','','a:1:{i:0;s:6:\"oolong\";}'),(2,'Daniel','daniel@kitetea.com','','a0a3f2e56b115218d7c217aac73a9b86','rjpb',NULL,3,NULL,NULL,NULL,0,1416984923,2130706433,0,NULL,0,NULL,0,0,0,0,1,0,0,0,0,5,3,5,0,0,1,0,0,0,0,1416986693,1,2000,NULL,NULL,NULL,0,NULL,NULL,'a:2:{s:9:\"FOLLOW_ME\";s:1:\"N\";s:10:\"NEW_ANSWER\";s:1:\"N\";}','',NULL);
/*!40000 ALTER TABLE `aws_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_users_attrib`
--

DROP TABLE IF EXISTS `aws_users_attrib`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_users_attrib` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `uid` int(11) DEFAULT NULL COMMENT '用户UID',
  `introduction` varchar(255) DEFAULT NULL COMMENT '个人简介',
  `signature` varchar(255) DEFAULT NULL COMMENT '个人签名',
  `qq` bigint(15) DEFAULT NULL,
  `homepage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户附加属性表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_users_attrib`
--

LOCK TABLES `aws_users_attrib` WRITE;
/*!40000 ALTER TABLE `aws_users_attrib` DISABLE KEYS */;
INSERT INTO `aws_users_attrib` VALUES (1,1,NULL,'KITE Tea',0,''),(2,2,NULL,'',NULL,NULL);
/*!40000 ALTER TABLE `aws_users_attrib` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_users_facebook`
--

DROP TABLE IF EXISTS `aws_users_facebook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_users_facebook` (
  `id` bigint(20) unsigned NOT NULL,
  `uid` int(11) unsigned NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `gender` varchar(8) DEFAULT NULL,
  `locale` varchar(16) DEFAULT NULL,
  `timezone` tinyint(3) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `expires_time` int(10) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`),
  KEY `access_token` (`access_token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_users_facebook`
--

LOCK TABLES `aws_users_facebook` WRITE;
/*!40000 ALTER TABLE `aws_users_facebook` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_users_facebook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_users_google`
--

DROP TABLE IF EXISTS `aws_users_google`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_users_google` (
  `id` varchar(64) NOT NULL,
  `uid` int(11) unsigned NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `locale` varchar(16) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `gender` varchar(8) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `access_token` varchar(128) DEFAULT NULL,
  `refresh_token` varchar(128) DEFAULT NULL,
  `expires_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`),
  KEY `access_token` (`access_token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_users_google`
--

LOCK TABLES `aws_users_google` WRITE;
/*!40000 ALTER TABLE `aws_users_google` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_users_google` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_users_group`
--

DROP TABLE IF EXISTS `aws_users_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_users_group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) DEFAULT '0' COMMENT '0-会员组 1-系统组',
  `custom` tinyint(1) DEFAULT '0' COMMENT '是否自定义',
  `group_name` varchar(50) NOT NULL,
  `reputation_lower` int(11) DEFAULT '0',
  `reputation_higer` int(11) DEFAULT '0',
  `reputation_factor` float DEFAULT '0' COMMENT '威望系数',
  `permission` text COMMENT '权限设置',
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='用户组';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_users_group`
--

LOCK TABLES `aws_users_group` WRITE;
/*!40000 ALTER TABLE `aws_users_group` DISABLE KEYS */;
INSERT INTO `aws_users_group` VALUES (1,0,0,'超级管理员',0,0,5,'a:15:{s:16:\"is_administortar\";s:1:\"1\";s:12:\"is_moderator\";s:1:\"1\";s:16:\"publish_question\";s:1:\"1\";s:21:\"publish_approval_time\";a:2:{s:5:\"start\";s:0:\"\";s:3:\"end\";s:0:\"\";}s:13:\"edit_question\";s:1:\"1\";s:10:\"edit_topic\";s:1:\"1\";s:12:\"manage_topic\";s:1:\"1\";s:12:\"create_topic\";s:1:\"1\";s:17:\"redirect_question\";s:1:\"1\";s:13:\"upload_attach\";s:1:\"1\";s:11:\"publish_url\";s:1:\"1\";s:15:\"publish_article\";s:1:\"1\";s:12:\"edit_article\";s:1:\"1\";s:19:\"edit_question_topic\";s:1:\"1\";s:15:\"publish_comment\";s:1:\"1\";}'),(2,0,0,'前台管理员',0,0,4,'a:14:{s:12:\"is_moderator\";s:1:\"1\";s:16:\"publish_question\";s:1:\"1\";s:21:\"publish_approval_time\";a:2:{s:5:\"start\";s:0:\"\";s:3:\"end\";s:0:\"\";}s:13:\"edit_question\";s:1:\"1\";s:10:\"edit_topic\";s:1:\"1\";s:12:\"manage_topic\";s:1:\"1\";s:12:\"create_topic\";s:1:\"1\";s:17:\"redirect_question\";s:1:\"1\";s:13:\"upload_attach\";s:1:\"1\";s:11:\"publish_url\";s:1:\"1\";s:15:\"publish_article\";s:1:\"1\";s:12:\"edit_article\";s:1:\"1\";s:19:\"edit_question_topic\";s:1:\"1\";s:15:\"publish_comment\";s:1:\"1\";}'),(3,0,0,'未验证会员',0,0,0,'a:5:{s:16:\"publish_question\";s:1:\"1\";s:21:\"publish_approval_time\";a:2:{s:5:\"start\";s:0:\"\";s:3:\"end\";s:0:\"\";}s:11:\"human_valid\";s:1:\"1\";s:19:\"question_valid_hour\";s:1:\"2\";s:17:\"answer_valid_hour\";s:1:\"2\";}'),(4,0,0,'普通会员',0,0,0,'a:3:{s:21:\"publish_approval_time\";a:2:{s:5:\"start\";s:0:\"\";s:3:\"end\";s:0:\"\";}s:19:\"question_valid_hour\";s:2:\"10\";s:17:\"answer_valid_hour\";s:2:\"10\";}'),(5,1,0,'注册会员',0,100,1,'a:6:{s:16:\"publish_question\";s:1:\"1\";s:21:\"publish_approval_time\";a:2:{s:5:\"start\";s:0:\"\";s:3:\"end\";s:0:\"\";}s:11:\"human_valid\";s:1:\"1\";s:19:\"question_valid_hour\";s:1:\"5\";s:17:\"answer_valid_hour\";s:1:\"5\";s:15:\"publish_comment\";s:1:\"1\";}'),(6,1,0,'初级会员',100,200,1,'a:8:{s:16:\"publish_question\";s:1:\"1\";s:21:\"publish_approval_time\";a:2:{s:5:\"start\";s:0:\"\";s:3:\"end\";s:0:\"\";}s:13:\"upload_attach\";s:1:\"1\";s:11:\"publish_url\";s:1:\"1\";s:19:\"question_valid_hour\";s:1:\"5\";s:17:\"answer_valid_hour\";s:1:\"5\";s:15:\"publish_article\";s:1:\"1\";s:19:\"edit_question_topic\";s:1:\"1\";}'),(7,1,0,'中级会员',200,500,1,'a:9:{s:16:\"publish_question\";s:1:\"1\";s:21:\"publish_approval_time\";a:2:{s:5:\"start\";s:0:\"\";s:3:\"end\";s:0:\"\";}s:10:\"edit_topic\";s:1:\"1\";s:12:\"create_topic\";s:1:\"1\";s:17:\"redirect_question\";s:1:\"1\";s:13:\"upload_attach\";s:1:\"1\";s:11:\"publish_url\";s:1:\"1\";s:15:\"publish_article\";s:1:\"1\";s:15:\"publish_comment\";s:1:\"1\";}'),(8,1,0,'高级会员',500,1000,1,'a:11:{s:16:\"publish_question\";s:1:\"1\";s:21:\"publish_approval_time\";a:2:{s:5:\"start\";s:0:\"\";s:3:\"end\";s:0:\"\";}s:13:\"edit_question\";s:1:\"1\";s:10:\"edit_topic\";s:1:\"1\";s:12:\"create_topic\";s:1:\"1\";s:17:\"redirect_question\";s:1:\"1\";s:13:\"upload_attach\";s:1:\"1\";s:11:\"publish_url\";s:1:\"1\";s:15:\"publish_article\";s:1:\"1\";s:19:\"edit_question_topic\";s:1:\"1\";s:15:\"publish_comment\";s:1:\"1\";}'),(9,1,0,'核心会员',1000,999999,1,'a:12:{s:16:\"publish_question\";s:1:\"1\";s:21:\"publish_approval_time\";a:2:{s:5:\"start\";s:0:\"\";s:3:\"end\";s:0:\"\";}s:13:\"edit_question\";s:1:\"1\";s:10:\"edit_topic\";s:1:\"1\";s:12:\"manage_topic\";s:1:\"1\";s:12:\"create_topic\";s:1:\"1\";s:17:\"redirect_question\";s:1:\"1\";s:13:\"upload_attach\";s:1:\"1\";s:11:\"publish_url\";s:1:\"1\";s:15:\"publish_article\";s:1:\"1\";s:19:\"edit_question_topic\";s:1:\"1\";s:15:\"publish_comment\";s:1:\"1\";}'),(99,0,0,'游客',0,0,0,'a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}');
/*!40000 ALTER TABLE `aws_users_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_users_notification_setting`
--

DROP TABLE IF EXISTS `aws_users_notification_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_users_notification_setting` (
  `notice_setting_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `uid` int(11) NOT NULL,
  `data` text COMMENT '设置数据',
  PRIMARY KEY (`notice_setting_id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='通知设定';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_users_notification_setting`
--

LOCK TABLES `aws_users_notification_setting` WRITE;
/*!40000 ALTER TABLE `aws_users_notification_setting` DISABLE KEYS */;
INSERT INTO `aws_users_notification_setting` VALUES (1,2,'a:0:{}');
/*!40000 ALTER TABLE `aws_users_notification_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_users_online`
--

DROP TABLE IF EXISTS `aws_users_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_users_online` (
  `uid` int(11) NOT NULL COMMENT '用户 ID',
  `last_active` int(11) DEFAULT '0' COMMENT '上次活动时间',
  `ip` bigint(12) DEFAULT '0' COMMENT '客户端ip',
  `active_url` varchar(255) DEFAULT NULL COMMENT '停留页面',
  `user_agent` varchar(255) DEFAULT NULL COMMENT '用户客户端信息',
  KEY `uid` (`uid`),
  KEY `last_active` (`last_active`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='在线用户列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_users_online`
--

LOCK TABLES `aws_users_online` WRITE;
/*!40000 ALTER TABLE `aws_users_online` DISABLE KEYS */;
INSERT INTO `aws_users_online` VALUES (1,1416987079,2130706433,'http://ask.kitetea.com/','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0 FirePHP/0.7.4');
/*!40000 ALTER TABLE `aws_users_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_users_qq`
--

DROP TABLE IF EXISTS `aws_users_qq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_users_qq` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '用户在本地的UID',
  `type` varchar(20) DEFAULT NULL COMMENT '类别',
  `openid` varchar(128) DEFAULT '',
  `name` varchar(64) DEFAULT NULL COMMENT '微博昵称',
  `location` varchar(255) DEFAULT NULL COMMENT '地址',
  `gender` varchar(8) DEFAULT NULL,
  `add_time` int(10) DEFAULT NULL COMMENT '添加时间',
  `access_token` varchar(64) DEFAULT NULL,
  `oauth_token_secret` varchar(64) DEFAULT NULL,
  `nick` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`),
  KEY `add_time` (`add_time`),
  KEY `access_token` (`access_token`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_users_qq`
--

LOCK TABLES `aws_users_qq` WRITE;
/*!40000 ALTER TABLE `aws_users_qq` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_users_qq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_users_sina`
--

DROP TABLE IF EXISTS `aws_users_sina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_users_sina` (
  `id` bigint(11) NOT NULL COMMENT '新浪用户 ID',
  `uid` int(11) NOT NULL COMMENT '用户在本地的UID',
  `name` varchar(64) DEFAULT NULL COMMENT '微博昵称',
  `location` varchar(255) DEFAULT NULL COMMENT '地址',
  `description` text COMMENT '个人描述',
  `url` varchar(255) DEFAULT NULL COMMENT '用户博客地址',
  `profile_image_url` varchar(255) DEFAULT NULL COMMENT 'Sina 自定义头像地址',
  `gender` varchar(8) DEFAULT NULL,
  `add_time` int(10) DEFAULT NULL COMMENT '添加时间',
  `expires_time` int(10) DEFAULT '0' COMMENT '过期时间',
  `access_token` varchar(64) DEFAULT NULL,
  `last_msg_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`),
  KEY `access_token` (`access_token`),
  KEY `last_msg_id` (`last_msg_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_users_sina`
--

LOCK TABLES `aws_users_sina` WRITE;
/*!40000 ALTER TABLE `aws_users_sina` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_users_sina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_users_twitter`
--

DROP TABLE IF EXISTS `aws_users_twitter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_users_twitter` (
  `id` bigint(20) unsigned NOT NULL,
  `uid` int(11) unsigned NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `screen_name` varchar(128) DEFAULT NULL,
  `location` varchar(64) DEFAULT NULL,
  `time_zone` varchar(64) DEFAULT NULL,
  `lang` varchar(16) DEFAULT NULL,
  `profile_image_url` varchar(255) DEFAULT NULL,
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `access_token` varchar(255) NOT NULL DEFAULT 'a:2:{s:11:"oauth_token";s:0:"";s:18:"oauth_token_secret";s:0:"";}',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`),
  KEY `access_token` (`access_token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_users_twitter`
--

LOCK TABLES `aws_users_twitter` WRITE;
/*!40000 ALTER TABLE `aws_users_twitter` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_users_twitter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_users_ucenter`
--

DROP TABLE IF EXISTS `aws_users_ucenter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_users_ucenter` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `uc_uid` int(11) DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `uc_uid` (`uc_uid`),
  KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_users_ucenter`
--

LOCK TABLES `aws_users_ucenter` WRITE;
/*!40000 ALTER TABLE `aws_users_ucenter` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_users_ucenter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_users_weixin`
--

DROP TABLE IF EXISTS `aws_users_weixin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_users_weixin` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `openid` varchar(255) NOT NULL,
  `expires_in` int(10) DEFAULT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `refresh_token` varchar(255) DEFAULT NULL,
  `scope` varchar(64) DEFAULT NULL,
  `headimgurl` varchar(255) DEFAULT NULL,
  `nickname` varchar(64) DEFAULT NULL,
  `sex` tinyint(1) DEFAULT '0',
  `province` varchar(32) DEFAULT NULL,
  `city` varchar(32) DEFAULT NULL,
  `country` varchar(32) DEFAULT NULL,
  `add_time` int(10) NOT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `location_update` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`),
  KEY `openid` (`openid`),
  KEY `expires_in` (`expires_in`),
  KEY `scope` (`scope`),
  KEY `sex` (`sex`),
  KEY `province` (`province`),
  KEY `city` (`city`),
  KEY `country` (`country`),
  KEY `add_time` (`add_time`),
  KEY `latitude` (`latitude`,`longitude`),
  KEY `location_update` (`location_update`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_users_weixin`
--

LOCK TABLES `aws_users_weixin` WRITE;
/*!40000 ALTER TABLE `aws_users_weixin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_users_weixin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_verify_apply`
--

DROP TABLE IF EXISTS `aws_verify_apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_verify_apply` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `attach` varchar(255) DEFAULT NULL,
  `time` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `data` text,
  `status` tinyint(1) DEFAULT '0',
  `type` varchar(16) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `time` (`time`),
  KEY `name` (`name`,`status`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_verify_apply`
--

LOCK TABLES `aws_verify_apply` WRITE;
/*!40000 ALTER TABLE `aws_verify_apply` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_verify_apply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_weibo_msg`
--

DROP TABLE IF EXISTS `aws_weibo_msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_weibo_msg` (
  `id` bigint(20) NOT NULL,
  `created_at` int(10) NOT NULL,
  `msg_author_uid` bigint(20) NOT NULL,
  `text` varchar(255) NOT NULL,
  `access_key` varchar(32) NOT NULL,
  `has_attach` tinyint(1) NOT NULL DEFAULT '0',
  `uid` int(10) NOT NULL,
  `weibo_uid` bigint(20) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_at` (`created_at`),
  KEY `uid` (`uid`),
  KEY `weibo_uid` (`weibo_uid`),
  KEY `question_id` (`question_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='新浪微博消息列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_weibo_msg`
--

LOCK TABLES `aws_weibo_msg` WRITE;
/*!40000 ALTER TABLE `aws_weibo_msg` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_weibo_msg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_weixin_accounts`
--

DROP TABLE IF EXISTS `aws_weixin_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_weixin_accounts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weixin_mp_token` varchar(255) NOT NULL,
  `weixin_account_role` varchar(20) DEFAULT 'base',
  `weixin_app_id` varchar(255) DEFAULT '',
  `weixin_app_secret` varchar(255) DEFAULT '',
  `weixin_mp_menu` text,
  `weixin_subscribe_message_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `weixin_no_result_message_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `weixin_encoding_aes_key` varchar(43) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `weixin_mp_token` (`weixin_mp_token`),
  KEY `weixin_account_role` (`weixin_account_role`),
  KEY `weixin_app_id` (`weixin_app_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信多账号设置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_weixin_accounts`
--

LOCK TABLES `aws_weixin_accounts` WRITE;
/*!40000 ALTER TABLE `aws_weixin_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_weixin_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_weixin_login`
--

DROP TABLE IF EXISTS `aws_weixin_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_weixin_login` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `session_id` varchar(32) NOT NULL,
  `expire` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  KEY `token` (`token`),
  KEY `expire` (`expire`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_weixin_login`
--

LOCK TABLES `aws_weixin_login` WRITE;
/*!40000 ALTER TABLE `aws_weixin_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_weixin_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_weixin_message`
--

DROP TABLE IF EXISTS `aws_weixin_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_weixin_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weixin_id` varchar(32) NOT NULL,
  `content` varchar(255) NOT NULL,
  `action` text,
  `time` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `weixin_id` (`weixin_id`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_weixin_message`
--

LOCK TABLES `aws_weixin_message` WRITE;
/*!40000 ALTER TABLE `aws_weixin_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_weixin_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_weixin_msg`
--

DROP TABLE IF EXISTS `aws_weixin_msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_weixin_msg` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `msg_id` bigint(20) NOT NULL,
  `group_name` varchar(255) NOT NULL DEFAULT '未分组',
  `status` varchar(15) NOT NULL DEFAULT 'unsent',
  `error_num` int(10) DEFAULT NULL,
  `main_msg` text,
  `articles_info` text,
  `questions_info` text,
  `create_time` int(10) NOT NULL,
  `filter_count` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `msg_id` (`msg_id`),
  KEY `group_name` (`group_name`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信群发列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_weixin_msg`
--

LOCK TABLES `aws_weixin_msg` WRITE;
/*!40000 ALTER TABLE `aws_weixin_msg` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_weixin_msg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_weixin_qr_code`
--

DROP TABLE IF EXISTS `aws_weixin_qr_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_weixin_qr_code` (
  `scene_id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `ticket` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `subscribe_num` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`scene_id`),
  KEY `ticket` (`ticket`),
  KEY `subscribe_num` (`subscribe_num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信二维码';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_weixin_qr_code`
--

LOCK TABLES `aws_weixin_qr_code` WRITE;
/*!40000 ALTER TABLE `aws_weixin_qr_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_weixin_qr_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_weixin_reply_rule`
--

DROP TABLE IF EXISTS `aws_weixin_reply_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_weixin_reply_rule` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `account_id` int(10) NOT NULL DEFAULT '0',
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image_file` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '0',
  `sort_status` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`),
  KEY `keyword` (`keyword`),
  KEY `enabled` (`enabled`),
  KEY `sort_status` (`sort_status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_weixin_reply_rule`
--

LOCK TABLES `aws_weixin_reply_rule` WRITE;
/*!40000 ALTER TABLE `aws_weixin_reply_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_weixin_reply_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_weixin_third_party_api`
--

DROP TABLE IF EXISTS `aws_weixin_third_party_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_weixin_third_party_api` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `account_id` int(10) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `rank` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`),
  KEY `enabled` (`enabled`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信第三方接入';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_weixin_third_party_api`
--

LOCK TABLES `aws_weixin_third_party_api` WRITE;
/*!40000 ALTER TABLE `aws_weixin_third_party_api` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_weixin_third_party_api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_work_experience`
--

DROP TABLE IF EXISTS `aws_work_experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_work_experience` (
  `work_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `start_year` int(11) DEFAULT NULL COMMENT '开始年份',
  `end_year` int(11) DEFAULT NULL COMMENT '结束年月',
  `company_name` varchar(64) DEFAULT NULL COMMENT '公司名',
  `job_id` int(11) DEFAULT NULL COMMENT '职位ID',
  `add_time` int(10) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`work_id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='工作经历';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_work_experience`
--

LOCK TABLES `aws_work_experience` WRITE;
/*!40000 ALTER TABLE `aws_work_experience` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_work_experience` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-26 15:31:42
