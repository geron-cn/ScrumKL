-- MySQL dump 10.13  Distrib 5.1.48, for Win32 (ia32)
--
-- Host: 10.253.171.15    Database: redmine
-- ------------------------------------------------------
-- Server version	5.1.48-community

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
-- Table structure for table `actions`
--

DROP TABLE IF EXISTS `actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actions`
--

LOCK TABLES `actions` WRITE;
/*!40000 ALTER TABLE `actions` DISABLE KEYS */;
INSERT INTO `actions` VALUES (1,2,'审查需求文档',NULL,1),(2,2,'测试需求',NULL,2),(3,2,'确定合格标准',NULL,3),(4,3,'定义需求开发过程','<p>背景：你的组织分析需求、获取需求、编写规格说明和验证需求的步骤</p>\n<p>任务：将你的组织如何分析需求、获取需求、编写规格说明和验证需求的步骤写成文档</p>\n<p>产品：需求开发过程文档</p>\n',1),(5,3,'定义项目前景或范围',NULL,2),(6,3,'确定用例','<p>背景： 与用户代表沟通，了解他们需要使用软件来完成的任务（即用例）</p>\n<p>任务：完成用例文档</p>\n<p>产品：用例文档</p>\n',3),(7,3,'确定用户群','<p>背景：不同的用户在很多方面存在着差异，例如：使用产品的频率、使用的产品功能等</p>\n<p>任务：将产品的用户分成组，以避免出现某一用户群的需求被忽略的情况&nbsp;</p>\n<p>产品：产品用户群</p>\n',4),(8,3,'选择用户代言人','<p>背景：用户代言人能提供某一类用户的需求，并代表他们作出决策</p>\n<p>任务：为每类用户选择至少一位能够准确反映其需求的代言人</p>\n',5),(9,3,'建立核心队伍','<p>背景：产品早期版本或同类产品的用户代表</p>\n<p>任务：收集他们对正在开发的产品的功能和质量特性的意见</p>\n<p>产品：典型用户的中心小组意见</p>\n',6),(10,3,'召开需求获取讨论会',NULL,7),(11,3,'完善需求','<p>背景：客户提出的问题及补充的需求</p>\n<p>任务：指出在新产品或者新版本中应该添加哪些新功能</p>\n<p>产品：完美后的需求</p>\n',8),(12,5,'绘制关联图','<p>\n	背景：关联图是显示它如何适应环境的分析模型，定义了系统与外部实体的界线与接口</p>\n<p>\n	任务：1.明确外部实体有哪些</p>\n<p>\n	&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; 2.明确如何与外部实体交互</p>\n<p>\n	&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; 3.完成关联图</p>\n<p>\n	产品：系统关联图</p>\n',1),(13,5,'分析可行性','<p>\n	背景：已经获取到的需求</p>\n<p>\n	任务：根据当前允许的成本、性能、风险与技术等多个条件对每项需求进行可行性分析</p>\n<p>\n	产品：可行性分析报告</p>\n',2),(14,5,'确定优先级','<p>\n	背景：已经获取到的需求</p>\n<p>\n	任务：采用分析方法确定产品功能、用例的相对实现优先级，将其划分到不同的版本号中进行实现</p>\n<p>\n	产品：反应到用例文档每个用例的优先级对应处</p>\n',3),(15,5,'需求建模','<p>\n	背景：已经获取到的用例需求</p>\n<p>\n	任务：用UML统一建模语言对获取到的需求进行建模，包括类图、活动图等，也还可以包括数据流程图等</p>\n<p>\n	产品：模型文档</p>\n',4),(16,5,'创建数据字典','<p>\n	背景：数据字典中包括系统用到的所有数据项和结构图的定义</p>\n<p>\n	任务：针对项目的需求，定义出问题领域中的数据项</p>\n<p>\n	产品：数据字典</p>\n',5),(17,5,'将需求分配至各个子系统',NULL,6),(18,5,'应用质量功能调度',NULL,7),(19,6,'制定SRS模板','<p>背景：SRS模板即Software Requirements Specifications；采用SRS模板可以很好地将需求组织到一起形成一个整体，提供一个统一的结构</p>\n<p>任务：根据书本查找或网上搜寻制定SRS文档</p>\n<p>产品：SRS模板</p>\n',1),(20,6,'确定需求来源','<p>\n	背景：1.已经获取到的需求</p>\n<p>\n	&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; 2.需求说明规则书不仅是供开发方使用，也需要提供给涉众，所以确定需求的来源能保证需求的可溯源性</p>\n<p>\n	任务：为需求确定来源</p>\n<p>\n	产品：在SRS文档中标识出需求的来源</p>\n',2),(21,6,'为需求分配唯一标号','<p>\n	背景：唯一的标号可以使得需求得到统一，同时有利于对需求的增加、删除和修改，保证需求可被跟踪，其变更可被记录</p>\n<p>\n	任务：为需求定义唯一的标号</p>\n<p>\n	产品：完整的标号原则</p>\n',3),(22,6,'记录业务规则','<p>\n	背景：业务规则通常超出特定项目的范围，它们引出实施它们的功能需求</p>\n<p>\n	任务：1.理出业务规则</p>\n<p>\n	&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; 2.定义需求和对应业务规则的跟踪链</p>\n<p>\n	产品：业务规则文档</p>\n',4),(23,6,'定义质量属性','<p>\n	背景：质量属性作为功能需求外的非功能需求包括性能、效率、可靠性等</p>\n<p>\n	任务：为系统定义质量属性</p>\n<p>\n	产品：在SRS文档中反映质量属性</p>\n',5),(24,7,'SVN自我培训','<p>1.背景 SVN是开展项目的基本工具，每个成员通过自学SVN，并掌握SVN基本技巧。</p>\n<p>2.任务 （1）创建目录 （2）创建文件 （3）变更 （4）对比变更 （5）使用统计，查看自己的工作量 （6）作为项目经理，设置log，禁止上传的目录或文件</p>\n<p>3.产品 （1）在本阶段完成之后，统计每个人工作量并写出文档，然后把文档提交到版本库里。</p>\n',1);
/*!40000 ALTER TABLE `actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL,
  `description` text,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
INSERT INTO `activities` VALUES (1,'项目总结和验收',1,NULL,1),(2,'需求验证',1,NULL,2),(3,'需求获取',1,NULL,3),(4,'需求管理',1,NULL,4),(5,'需求分析',1,NULL,5),(6,'编写规格说明书',1,NULL,6),(7,'启动和准备',1,NULL,7),(8,'Sprint 1',1,NULL,8);
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachments`
--

DROP TABLE IF EXISTS `attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `container_id` int(11) NOT NULL DEFAULT '0',
  `container_type` varchar(30) NOT NULL DEFAULT '',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `disk_filename` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `content_type` varchar(255) DEFAULT '',
  `digest` varchar(40) NOT NULL DEFAULT '',
  `downloads` int(11) NOT NULL DEFAULT '0',
  `author_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_attachments_on_container_id_and_container_type` (`container_id`,`container_type`),
  KEY `index_attachments_on_author_id` (`author_id`),
  KEY `index_attachments_on_created_on` (`created_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachments`
--

LOCK TABLES `attachments` WRITE;
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_sources`
--

DROP TABLE IF EXISTS `auth_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `host` varchar(60) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `account_password` varchar(255) DEFAULT '',
  `base_dn` varchar(255) DEFAULT NULL,
  `attr_login` varchar(30) DEFAULT NULL,
  `attr_firstname` varchar(30) DEFAULT NULL,
  `attr_lastname` varchar(30) DEFAULT NULL,
  `attr_mail` varchar(30) DEFAULT NULL,
  `onthefly_register` tinyint(1) NOT NULL DEFAULT '0',
  `tls` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_auth_sources_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_sources`
--

LOCK TABLES `auth_sources` WRITE;
/*!40000 ALTER TABLE `auth_sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boards`
--

DROP TABLE IF EXISTS `boards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT '1',
  `topics_count` int(11) NOT NULL DEFAULT '0',
  `messages_count` int(11) NOT NULL DEFAULT '0',
  `last_message_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `boards_project_id` (`project_id`),
  KEY `index_boards_on_last_message_id` (`last_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boards`
--

LOCK TABLES `boards` WRITE;
/*!40000 ALTER TABLE `boards` DISABLE KEYS */;
/*!40000 ALTER TABLE `boards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changes`
--

DROP TABLE IF EXISTS `changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `changeset_id` int(11) NOT NULL,
  `action` varchar(1) NOT NULL DEFAULT '',
  `path` text NOT NULL,
  `from_path` text,
  `from_revision` varchar(255) DEFAULT NULL,
  `revision` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `changesets_changeset_id` (`changeset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changes`
--

LOCK TABLES `changes` WRITE;
/*!40000 ALTER TABLE `changes` DISABLE KEYS */;
/*!40000 ALTER TABLE `changes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changesets`
--

DROP TABLE IF EXISTS `changesets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changesets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `repository_id` int(11) NOT NULL,
  `revision` varchar(255) NOT NULL,
  `committer` varchar(255) DEFAULT NULL,
  `committed_on` datetime NOT NULL,
  `comments` text,
  `commit_date` date DEFAULT NULL,
  `scmid` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `changesets_repos_rev` (`repository_id`,`revision`),
  KEY `index_changesets_on_user_id` (`user_id`),
  KEY `index_changesets_on_repository_id` (`repository_id`),
  KEY `index_changesets_on_committed_on` (`committed_on`),
  KEY `changesets_repos_scmid` (`repository_id`,`scmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changesets`
--

LOCK TABLES `changesets` WRITE;
/*!40000 ALTER TABLE `changesets` DISABLE KEYS */;
/*!40000 ALTER TABLE `changesets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changesets_issues`
--

DROP TABLE IF EXISTS `changesets_issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changesets_issues` (
  `changeset_id` int(11) NOT NULL,
  `issue_id` int(11) NOT NULL,
  UNIQUE KEY `changesets_issues_ids` (`changeset_id`,`issue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changesets_issues`
--

LOCK TABLES `changesets_issues` WRITE;
/*!40000 ALTER TABLE `changesets_issues` DISABLE KEYS */;
/*!40000 ALTER TABLE `changesets_issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commented_type` varchar(30) NOT NULL DEFAULT '',
  `commented_id` int(11) NOT NULL DEFAULT '0',
  `author_id` int(11) NOT NULL DEFAULT '0',
  `comments` text,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_comments_on_commented_id_and_commented_type` (`commented_id`,`commented_type`),
  KEY `index_comments_on_author_id` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `field_format` varchar(30) NOT NULL DEFAULT '',
  `possible_values` text,
  `regexp` varchar(255) DEFAULT '',
  `min_length` int(11) NOT NULL DEFAULT '0',
  `max_length` int(11) NOT NULL DEFAULT '0',
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `is_for_all` tinyint(1) NOT NULL DEFAULT '0',
  `is_filter` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) DEFAULT '1',
  `searchable` tinyint(1) DEFAULT '0',
  `default_value` text,
  `editable` tinyint(1) DEFAULT '1',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_custom_fields_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_projects`
--

DROP TABLE IF EXISTS `custom_fields_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields_projects` (
  `custom_field_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  KEY `index_custom_fields_projects_on_custom_field_id_and_project_id` (`custom_field_id`,`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_projects`
--

LOCK TABLES `custom_fields_projects` WRITE;
/*!40000 ALTER TABLE `custom_fields_projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_trackers`
--

DROP TABLE IF EXISTS `custom_fields_trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields_trackers` (
  `custom_field_id` int(11) NOT NULL DEFAULT '0',
  `tracker_id` int(11) NOT NULL DEFAULT '0',
  KEY `index_custom_fields_trackers_on_custom_field_id_and_tracker_id` (`custom_field_id`,`tracker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_trackers`
--

LOCK TABLES `custom_fields_trackers` WRITE;
/*!40000 ALTER TABLE `custom_fields_trackers` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields_trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_values`
--

DROP TABLE IF EXISTS `custom_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customized_type` varchar(30) NOT NULL DEFAULT '',
  `customized_id` int(11) NOT NULL DEFAULT '0',
  `custom_field_id` int(11) NOT NULL DEFAULT '0',
  `value` text,
  PRIMARY KEY (`id`),
  KEY `custom_values_customized` (`customized_type`,`customized_id`),
  KEY `index_custom_values_on_custom_field_id` (`custom_field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_values`
--

LOCK TABLES `custom_values` WRITE;
/*!40000 ALTER TABLE `custom_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diagrams`
--

DROP TABLE IF EXISTS `diagrams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diagrams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `user_story_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagrams`
--

LOCK TABLES `diagrams` WRITE;
/*!40000 ALTER TABLE `diagrams` DISABLE KEYS */;
/*!40000 ALTER TABLE `diagrams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentations`
--

DROP TABLE IF EXISTS `documentations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documentations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentations`
--

LOCK TABLES `documentations` WRITE;
/*!40000 ALTER TABLE `documentations` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(60) NOT NULL DEFAULT '',
  `description` text,
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_project_id` (`project_id`),
  KEY `index_documents_on_category_id` (`category_id`),
  KEY `index_documents_on_created_on` (`created_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enabled_modules`
--

DROP TABLE IF EXISTS `enabled_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enabled_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `enabled_modules_project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enabled_modules`
--

LOCK TABLES `enabled_modules` WRITE;
/*!40000 ALTER TABLE `enabled_modules` DISABLE KEYS */;
INSERT INTO `enabled_modules` VALUES (1,1,'issue_tracking'),(2,1,'time_tracking'),(3,1,'news'),(4,1,'documents'),(5,1,'files'),(6,1,'wiki'),(7,1,'repository'),(8,1,'boards'),(9,1,'calendar'),(10,1,'gantt'),(11,1,'scrumkl'),(12,1,'process_frameworks'),(13,1,'sprints'),(14,2,'issue_tracking'),(15,2,'time_tracking'),(16,2,'news'),(17,2,'documents'),(18,2,'files'),(19,2,'wiki'),(20,2,'repository'),(21,2,'boards'),(22,2,'calendar'),(23,2,'gantt'),(24,2,'scrumkl'),(25,2,'sprints'),(26,3,'issue_tracking'),(27,3,'time_tracking'),(28,3,'news'),(29,3,'documents'),(30,3,'files'),(31,3,'wiki'),(32,3,'repository'),(33,3,'boards'),(34,3,'calendar'),(35,3,'gantt'),(36,3,'scrumkl'),(37,3,'sprints'),(38,4,'issue_tracking'),(39,4,'time_tracking'),(40,4,'news'),(41,4,'documents'),(42,4,'files'),(43,4,'wiki'),(44,4,'repository'),(45,4,'boards'),(46,4,'calendar'),(47,4,'gantt'),(48,4,'scrumkl');
/*!40000 ALTER TABLE `enabled_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enumerations`
--

DROP TABLE IF EXISTS `enumerations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enumerations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `position` int(11) DEFAULT '1',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `project_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_enumerations_on_project_id` (`project_id`),
  KEY `index_enumerations_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enumerations`
--

LOCK TABLES `enumerations` WRITE;
/*!40000 ALTER TABLE `enumerations` DISABLE KEYS */;
INSERT INTO `enumerations` VALUES (1,'用户文档',1,0,'DocumentCategory',1,NULL,NULL),(2,'技术文档',2,0,'DocumentCategory',1,NULL,NULL),(3,'低',1,0,'IssuePriority',1,NULL,NULL),(4,'普通',2,1,'IssuePriority',1,NULL,NULL),(5,'高',3,0,'IssuePriority',1,NULL,NULL),(6,'紧急',4,0,'IssuePriority',1,NULL,NULL),(7,'立刻',5,0,'IssuePriority',1,NULL,NULL),(8,'设计',1,0,'TimeEntryActivity',1,NULL,NULL),(9,'开发',2,0,'TimeEntryActivity',1,NULL,NULL);
/*!40000 ALTER TABLE `enumerations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_users`
--

DROP TABLE IF EXISTS `groups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups_users` (
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  UNIQUE KEY `groups_users_ids` (`group_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_users`
--

LOCK TABLES `groups_users` WRITE;
/*!40000 ALTER TABLE `groups_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_categories`
--

DROP TABLE IF EXISTS `issue_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `assigned_to_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `issue_categories_project_id` (`project_id`),
  KEY `index_issue_categories_on_assigned_to_id` (`assigned_to_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_categories`
--

LOCK TABLES `issue_categories` WRITE;
/*!40000 ALTER TABLE `issue_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `issue_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_relations`
--

DROP TABLE IF EXISTS `issue_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issue_from_id` int(11) NOT NULL,
  `issue_to_id` int(11) NOT NULL,
  `relation_type` varchar(255) NOT NULL DEFAULT '',
  `delay` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_issue_relations_on_issue_from_id` (`issue_from_id`),
  KEY `index_issue_relations_on_issue_to_id` (`issue_to_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_relations`
--

LOCK TABLES `issue_relations` WRITE;
/*!40000 ALTER TABLE `issue_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `issue_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_statuses`
--

DROP TABLE IF EXISTS `issue_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `is_closed` tinyint(1) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) DEFAULT '1',
  `default_done_ratio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_issue_statuses_on_position` (`position`),
  KEY `index_issue_statuses_on_is_closed` (`is_closed`),
  KEY `index_issue_statuses_on_is_default` (`is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_statuses`
--

LOCK TABLES `issue_statuses` WRITE;
/*!40000 ALTER TABLE `issue_statuses` DISABLE KEYS */;
INSERT INTO `issue_statuses` VALUES (1,'新建',0,1,1,NULL),(2,'进行中',0,0,2,NULL),(3,'已解决',0,0,3,NULL),(4,'反馈',0,0,4,NULL),(5,'已关闭',1,0,5,NULL),(6,'已拒绝',1,0,6,NULL);
/*!40000 ALTER TABLE `issue_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issues`
--

DROP TABLE IF EXISTS `issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `due_date` date DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT '0',
  `assigned_to_id` int(11) DEFAULT NULL,
  `priority_id` int(11) NOT NULL DEFAULT '0',
  `fixed_version_id` int(11) DEFAULT NULL,
  `author_id` int(11) NOT NULL DEFAULT '0',
  `lock_version` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `done_ratio` int(11) NOT NULL DEFAULT '0',
  `estimated_hours` float DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `root_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `if_pf` tinyint(1) NOT NULL DEFAULT '0',
  `user_story_id` int(11) DEFAULT NULL,
  `redirect_to` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `issues_project_id` (`project_id`),
  KEY `index_issues_on_status_id` (`status_id`),
  KEY `index_issues_on_category_id` (`category_id`),
  KEY `index_issues_on_assigned_to_id` (`assigned_to_id`),
  KEY `index_issues_on_fixed_version_id` (`fixed_version_id`),
  KEY `index_issues_on_tracker_id` (`tracker_id`),
  KEY `index_issues_on_priority_id` (`priority_id`),
  KEY `index_issues_on_author_id` (`author_id`),
  KEY `index_issues_on_created_on` (`created_on`),
  KEY `index_issues_on_root_id_and_lft_and_rgt` (`root_id`,`lft`,`rgt`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issues`
--

LOCK TABLES `issues` WRITE;
/*!40000 ALTER TABLE `issues` DISABLE KEYS */;
INSERT INTO `issues` VALUES (1,3,1,'审查需求文档',NULL,NULL,NULL,1,NULL,4,37,1,0,'2012-01-10 21:16:57','2012-01-10 21:16:57',NULL,0,NULL,NULL,1,1,2,0,1,NULL,NULL),(2,3,1,'测试需求',NULL,NULL,NULL,1,NULL,4,37,1,0,'2012-01-10 21:16:58','2012-01-10 21:16:58',NULL,0,NULL,NULL,2,1,2,0,1,NULL,NULL),(3,3,1,'确定合格标准',NULL,NULL,NULL,1,NULL,4,37,1,0,'2012-01-10 21:16:58','2012-01-10 21:16:58',NULL,0,NULL,NULL,3,1,2,0,1,NULL,NULL),(4,3,1,'定义需求开发过程','<p>背景：你的组织分析需求、获取需求、编写规格说明和验证需求的步骤</p>\r\n<p>任务：将你的组织如何分析需求、获取需求、编写规格说明和验证需求的步骤写成文档</p>\r\n<p>产品：需求开发过程文档</p>\r\n',NULL,NULL,2,NULL,4,38,1,4,'2012-01-10 21:16:59','2012-01-12 12:45:42',NULL,60,NULL,NULL,4,1,4,0,1,NULL,NULL),(5,3,1,'定义项目前景或范围',NULL,NULL,NULL,1,NULL,4,38,1,0,'2012-01-10 21:16:59','2012-01-10 21:16:59',NULL,0,NULL,NULL,5,1,2,0,1,NULL,NULL),(6,3,1,'确定用例','<p>背景： 与用户代表沟通，了解他们需要使用软件来完成的任务（即用例）</p>\r\n<p>任务：完成用例文档</p>\r\n<p>产品：用例文档</p>\r\n',NULL,NULL,1,NULL,4,38,1,0,'2012-01-10 21:16:59','2012-01-10 21:16:59',NULL,0,NULL,NULL,6,1,2,0,1,NULL,NULL),(7,3,1,'确定用户群','<p>背景：不同的用户在很多方面存在着差异，例如：使用产品的频率、使用的产品功能等</p>\r\n<p>任务：将产品的用户分成组，以避免出现某一用户群的需求被忽略的情况&nbsp;</p>\r\n<p>产品：产品用户群</p>\r\n',NULL,NULL,1,NULL,4,38,1,0,'2012-01-10 21:17:00','2012-01-10 21:17:00',NULL,0,NULL,NULL,7,1,2,0,1,NULL,NULL),(8,3,1,'选择用户代言人','<p>背景：用户代言人能提供某一类用户的需求，并代表他们作出决策</p>\r\n<p>任务：为每类用户选择至少一位能够准确反映其需求的代言人</p>\r\n',NULL,NULL,1,NULL,4,38,1,0,'2012-01-10 21:17:00','2012-01-10 21:17:00',NULL,0,NULL,NULL,8,1,2,0,1,NULL,NULL),(9,3,1,'建立核心队伍','<p>背景：产品早期版本或同类产品的用户代表</p>\r\n<p>任务：收集他们对正在开发的产品的功能和质量特性的意见</p>\r\n<p>产品：典型用户的中心小组意见</p>\r\n',NULL,NULL,1,NULL,4,38,1,0,'2012-01-10 21:17:00','2012-01-10 21:17:00',NULL,0,NULL,NULL,9,1,2,0,1,NULL,NULL),(10,3,1,'召开需求获取讨论会',NULL,NULL,NULL,1,NULL,4,38,1,0,'2012-01-10 21:17:01','2012-01-10 21:17:01',NULL,0,NULL,NULL,10,1,2,0,1,NULL,NULL),(11,3,1,'完善需求','<p>背景：客户提出的问题及补充的需求</p>\r\n<p>任务：指出在新产品或者新版本中应该添加哪些新功能</p>\r\n<p>产品：完美后的需求</p>\r\n',NULL,NULL,1,NULL,4,38,1,0,'2012-01-10 21:17:01','2012-01-10 21:17:01',NULL,0,NULL,NULL,11,1,2,0,1,NULL,NULL),(12,3,1,'绘制关联图','<p>\r\n	背景：关联图是显示它如何适应环境的分析模型，定义了系统与外部实体的界线与接口</p>\r\n<p>\r\n	任务：1.明确外部实体有哪些</p>\r\n<p>\r\n	&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; 2.明确如何与外部实体交互</p>\r\n<p>\r\n	&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; 3.完成关联图</p>\r\n<p>++\r\n	产品：系统关联图</p>\r\n','2012-01-10',NULL,3,NULL,4,40,1,18,'2012-01-10 21:17:02','2012-01-12 12:43:32','2012-01-10',100,7,NULL,12,1,4,0,1,NULL,NULL),(13,3,1,'分析可行性','<p>\r\n	背景：已经获取到的需求</p>\r\n<p>\r\n	任务：根据当前允许的成本、性能、风险与技术等多个条件对每项需求进行可行性分析</p>\r\n<p>\r\n	产品：可行性分析报告</p>\r\n',NULL,NULL,1,NULL,3,40,1,1,'2012-01-10 21:17:02','2012-01-10 21:20:49',NULL,0,NULL,NULL,13,1,2,0,1,NULL,NULL),(14,3,1,'确定优先级','<p>\r\n	背景：已经获取到的需求</p>\r\n<p>\r\n	任务：采用分析方法确定产品功能、用例的相对实现优先级，将其划分到不同的版本号中进行实现</p>\r\n<p>\r\n	产品：反应到用例文档每个用例的优先级对应处</p>\r\n',NULL,NULL,1,NULL,4,40,1,11,'2012-01-10 21:17:02','2012-01-11 11:35:56','2012-01-02',57,38,NULL,14,1,8,0,1,NULL,NULL),(15,3,1,'需求建模','<p>\r\n	背景：已经获取到的用例需求</p>\r\n<p>\r\n	任务：用UML统一建模语言对获取到的需求进行建模，包括类图、活动图等，也还可以包括数据流程图等</p>\r\n<p>\r\n	产品：模型文档</p>\r\n',NULL,NULL,3,NULL,3,40,1,2,'2012-01-10 21:17:03','2012-01-12 12:43:51',NULL,0,NULL,NULL,15,1,2,0,1,NULL,NULL),(16,3,1,'创建数据字典','<p>\r\n	背景：数据字典中包括系统用到的所有数据项和结构图的定义</p>\r\n<p>\r\n	任务：针对项目的需求，定义出问题领域中的数据项</p>\r\n<p>\r\n	产品：数据字典</p>\r\n',NULL,NULL,1,NULL,6,40,1,1,'2012-01-10 21:17:03','2012-01-10 21:21:52',NULL,0,NULL,NULL,16,1,2,0,1,NULL,NULL),(18,3,1,'应用质量功能调度','','2012-01-11',NULL,2,NULL,5,40,1,3,'2012-01-10 21:17:04','2012-01-12 12:38:23','2012-01-10',0,12,NULL,18,1,2,0,1,NULL,NULL),(19,3,1,'制定SRS模板','<p>背景：SRS模板即Software Requirements Specifications；采用SRS模板可以很好地将需求组织到一起形成一个整体，提供一个统一的结构</p>\r\n<p>任务：根据书本查找或网上搜寻制定SRS文档</p>\r\n<p>产品：SRS模板</p>\r\n',NULL,NULL,1,NULL,4,41,1,0,'2012-01-10 21:17:04','2012-01-10 21:17:04',NULL,0,NULL,NULL,19,1,2,0,1,NULL,NULL),(20,3,1,'确定需求来源','<p>\r\n	背景：1.已经获取到的需求</p>\r\n<p>\r\n	&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; 2.需求说明规则书不仅是供开发方使用，也需要提供给涉众，所以确定需求的来源能保证需求的可溯源性</p>\r\n<p>\r\n	任务：为需求确定来源</p>\r\n<p>\r\n	产品：在SRS文档中标识出需求的来源</p>\r\n',NULL,NULL,1,NULL,4,41,1,0,'2012-01-10 21:17:04','2012-01-10 21:17:04',NULL,0,NULL,NULL,20,1,2,0,1,NULL,NULL),(21,3,1,'为需求分配唯一标号','<p>\r\n	背景：唯一的标号可以使得需求得到统一，同时有利于对需求的增加、删除和修改，保证需求可被跟踪，其变更可被记录</p>\r\n<p>\r\n	任务：为需求定义唯一的标号</p>\r\n<p>\r\n	产品：完整的标号原则</p>\r\n',NULL,NULL,1,NULL,4,41,1,0,'2012-01-10 21:17:05','2012-01-10 21:17:05',NULL,0,NULL,NULL,21,1,2,0,1,NULL,NULL),(22,3,1,'记录业务规则','<p>\r\n	背景：业务规则通常超出特定项目的范围，它们引出实施它们的功能需求</p>\r\n<p>\r\n	任务：1.理出业务规则</p>\r\n<p>\r\n	&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; 2.定义需求和对应业务规则的跟踪链</p>\r\n<p>\r\n	产品：业务规则文档</p>\r\n',NULL,NULL,1,NULL,4,41,1,0,'2012-01-10 21:17:05','2012-01-10 21:17:05',NULL,0,NULL,NULL,22,1,2,0,1,NULL,NULL),(23,3,1,'定义质量属性','<p>\r\n	背景：质量属性作为功能需求外的非功能需求包括性能、效率、可靠性等</p>\r\n<p>\r\n	任务：为系统定义质量属性</p>\r\n<p>\r\n	产品：在SRS文档中反映质量属性</p>\r\n',NULL,NULL,1,NULL,4,41,1,0,'2012-01-10 21:17:06','2012-01-10 21:17:06',NULL,0,NULL,NULL,23,1,2,0,1,NULL,NULL),(24,3,1,'SVN自我培训','<p>1.背景 SVN是开展项目的基本工具，每个成员通过自学SVN，并掌握SVN基本技巧。</p>\r\n<p>2.任务 （1）创建目录 （2）创建文件 （3）变更 （4）对比变更 （5）使用统计，查看自己的工作量 （6）作为项目经理，设置log，禁止上传的目录或文件</p>\r\n<p>3.产品 （1）在本阶段完成之后，统计每个人工作量并写出文档，然后把文档提交到版本库里。</p>\r\n',NULL,NULL,1,NULL,4,42,1,0,'2012-01-10 21:17:06','2012-01-10 21:17:06',NULL,0,NULL,NULL,24,1,2,0,1,NULL,NULL),(25,1,1,'绘制路线图','在当日完成','2012-01-10',NULL,3,1,4,40,1,22,'2012-01-10 21:30:39','2012-01-11 11:31:07','2012-01-10',100,7,12,12,2,3,0,0,NULL,NULL),(29,1,1,'Sprint管理','关联到redmine中的版本',NULL,NULL,1,NULL,4,36,1,13,'2012-01-10 21:55:57','2012-01-11 14:47:02',NULL,70,NULL,NULL,29,1,4,0,0,NULL,NULL),(30,1,1,'test','',NULL,NULL,4,NULL,4,36,1,6,'2012-01-10 21:56:27','2012-01-11 14:40:27',NULL,50,NULL,NULL,30,1,4,0,0,NULL,NULL),(31,1,1,'Sprint Backlog管理','能够product backlog中得到sprint backlog，能够进行添加','2012-01-03',NULL,1,NULL,4,45,1,34,'2012-01-10 21:57:14','2012-01-13 01:09:21','2011-12-26',80,80,NULL,31,1,16,0,0,NULL,NULL),(32,1,1,'task管理','将task关联到redmine中的子任务',NULL,NULL,5,NULL,4,36,1,2,'2012-01-10 21:57:59','2012-01-11 12:02:48',NULL,0,NULL,NULL,32,1,2,0,0,NULL,NULL),(33,1,1,'task领取','对于master分配的任务，team member能够自行领取任务','2012-01-06',NULL,1,NULL,4,45,1,9,'2012-01-10 21:59:01','2012-01-12 18:54:41','2012-01-04',40,4,NULL,33,1,8,0,0,NULL,NULL),(34,1,1,'task状态更新','能够对问题的进度进行更新，更新能够跳转到平台中的问题更新','2012-01-07',NULL,1,NULL,4,45,1,9,'2012-01-10 21:59:28','2012-01-12 15:15:28','2012-01-04',47,NULL,NULL,34,1,8,0,0,NULL,NULL),(35,1,1,'Sprint燃烧曲线','根据过滤条件生成迭代、个人、多人曲线，同时给出个性化提示','2012-01-09',NULL,3,NULL,4,NULL,1,14,'2012-01-10 21:59:55','2012-01-12 15:14:15','2012-01-01',23,NULL,NULL,35,1,24,0,0,NULL,NULL),(36,1,1,'额外工作','剩余的工作','2012-01-09',NULL,2,NULL,4,45,1,4,'2012-01-10 22:00:51','2012-01-12 12:46:02','2012-01-01',0,NULL,NULL,36,1,8,0,0,NULL,NULL),(37,1,1,'需求获取','获取项目需求',NULL,NULL,3,NULL,5,NULL,1,3,'2012-01-10 22:02:38','2012-01-12 20:33:23',NULL,0,NULL,NULL,37,1,2,0,0,NULL,NULL),(38,1,1,'需求获取','获取项目需求','2012-01-12',NULL,3,NULL,4,45,1,4,'2012-01-10 22:02:41','2012-01-12 14:56:08','2012-01-11',25,NULL,NULL,38,1,6,0,0,NULL,NULL),(39,1,1,'项目测试','对项目进行测试','2012-01-09',NULL,6,NULL,4,NULL,1,9,'2012-01-10 22:03:23','2012-01-12 15:15:25','2012-01-02',0,NULL,NULL,39,1,6,0,0,NULL,NULL),(40,1,1,'页面布局','对整体页面进行布局设计','2012-01-06',NULL,3,NULL,4,45,1,5,'2012-01-10 22:04:24','2012-01-12 12:41:43','2012-01-03',0,12,NULL,40,1,8,0,0,NULL,NULL),(41,1,1,'编写文档','编写项目所需的各种文档','2012-01-12',NULL,2,NULL,4,45,1,4,'2012-01-10 22:04:55','2012-01-12 13:43:07','2012-01-11',0,NULL,NULL,41,1,8,0,0,NULL,NULL),(42,1,1,'图表设计','对燃尽图、停车场等图表进行设计','2012-01-07',NULL,3,NULL,4,45,1,4,'2012-01-10 22:05:34','2012-01-12 12:59:01','2012-01-06',100,NULL,NULL,42,1,4,0,0,NULL,NULL),(43,1,1,'侧边栏设计','对侧边栏的设计','2012-01-10',NULL,3,NULL,4,45,1,4,'2012-01-10 22:06:14','2012-01-12 12:59:05','2012-01-09',100,NULL,NULL,43,1,4,0,0,NULL,NULL),(44,1,1,'backlog优先级排序','主要研究PM中优先级排序的代码',NULL,NULL,1,1,4,40,1,8,'2012-01-10 22:08:54','2012-01-11 11:49:36','2012-01-09',60,11,14,14,2,3,0,0,NULL,NULL),(45,1,1,'完成发布计划页面的显示','完成发布计划页面的显示',NULL,NULL,2,NULL,4,40,1,3,'2012-01-10 22:10:00','2012-01-11 11:34:08','2012-01-02',50,13,14,14,4,5,0,0,NULL,NULL),(46,1,1,'完成页面中数据中的过滤','完成页面中数据中的过滤',NULL,NULL,4,NULL,4,40,1,2,'2012-01-10 22:10:38','2012-01-11 11:36:37','2012-01-08',60,14,14,14,6,7,0,0,NULL,NULL),(47,2,2,'迭代1的第一个us','第一个us','2012-01-12',NULL,1,NULL,4,44,1,64,'2012-01-11 01:26:31','2012-01-12 11:04:02','2012-01-11',90,2,NULL,47,1,4,0,0,NULL,NULL),(48,1,2,'迭代1第二个us','第二个us','2012-01-12',NULL,1,NULL,4,44,1,34,'2012-01-11 01:47:01','2012-01-12 11:03:58','2012-01-11',90,2,NULL,48,1,4,0,0,NULL,NULL),(49,1,2,'迭代2第一个us','迭代2第一个us','2012-01-12',NULL,1,NULL,4,44,1,13,'2012-01-11 01:50:17','2012-01-11 21:11:35','2012-01-11',90,4,NULL,49,1,4,0,0,NULL,NULL),(50,1,2,'us1的第一个task','us1的第一个task','2012-01-12',NULL,2,1,4,43,1,35,'2012-01-11 01:51:26','2012-01-12 11:04:02','2012-01-11',90,2,47,47,2,3,0,0,NULL,NULL),(51,1,2,'PZH的任务','PZH的任务','2012-01-12',NULL,2,1,4,43,1,20,'2012-01-11 09:53:38','2012-01-12 11:03:58','2012-01-11',90,2,48,48,2,3,0,0,NULL,NULL),(52,1,1,'创建Scrum','',NULL,NULL,2,NULL,4,36,1,11,'2012-01-11 10:25:17','2012-01-11 14:47:01',NULL,70,NULL,29,29,2,3,0,0,NULL,NULL),(53,1,2,'PZH的任务2','PZH的任务2','2012-01-12',NULL,2,NULL,4,44,1,11,'2012-01-11 11:39:02','2012-01-11 21:05:59','2012-01-11',90,4,49,49,2,3,0,0,NULL,NULL),(56,2,1,'完成测试管理','作为用户我可以使用该系统完成项目的单元测试、集成测试','2012-02-08',NULL,3,NULL,4,NULL,1,1,'2012-01-11 16:04:20','2012-01-12 12:45:15','2012-01-12',0,21,NULL,56,1,2,0,0,NULL,NULL),(57,1,1,'支持backlog的导入导出','作为用户能够从excel表格中导入并集成backlog列表','2012-01-25',NULL,2,NULL,4,NULL,1,1,'2012-01-11 16:06:12','2012-01-12 12:37:48','2012-01-19',0,6,NULL,57,1,2,0,0,NULL,NULL),(58,2,1,'对backlog进行优先级排序','能够对backlog进行拖动或者按条件排序','2011-12-28',NULL,3,1,4,45,1,4,'2012-01-11 16:12:40','2012-01-12 12:57:34','2011-12-26',100,16,31,31,2,3,0,0,NULL,NULL),(59,1,1,'实现story分类','能够为story进行分类，包括用户故事、项目故事等','2011-12-30',NULL,2,1,4,45,1,6,'2012-01-11 16:15:06','2012-01-12 19:54:07','2011-12-29',70,12,31,31,4,5,0,0,NULL,NULL),(60,1,1,'实现story分类','对story进行分类，包括用户故事、项目故事','2011-12-30',NULL,2,3,4,45,1,8,'2012-01-11 16:17:30','2012-01-12 14:27:37','2011-12-29',60,16,31,31,6,7,0,0,NULL,NULL),(61,1,1,'完成主页的页面显示','实现主页的页面信息显示','2011-12-31',NULL,2,1,4,45,1,3,'2012-01-11 16:18:50','2012-01-12 19:54:20','2011-12-30',50,12,31,31,8,9,0,0,NULL,NULL),(62,1,1,'实现底层数据的封装','对redmine中的底层数据封装','2012-01-02',NULL,3,1,4,45,1,2,'2012-01-11 16:20:26','2012-01-12 14:27:33','2011-12-30',100,16,31,31,10,11,0,0,NULL,NULL),(63,1,1,'完成产品视图框架显示','实现产品视图页面的主要框架显示1111','2012-01-03',NULL,3,1,4,45,1,5,'2012-01-11 16:21:32','2012-01-13 03:22:48','2012-01-02',100,8,31,31,12,13,0,0,NULL,NULL),(64,2,1,'完成task领取','支持团队成员对task的领取','2012-01-04',NULL,2,3,4,45,1,2,'2012-01-11 16:26:07','2012-01-12 14:58:38','2012-01-04',30,4,33,33,2,3,0,0,NULL,NULL),(66,1,1,'完成迭代页面的显示','完成迭代页面的显示','2012-01-06',NULL,2,1,4,45,1,4,'2012-01-11 16:42:41','2012-01-12 18:54:41','2012-01-04',50,NULL,33,33,6,7,0,0,NULL,NULL),(67,1,1,'迭代页面中任务的优化','实现迭代页面中故事和任务的优化','2012-01-07',NULL,3,3,4,45,1,4,'2012-01-11 16:44:14','2012-01-12 14:58:43','2012-01-06',100,NULL,34,34,2,3,0,0,NULL,NULL),(68,1,1,'录入图表数据的事件中','将图表中的数据录入到事件中','2012-01-04',NULL,2,NULL,4,45,1,1,'2012-01-11 16:44:45','2012-01-12 13:38:37','2012-01-04',10,NULL,34,34,4,5,0,0,NULL,NULL),(69,1,1,'完成task进度的更新','完成task进度的更新','2012-01-06',NULL,4,NULL,4,45,1,2,'2012-01-11 16:45:10','2012-01-12 14:56:20','2012-01-06',30,NULL,34,34,6,7,0,0,NULL,NULL),(70,1,1,'图表数据提取和生成','通过提取数据库中的数据，生成需要的图表','2012-01-06',NULL,2,NULL,4,45,1,1,'2012-01-11 16:46:32','2012-01-12 13:38:20','2012-01-05',60,NULL,35,35,2,3,0,0,NULL,NULL),(71,1,1,'完成统计图的显示','完成统计图的显示','2012-01-06',NULL,2,NULL,4,45,1,1,'2012-01-11 16:46:59','2012-01-12 13:38:42','2012-01-06',50,NULL,35,35,4,5,0,0,NULL,NULL),(72,1,1,'完成数据图表的底层封装','完成数据图表的底层封装','2012-01-05',NULL,2,NULL,4,45,1,1,'2012-01-11 16:47:44','2012-01-12 14:27:21','2012-01-05',30,NULL,35,35,6,7,0,0,NULL,NULL),(73,1,1,'实现图表的显示','完成图表统计中各种图表的显示','2012-01-07',NULL,4,NULL,4,45,1,2,'2012-01-11 16:48:19','2012-01-12 14:56:40','2012-01-06',20,NULL,35,35,8,9,0,0,NULL,NULL),(74,1,1,'创建原型','为项目建立原型，为后续工作提供参考','2012-01-01',NULL,2,NULL,4,45,1,1,'2012-01-11 16:48:49','2012-01-12 14:56:24','2012-01-01',70,NULL,35,35,10,11,0,0,NULL,NULL),(75,1,1,'查找绘图插件','查找一个绘图插件，能够为我们项目图形的绘制提供参考','2012-01-05',NULL,1,NULL,4,45,1,0,'2012-01-11 16:49:32','2012-01-11 16:49:32','2012-01-05',0,NULL,35,35,12,13,0,0,NULL,NULL),(76,1,1,'完成燃烧图的显示','完成燃烧图的显示','2012-01-08',NULL,1,NULL,4,45,1,0,'2012-01-11 16:50:02','2012-01-11 16:50:02','2012-01-07',0,NULL,35,35,14,15,0,0,NULL,NULL),(78,1,1,'图表分析','分析图表数据如何采集、如何实现图表绘制，并提交文档','2012-01-07',NULL,1,NULL,4,45,1,0,'2012-01-11 16:51:12','2012-01-11 16:51:12','2012-01-07',0,NULL,35,35,18,19,0,0,NULL,NULL),(79,1,1,'主页面介绍部分','依据界面设计图纸完成主页面介绍版块的显示','2012-01-09',NULL,1,NULL,4,45,1,0,'2012-01-11 16:52:06','2012-01-11 16:52:06','2012-01-09',0,NULL,35,35,20,21,0,0,NULL,NULL),(80,1,1,'分析 Scrum 燃尽图数据采集','针对 redmine 分析 Scrum 燃尽图数据采集','2012-01-07',NULL,1,NULL,4,45,1,0,'2012-01-11 16:52:31','2012-01-11 16:52:31','2012-01-07',0,NULL,35,35,22,23,0,0,NULL,NULL),(81,1,1,'页面细节优化','对于页面中不足的地方进行优化处理','2012-01-09',NULL,1,NULL,4,45,1,0,'2012-01-11 16:53:17','2012-01-11 16:53:17','2012-01-08',0,NULL,36,36,2,3,0,0,NULL,NULL),(82,1,1,'对系统进行测试','对系统进行测试，并记录相关问题','2012-01-09',NULL,1,NULL,4,45,1,0,'2012-01-11 16:53:43','2012-01-11 16:53:43','2012-01-09',0,NULL,36,36,4,5,0,0,NULL,NULL),(83,1,1,'准备项目展示PPT','完成项目展示ppt中的产品优势部分','2012-01-12',NULL,2,NULL,4,45,1,1,'2012-01-11 17:32:15','2012-01-12 14:56:08','2012-01-11',50,NULL,38,38,2,3,0,0,NULL,NULL),(84,1,1,'完成项目演示ppt的制作','完成项目演示PPT制作的显示','2012-01-12',NULL,1,NULL,4,45,1,0,'2012-01-11 17:32:44','2012-01-11 17:32:44','2012-01-11',0,NULL,38,38,4,5,0,0,NULL,NULL),(85,1,1,'完成页面细节的优化','对于页面中不足的地方进行优化处理','2012-01-09',NULL,1,NULL,4,45,1,0,'2012-01-11 17:33:14','2012-01-11 17:33:14','2012-01-08',0,NULL,39,39,2,3,0,0,NULL,NULL),(86,1,1,'服务器平台搭建','在服务器上搭建实验开发的平台','2012-01-01',NULL,1,NULL,4,45,1,0,'2012-01-11 17:33:52','2012-01-11 17:33:52','2012-01-01',0,NULL,36,36,6,7,0,0,NULL,NULL),(87,1,1,'设计测试的具体方案','设计一种比较合理方便的测试方案(TDD的形式)','2012-01-03',NULL,1,NULL,4,45,1,0,'2012-01-11 17:34:41','2012-01-11 17:34:41','2012-01-02',0,NULL,39,39,4,5,0,0,NULL,NULL),(88,1,1,'界面模块划分','对界面设计的技术模块进行划分','2012-01-05',NULL,1,NULL,4,45,1,0,'2012-01-11 17:35:16','2012-01-11 17:35:16','2012-01-04',0,NULL,40,40,2,3,0,0,NULL,NULL),(89,1,1,'完成静态页面的设计','使用visual studio绘制界面设计静态页','2012-01-03',NULL,1,NULL,4,45,1,0,'2012-01-11 17:35:53','2012-01-11 17:35:53','2012-01-03',0,NULL,40,40,4,5,0,0,NULL,NULL),(90,1,1,'完成页面配色和素材查找','实现页面的细节配色并查找页面使用的素材','2012-01-06',NULL,1,NULL,4,45,1,0,'2012-01-11 17:36:25','2012-01-11 17:36:25','2012-01-05',0,NULL,40,40,6,7,0,0,NULL,NULL),(91,1,1,'收集整理文档材料','收集整理文档需要的材料','2012-01-12',NULL,1,NULL,4,45,1,0,'2012-01-11 17:36:55','2012-01-11 17:36:55','2012-01-12',0,NULL,41,41,2,3,0,0,NULL,NULL),(92,1,1,'撰写使用手册','根据产品的特征编写使用手册','2012-01-12',NULL,1,NULL,4,45,1,0,'2012-01-11 17:37:19','2012-01-11 17:37:19','2012-01-12',0,NULL,41,41,4,5,0,0,NULL,NULL),(93,1,1,'查找项目展示使用模板','查找项目展示使用模板','2012-01-11',NULL,1,NULL,4,45,1,0,'2012-01-11 17:37:45','2012-01-11 17:37:45','2012-01-11',0,NULL,41,41,6,7,0,0,NULL,NULL),(94,1,1,'设计侧边栏','实现侧边栏','2012-01-10',NULL,3,NULL,4,45,1,1,'2012-01-11 17:38:18','2012-01-12 12:59:05','2012-01-09',100,NULL,43,43,2,3,0,0,NULL,NULL),(95,1,1,'设计图表','实现图表显示','2012-01-07',NULL,3,NULL,4,45,1,1,'2012-01-11 17:38:43','2012-01-12 12:59:00','2012-01-06',100,NULL,42,42,2,3,0,0,NULL,NULL),(112,1,1,'new story','5',NULL,NULL,1,NULL,3,45,1,0,'2012-01-12 15:21:44','2012-01-12 15:21:44',NULL,0,5,NULL,112,1,2,0,0,NULL,NULL),(114,1,1,'测试新建','测试新建  backlog','2012-01-12',NULL,2,NULL,4,NULL,1,0,'2012-01-12 15:29:05','2012-01-12 15:29:05','2012-01-01',0,2,NULL,114,1,2,0,0,NULL,NULL),(153,1,1,'333','','2012-01-22',NULL,1,NULL,3,NULL,1,0,'2012-01-12 17:52:56','2012-01-12 17:52:56','2012-01-15',0,12,NULL,153,1,2,0,0,NULL,NULL),(161,1,1,'3','1','2012-01-09',NULL,1,NULL,3,NULL,1,2,'2012-01-12 18:14:00','2012-01-12 18:53:55','2012-01-02',0,32,NULL,161,1,2,0,0,NULL,NULL),(168,1,1,'21','',NULL,NULL,1,NULL,3,NULL,1,0,'2012-01-12 18:29:46','2012-01-12 18:29:46',NULL,0,NULL,NULL,168,1,2,0,0,NULL,NULL),(173,2,1,'创建图表','使用open flash 制作图表','2012-01-12',NULL,1,NULL,4,45,1,1,'2012-01-12 19:22:14','2012-01-12 19:44:17','2012-01-10',0,3,NULL,173,1,2,0,0,NULL,NULL),(174,2,1,'完成图表的显示','通过使用open flash 完成图表的显示','2012-01-15',NULL,1,NULL,4,NULL,1,0,'2012-01-12 19:39:59','2012-01-12 19:39:59','2012-01-12',0,24,NULL,174,1,2,0,0,NULL,NULL),(175,2,1,'界面设计','了解界面设计的基本原理，并设计界面,xiugai ','2012-01-16',NULL,1,NULL,5,NULL,1,1,'2012-01-12 19:43:38','2012-01-12 19:52:06','2012-01-12',0,32,NULL,175,1,2,0,0,NULL,NULL),(176,1,1,'test','this is a test backlog','2012-01-14',NULL,1,NULL,4,NULL,1,0,'2012-01-12 19:50:08','2012-01-12 19:50:08','2012-01-12',0,1,NULL,176,1,2,0,0,NULL,NULL),(177,1,1,'for a create test','test fo ','2012-01-13',NULL,1,NULL,4,NULL,1,2,'2012-01-12 19:52:31','2012-01-12 19:53:28','2012-01-12',0,1,NULL,177,1,2,0,0,NULL,NULL),(179,1,1,'new backlog','','2012-01-17',NULL,1,NULL,3,NULL,1,0,'2012-01-13 01:06:37','2012-01-13 01:06:37','2012-01-02',0,1,NULL,179,1,2,0,0,NULL,NULL),(207,1,1,'ｅｅ','２２',NULL,NULL,1,NULL,3,NULL,1,0,'2012-01-13 02:24:19','2012-01-13 02:24:19',NULL,0,NULL,NULL,207,1,2,0,0,NULL,NULL),(208,1,1,'３','',NULL,NULL,1,NULL,3,NULL,1,0,'2012-01-13 02:25:50','2012-01-13 02:25:50',NULL,0,NULL,NULL,208,1,2,0,0,NULL,NULL),(209,1,1,'3','',NULL,NULL,1,NULL,6,NULL,1,0,'2012-01-13 02:26:36','2012-01-13 02:26:36',NULL,0,3,NULL,209,1,2,0,0,NULL,NULL);
/*!40000 ALTER TABLE `issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journal_details`
--

DROP TABLE IF EXISTS `journal_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journal_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `journal_id` int(11) NOT NULL DEFAULT '0',
  `property` varchar(30) NOT NULL DEFAULT '',
  `prop_key` varchar(30) NOT NULL DEFAULT '',
  `old_value` text,
  `value` text,
  PRIMARY KEY (`id`),
  KEY `journal_details_journal_id` (`journal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journal_details`
--

LOCK TABLES `journal_details` WRITE;
/*!40000 ALTER TABLE `journal_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `journal_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journals`
--

DROP TABLE IF EXISTS `journals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `journalized_id` int(11) NOT NULL DEFAULT '0',
  `journalized_type` varchar(30) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `notes` text,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `journals_journalized_id` (`journalized_id`,`journalized_type`),
  KEY `index_journals_on_user_id` (`user_id`),
  KEY `index_journals_on_journalized_id` (`journalized_id`),
  KEY `index_journals_on_created_on` (`created_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journals`
--

LOCK TABLES `journals` WRITE;
/*!40000 ALTER TABLE `journals` DISABLE KEYS */;
/*!40000 ALTER TABLE `journals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kl_backlogs`
--

DROP TABLE IF EXISTS `kl_backlogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kl_backlogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issue_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sprint_id` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `estimate` float DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kl_backlogs`
--

LOCK TABLES `kl_backlogs` WRITE;
/*!40000 ALTER TABLE `kl_backlogs` DISABLE KEYS */;
INSERT INTO `kl_backlogs` VALUES (1,12,3,40,3,1,1),(2,13,3,40,4,2,1),(3,14,1,40,10,5,1),(4,15,3,40,6,6,1),(5,16,1,40,14,5,1),(7,18,3,40,23,4,1),(8,29,1,36,6,12,1),(9,30,1,36,5,6,1),(10,31,1,45,19,8,1),(11,32,1,36,17,20,1),(12,33,1,45,5,10,1),(13,34,1,45,21,11,1),(14,35,3,NULL,10,7,1),(15,36,3,45,11,10,1),(16,37,3,NULL,22,24,1),(17,38,3,45,12,12,1),(18,39,1,NULL,8,11,1),(19,40,3,45,12,10,1),(20,41,3,45,2,22,1),(21,42,3,45,15,9,1),(22,43,3,45,5,12,1),(23,47,2,44,34,34,2),(24,48,4,44,3,3,2),(25,49,1,44,5,33,2),(26,4,3,38,4,4,1),(27,56,3,NULL,19,12,1),(28,57,3,NULL,16,3,1),(41,112,3,45,5,30,1),(43,114,3,NULL,12,12,1),(79,153,1,49,2,3,1),(86,161,1,49,1,2,1),(93,168,1,49,1,1,1),(96,173,3,45,12,5,1),(97,174,1,NULL,12,3,1),(98,175,3,NULL,23,12,1),(99,176,1,NULL,12,12,1),(100,177,1,NULL,12,12,1),(101,179,1,NULL,1,1,1),(129,207,4,52,0,0,1),(130,208,4,52,0,0,1),(131,209,4,52,33,33,1);
/*!40000 ALTER TABLE `kl_backlogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kl_diagrams`
--

DROP TABLE IF EXISTS `kl_diagrams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kl_diagrams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sprint_id` int(11) DEFAULT NULL,
  `story_point` float DEFAULT NULL,
  `story_point_left` float DEFAULT NULL,
  `update_on` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kl_diagrams`
--

LOCK TABLES `kl_diagrams` WRITE;
/*!40000 ALTER TABLE `kl_diagrams` DISABLE KEYS */;
INSERT INTO `kl_diagrams` VALUES (1,44,32,34,'2012-01-10'),(2,36,6,6,'2012-01-10'),(3,43,3,3,'2012-01-11'),(4,44,33,33,'2012-01-11'),(5,38,4,4,'2012-01-11'),(6,45,150,145,'2011-12-27'),(7,45,120,120,'2011-12-26'),(8,45,160,130,'2011-12-30'),(9,45,160,118,'2011-12-31'),(10,45,180,122,'2012-01-02'),(11,45,180,100,'2012-01-04'),(12,45,180,70,'2012-01-07'),(13,45,180,39,'2012-01-10'),(14,45,180,34,'2012-01-12'),(15,45,20,35,'2012-01-13'),(16,46,80,80,'2011-12-29'),(17,46,100,90,'2011-12-30'),(18,46,100,84,'2011-12-31'),(19,46,110,40,'2012-01-07'),(20,46,110,86,'2012-01-02'),(21,46,110,78,'2012-01-03'),(22,46,110,66,'2012-01-04'),(23,46,110,58,'2012-01-05'),(24,45,160,150,'2012-01-28'),(25,45,180,90,'2012-01-06'),(26,46,110,30,'2012-01-10'),(27,45,140,140,'2011-12-30'),(28,45,139,139,'2011-12-30'),(33,49,6,6,'2012-01-13'),(34,51,0,0,'2012-01-13'),(35,52,33,33,'2012-01-13'),(36,53,0,0,'2012-01-13'),(37,54,0,0,'2012-01-13');
/*!40000 ALTER TABLE `kl_diagrams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kl_klg_categories`
--

DROP TABLE IF EXISTS `kl_klg_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kl_klg_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kl_klg_categories`
--

LOCK TABLES `kl_klg_categories` WRITE;
/*!40000 ALTER TABLE `kl_klg_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `kl_klg_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_roles`
--

DROP TABLE IF EXISTS `member_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `inherited_from` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_member_roles_on_member_id` (`member_id`),
  KEY `index_member_roles_on_role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_roles`
--

LOCK TABLES `member_roles` WRITE;
/*!40000 ALTER TABLE `member_roles` DISABLE KEYS */;
INSERT INTO `member_roles` VALUES (1,1,3,NULL),(2,1,4,NULL),(3,1,5,NULL),(4,2,3,NULL),(5,3,4,NULL),(6,3,5,NULL),(7,4,4,NULL),(8,4,5,NULL),(9,5,4,NULL),(10,5,5,NULL),(11,6,4,NULL),(12,6,5,NULL);
/*!40000 ALTER TABLE `member_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `mail_notification` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_members_on_user_id_and_project_id` (`user_id`,`project_id`),
  KEY `index_members_on_user_id` (`user_id`),
  KEY `index_members_on_project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,1,1,'2012-01-10 21:15:16',0),(2,1,3,'2012-01-12 13:06:43',0),(3,3,3,'2012-01-12 13:06:48',0),(4,4,3,'2012-01-12 13:06:48',0),(5,3,1,'2012-01-12 13:39:16',0),(6,4,1,'2012-01-12 13:39:16',0);
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `board_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `content` text,
  `author_id` int(11) DEFAULT NULL,
  `replies_count` int(11) NOT NULL DEFAULT '0',
  `last_reply_id` int(11) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  `locked` tinyint(1) DEFAULT '0',
  `sticky` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `messages_board_id` (`board_id`),
  KEY `messages_parent_id` (`parent_id`),
  KEY `index_messages_on_last_reply_id` (`last_reply_id`),
  KEY `index_messages_on_author_id` (`author_id`),
  KEY `index_messages_on_created_on` (`created_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `milestones`
--

DROP TABLE IF EXISTS `milestones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `milestones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `target` varchar(255) DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `milestones`
--

LOCK TABLES `milestones` WRITE;
/*!40000 ALTER TABLE `milestones` DISABLE KEYS */;
/*!40000 ALTER TABLE `milestones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `title` varchar(60) NOT NULL DEFAULT '',
  `summary` varchar(255) DEFAULT '',
  `description` text,
  `author_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `comments_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `news_project_id` (`project_id`),
  KEY `index_news_on_author_id` (`author_id`),
  KEY `index_news_on_created_on` (`created_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `open_id_authentication_associations`
--

DROP TABLE IF EXISTS `open_id_authentication_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_id_authentication_associations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issued` int(11) DEFAULT NULL,
  `lifetime` int(11) DEFAULT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `assoc_type` varchar(255) DEFAULT NULL,
  `server_url` blob,
  `secret` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `open_id_authentication_associations`
--

LOCK TABLES `open_id_authentication_associations` WRITE;
/*!40000 ALTER TABLE `open_id_authentication_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `open_id_authentication_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `open_id_authentication_nonces`
--

DROP TABLE IF EXISTS `open_id_authentication_nonces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_id_authentication_nonces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` int(11) NOT NULL,
  `server_url` varchar(255) DEFAULT NULL,
  `salt` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `open_id_authentication_nonces`
--

LOCK TABLES `open_id_authentication_nonces` WRITE;
/*!40000 ALTER TABLE `open_id_authentication_nonces` DISABLE KEYS */;
/*!40000 ALTER TABLE `open_id_authentication_nonces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pf_attachments`
--

DROP TABLE IF EXISTS `pf_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pf_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foreign_id` int(11) NOT NULL,
  `type` varchar(16) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `disk_filename` varchar(255) DEFAULT NULL,
  `filesize` int(11) DEFAULT '0',
  `description` text,
  `created_on` datetime NOT NULL DEFAULT '2012-01-10 21:06:16',
  `author_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pf_attachments`
--

LOCK TABLES `pf_attachments` WRITE;
/*!40000 ALTER TABLE `pf_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `pf_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pf_tasks`
--

DROP TABLE IF EXISTS `pf_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pf_tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pf_tasks`
--

LOCK TABLES `pf_tasks` WRITE;
/*!40000 ALTER TABLE `pf_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `pf_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `process_models`
--

DROP TABLE IF EXISTS `process_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `process_models` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `date` datetime NOT NULL DEFAULT '2012-01-10 21:06:15',
  `author_id` int(11) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `process_models`
--

LOCK TABLES `process_models` WRITE;
/*!40000 ALTER TABLE `process_models` DISABLE KEYS */;
INSERT INTO `process_models` VALUES (1,'需求工程','<p>需求工程推荐模板</p>\n','2012-01-10 21:10:25',1,1);
/*!40000 ALTER TABLE `process_models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `homepage` varchar(255) DEFAULT '',
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `parent_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `if_config_pf` tinyint(1) NOT NULL DEFAULT '0',
  `model_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_projects_on_lft` (`lft`),
  KEY `index_projects_on_rgt` (`rgt`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'Scrumkl','最终测试用数据。','',1,NULL,'2012-01-10 21:09:30','2012-01-10 21:16:57','test',1,1,2,1,1),(2,'测试PZH','W T','',1,NULL,'2012-01-11 01:08:30','2012-01-11 01:08:30','wt',1,7,8,0,NULL),(3,'SM','SM','',1,NULL,'2012-01-11 12:12:54','2012-01-11 12:12:54','adcd',1,3,4,0,NULL),(4,'test for delete','','',1,NULL,'2012-01-13 02:41:24','2012-01-13 02:41:24','delete',1,5,6,0,NULL);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_trackers`
--

DROP TABLE IF EXISTS `projects_trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_trackers` (
  `project_id` int(11) NOT NULL DEFAULT '0',
  `tracker_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `projects_trackers_unique` (`project_id`,`tracker_id`),
  KEY `projects_trackers_project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_trackers`
--

LOCK TABLES `projects_trackers` WRITE;
/*!40000 ALTER TABLE `projects_trackers` DISABLE KEYS */;
INSERT INTO `projects_trackers` VALUES (1,1),(1,2),(1,3),(2,1),(2,2),(2,3),(3,1),(3,2),(3,3),(4,1),(4,2),(4,3);
/*!40000 ALTER TABLE `projects_trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queries`
--

DROP TABLE IF EXISTS `queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `filters` text,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `column_names` text,
  `sort_criteria` text,
  `group_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_queries_on_project_id` (`project_id`),
  KEY `index_queries_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queries`
--

LOCK TABLES `queries` WRITE;
/*!40000 ALTER TABLE `queries` DISABLE KEYS */;
/*!40000 ALTER TABLE `queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repositories`
--

DROP TABLE IF EXISTS `repositories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repositories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `login` varchar(60) DEFAULT '',
  `password` varchar(255) DEFAULT '',
  `root_url` varchar(255) DEFAULT '',
  `type` varchar(255) DEFAULT NULL,
  `path_encoding` varchar(64) DEFAULT NULL,
  `log_encoding` varchar(64) DEFAULT NULL,
  `extra_info` text,
  PRIMARY KEY (`id`),
  KEY `index_repositories_on_project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repositories`
--

LOCK TABLES `repositories` WRITE;
/*!40000 ALTER TABLE `repositories` DISABLE KEYS */;
/*!40000 ALTER TABLE `repositories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `position` int(11) DEFAULT '1',
  `assignable` tinyint(1) DEFAULT '1',
  `builtin` int(11) NOT NULL DEFAULT '0',
  `permissions` text,
  `issues_visibility` varchar(30) NOT NULL DEFAULT 'default',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Non member',1,1,1,'--- \n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :save_queries\n- :view_gantt\n- :view_calendar\n- :view_time_entries\n- :comment_news\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :add_messages\n- :view_files\n- :browse_repository\n- :view_changesets\n','default'),(2,'Anonymous',2,1,2,'--- \n- :view_issues\n- :view_gantt\n- :view_calendar\n- :view_time_entries\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :view_files\n- :browse_repository\n- :view_changesets\n','default'),(3,'管理人员',3,1,0,'--- \n- :add_project\n- :edit_project\n- :select_project_modules\n- :manage_members\n- :manage_versions\n- :add_subprojects\n- :manage_categories\n- :view_issues\n- :add_issues\n- :edit_issues\n- :manage_issue_relations\n- :manage_subtasks\n- :set_issues_private\n- :set_own_issues_private\n- :add_issue_notes\n- :edit_issue_notes\n- :edit_own_issue_notes\n- :move_issues\n- :delete_issues\n- :manage_public_queries\n- :save_queries\n- :view_issue_watchers\n- :add_issue_watchers\n- :delete_issue_watchers\n- :log_time\n- :view_time_entries\n- :edit_time_entries\n- :edit_own_time_entries\n- :manage_project_activities\n- :manage_news\n- :comment_news\n- :manage_documents\n- :view_documents\n- :manage_files\n- :view_files\n- :manage_wiki\n- :rename_wiki_pages\n- :delete_wiki_pages\n- :view_wiki_pages\n- :export_wiki_pages\n- :view_wiki_edits\n- :edit_wiki_pages\n- :delete_wiki_pages_attachments\n- :protect_wiki_pages\n- :manage_repository\n- :browse_repository\n- :view_changesets\n- :commit_access\n- :manage_boards\n- :add_messages\n- :edit_messages\n- :edit_own_messages\n- :delete_messages\n- :delete_own_messages\n- :view_calendar\n- :view_gantt\n- :label_view_process_framework\n- :label_import_process_framework\n- :scrumkl\n- :view_sprints\n- :manage_sprints_and_user_stories\n- :manage_tasks\n','all'),(4,'开发人员',4,1,0,'--- \n- :manage_versions\n- :manage_categories\n- :view_issues\n- :add_issues\n- :edit_issues\n- :manage_issue_relations\n- :manage_subtasks\n- :add_issue_notes\n- :save_queries\n- :view_gantt\n- :view_calendar\n- :log_time\n- :view_time_entries\n- :comment_news\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :edit_wiki_pages\n- :delete_wiki_pages\n- :add_messages\n- :edit_own_messages\n- :view_files\n- :manage_files\n- :browse_repository\n- :view_changesets\n- :commit_access\n','default'),(5,'报告人员',5,1,0,'--- \n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :save_queries\n- :view_gantt\n- :view_calendar\n- :log_time\n- :view_time_entries\n- :comment_news\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :add_messages\n- :edit_own_messages\n- :view_files\n- :browse_repository\n- :view_changesets\n','default');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('1'),('1-redmine_process_frameworks'),('1-redmine_sprints'),('10'),('10-redmine_process_frameworks'),('10-redmine_sprints'),('100'),('101'),('102'),('103'),('104'),('105'),('106'),('107'),('108'),('11'),('11-redmine_process_frameworks'),('11-redmine_sprints'),('12'),('12-redmine_sprints'),('13'),('13-redmine_sprints'),('14'),('14-redmine_sprints'),('15'),('15-redmine_sprints'),('16'),('16-redmine_sprints'),('17'),('17-redmine_sprints'),('18'),('18-redmine_sprints'),('19'),('19-redmine_sprints'),('2'),('2-redmine_process_frameworks'),('2-redmine_sprints'),('20'),('20-redmine_sprints'),('20090214190337'),('20090312172426'),('20090312194159'),('20090318181151'),('20090323224724'),('20090401221305'),('20090401231134'),('20090403001910'),('20090406161854'),('20090425161243'),('20090503121501'),('20090503121505'),('20090503121510'),('20090614091200'),('20090704172350'),('20090704172355'),('20090704172358'),('20091010093521'),('20091017212227'),('20091017212457'),('20091017212644'),('20091017212938'),('20091017213027'),('20091017213113'),('20091017213151'),('20091017213228'),('20091017213257'),('20091017213332'),('20091017213444'),('20091017213536'),('20091017213642'),('20091017213716'),('20091017213757'),('20091017213835'),('20091017213910'),('20091017214015'),('20091017214107'),('20091017214136'),('20091017214236'),('20091017214308'),('20091017214336'),('20091017214406'),('20091017214440'),('20091017214519'),('20091017214611'),('20091017214644'),('20091017214720'),('20091017214750'),('20091025163651'),('20091108092559'),('20091114105931'),('20091123212029'),('20091205124427'),('20091220183509'),('20091220183727'),('20091220184736'),('20091225164732'),('20091227112908'),('20100129193402'),('20100129193813'),('20100221100219'),('20100313132032'),('20100313171051'),('20100705164950'),('20100819172912'),('20101104182107'),('20101107130441'),('20101114115114'),('20101114115359'),('20110220160626'),('20110223180944'),('20110223180953'),('20110224000000'),('20110226120112'),('20110226120132'),('20110227125750'),('20110228000000'),('20110228000100'),('20110401192910'),('20110408103312'),('20110412065600'),('20110511000000'),('21'),('22'),('23'),('24'),('25'),('26'),('27'),('28'),('29'),('3'),('3-redmine_sprints'),('30'),('31'),('32'),('33'),('34'),('35'),('36'),('37'),('38'),('39'),('4'),('4-redmine_process_frameworks'),('4-redmine_scrumkl'),('4-redmine_sprints'),('40'),('41'),('42'),('43'),('44'),('45'),('46'),('47'),('48'),('49'),('5'),('5-redmine_scrumkl'),('5-redmine_sprints'),('50'),('51'),('52'),('53'),('54'),('55'),('56'),('57'),('58'),('59'),('6'),('6-redmine_process_frameworks'),('6-redmine_scrumkl'),('6-redmine_sprints'),('60'),('61'),('62'),('63'),('64'),('65'),('66'),('67'),('68'),('69'),('7'),('7-redmine_process_frameworks'),('7-redmine_scrumkl'),('7-redmine_sprints'),('70'),('71'),('72'),('73'),('74'),('75'),('76'),('77'),('78'),('79'),('8'),('8-redmine_process_frameworks'),('8-redmine_scrumkl'),('8-redmine_sprints'),('80'),('81'),('82'),('83'),('84'),('85'),('86'),('87'),('88'),('89'),('9'),('9-redmine_process_frameworks'),('9-redmine_scrumkl'),('9-redmine_sprints'),('90'),('91'),('92'),('93'),('94'),('95'),('96'),('97'),('98'),('99');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` text,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_settings_on_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sprints_setups`
--

DROP TABLE IF EXISTS `sprints_setups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sprints_setups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sprints_setups`
--

LOCK TABLES `sprints_setups` WRITE;
/*!40000 ALTER TABLE `sprints_setups` DISABLE KEYS */;
/*!40000 ALTER TABLE `sprints_setups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_logs`
--

DROP TABLE IF EXISTS `task_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `sprint_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_logs`
--

LOCK TABLES `task_logs` WRITE;
/*!40000 ALTER TABLE `task_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_entries`
--

DROP TABLE IF EXISTS `time_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `issue_id` int(11) DEFAULT NULL,
  `hours` float NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `activity_id` int(11) NOT NULL,
  `spent_on` date NOT NULL,
  `tyear` int(11) NOT NULL,
  `tmonth` int(11) NOT NULL,
  `tweek` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time_entries_project_id` (`project_id`),
  KEY `time_entries_issue_id` (`issue_id`),
  KEY `index_time_entries_on_activity_id` (`activity_id`),
  KEY `index_time_entries_on_user_id` (`user_id`),
  KEY `index_time_entries_on_created_on` (`created_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_entries`
--

LOCK TABLES `time_entries` WRITE;
/*!40000 ALTER TABLE `time_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_estimates`
--

DROP TABLE IF EXISTS `time_estimates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_estimates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estimation` varchar(255) DEFAULT NULL,
  `value` float DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_estimates`
--

LOCK TABLES `time_estimates` WRITE;
/*!40000 ALTER TABLE `time_estimates` DISABLE KEYS */;
INSERT INTO `time_estimates` VALUES (1,'?',0,'2012-01-10 21:06:20','2012-01-10 21:06:20'),(2,'0',0,'2012-01-10 21:06:20','2012-01-10 21:06:20'),(3,'1/2',0.5,'2012-01-10 21:06:20','2012-01-10 21:06:20'),(4,'1',1,'2012-01-10 21:06:20','2012-01-10 21:06:20'),(5,'2',2,'2012-01-10 21:06:20','2012-01-10 21:06:20'),(6,'3',3,'2012-01-10 21:06:20','2012-01-10 21:06:20'),(7,'5',5,'2012-01-10 21:06:21','2012-01-10 21:06:21'),(8,'8',8,'2012-01-10 21:06:21','2012-01-10 21:06:21'),(9,'13',13,'2012-01-10 21:06:21','2012-01-10 21:06:21'),(10,'20',20,'2012-01-10 21:06:21','2012-01-10 21:06:21'),(11,'40',40,'2012-01-10 21:06:21','2012-01-10 21:06:21'),(12,'100',100,'2012-01-10 21:06:21','2012-01-10 21:06:21');
/*!40000 ALTER TABLE `time_estimates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `action` varchar(30) NOT NULL DEFAULT '',
  `value` varchar(40) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tokens_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens`
--

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
INSERT INTO `tokens` VALUES (2,1,'feeds','3dcfcd6f09f226aa71a9e2b484376c4a221c57a1','2012-01-10 21:06:57');
/*!40000 ALTER TABLE `tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trackers`
--

DROP TABLE IF EXISTS `trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trackers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `is_in_chlog` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) DEFAULT '1',
  `is_in_roadmap` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trackers`
--

LOCK TABLES `trackers` WRITE;
/*!40000 ALTER TABLE `trackers` DISABLE KEYS */;
INSERT INTO `trackers` VALUES (1,'错误',1,1,1),(2,'功能',1,3,1),(3,'支持',0,2,1);
/*!40000 ALTER TABLE `trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_preferences`
--

DROP TABLE IF EXISTS `user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_preferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `others` text,
  `hide_mail` tinyint(1) DEFAULT '0',
  `time_zone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_preferences_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_preferences`
--

LOCK TABLES `user_preferences` WRITE;
/*!40000 ALTER TABLE `user_preferences` DISABLE KEYS */;
INSERT INTO `user_preferences` VALUES (1,1,'--- \n:gantt_months: 6\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \"1\"\n:no_self_notified: false\n:gantt_zoom: 2\n',0,''),(2,2,'--- {}\n\n',0,NULL),(3,3,'--- \n:no_self_notified: false\n',0,NULL),(4,4,'--- \n:no_self_notified: false\n',0,NULL);
/*!40000 ALTER TABLE `user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_stories`
--

DROP TABLE IF EXISTS `user_stories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_stories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `project_id` int(11) DEFAULT NULL,
  `time_estimate_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `us_number` int(11) DEFAULT NULL,
  `milestone_id` int(11) DEFAULT NULL,
  `version_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_stories`
--

LOCK TABLES `user_stories` WRITE;
/*!40000 ALTER TABLE `user_stories` DISABLE KEYS */;
INSERT INTO `user_stories` VALUES (1,'PZH测试用','PZH测试用',2,5,'2012-01-11 09:36:49','2012-01-11 09:36:49',1,1,NULL,NULL);
/*!40000 ALTER TABLE `user_stories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL DEFAULT '',
  `hashed_password` varchar(40) NOT NULL DEFAULT '',
  `firstname` varchar(30) NOT NULL DEFAULT '',
  `lastname` varchar(30) NOT NULL DEFAULT '',
  `mail` varchar(60) NOT NULL DEFAULT '',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `last_login_on` datetime DEFAULT NULL,
  `language` varchar(5) DEFAULT '',
  `auth_source_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `identity_url` varchar(255) DEFAULT NULL,
  `mail_notification` varchar(255) NOT NULL DEFAULT '',
  `salt` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_users_on_id_and_type` (`id`,`type`),
  KEY `index_users_on_auth_source_id` (`auth_source_id`),
  KEY `index_users_on_type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','d39dfccb44ed3b54c1bc1d15702774bedf220a81','Redmine','Admin','admin@example.net',1,1,'2012-01-13 02:55:54','zh',NULL,'2012-01-10 21:04:41','2012-01-13 02:55:54','User',NULL,'all','be23202b5841ed2ab6d3b79b27bb6a64'),(2,'','','','Anonymous','',0,0,NULL,'',NULL,'2012-01-10 21:07:33','2012-01-10 21:07:33','AnonymousUser',NULL,'only_my_events',NULL),(3,'Gero','74f83977fa257be89584c896102d938a41e3095a','ever','gero','geron_ever@sina.cn',0,1,NULL,'en',NULL,'2012-01-12 13:00:17','2012-01-12 13:00:36','User',NULL,'only_my_events','c8b7458e09514b958d8a0772b6f68236'),(4,'scrum','f96e5c5fc261b99f5b7b24194ae8255db807b447','scrum','scrum','scrum@sina.cn',0,1,NULL,'en',NULL,'2012-01-12 13:01:12','2012-01-12 13:01:34','User',NULL,'only_my_events','9991aa9ac7c2ff4e39562703b020f406');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `effective_date` date DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `wiki_page_title` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'open',
  `sharing` varchar(255) NOT NULL DEFAULT 'none',
  `if_pf` tinyint(1) NOT NULL DEFAULT '0',
  `duration` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `versions_project_id` (`project_id`),
  KEY `index_versions_on_sharing` (`sharing`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
INSERT INTO `versions` VALUES (36,1,'项目总结和验收',NULL,'2012-01-24','2012-01-10 21:16:57','2012-01-10 21:16:57',NULL,'open','none',1,NULL),(37,1,'需求验证',NULL,'2012-01-24','2012-01-10 21:16:57','2012-01-10 21:16:57',NULL,'open','none',1,NULL),(38,1,'需求获取',NULL,'2012-01-24','2012-01-10 21:16:58','2012-01-10 21:16:58',NULL,'open','none',1,NULL),(39,1,'需求管理',NULL,'2012-01-24','2012-01-10 21:17:01','2012-01-10 21:17:01',NULL,'open','none',1,NULL),(41,1,'编写规格说明书',NULL,'2012-01-24','2012-01-10 21:17:04','2012-01-10 21:17:04',NULL,'open','none',1,NULL),(42,1,'启动和准备',NULL,'2012-01-24','2012-01-10 21:17:06','2012-01-10 21:17:06',NULL,'open','none',1,NULL),(43,2,'迭代1——PZH','PZH的第一个迭代','2012-01-26','2012-01-11 01:25:19','2012-01-11 01:25:19','','open','none',0,NULL),(44,2,'迭代2--PZH','PZH的第二个迭代','2012-01-19','2012-01-11 01:48:17','2012-01-11 01:48:17','','open','none',0,NULL),(45,1,'ScrumKL第一次迭代','','2012-01-19','2012-01-13 01:08:07','2012-01-13 01:10:48','','open','none',0,NULL),(46,1,'ScrumKL第二次迭代','完成Scrum中的辅助功能，并发布版本2','2012-01-19','2011-12-29 00:00:00','2012-01-11 15:37:35','','open','none',0,NULL),(47,1,'ScrumKL第三次迭代','增添产品对测试的管理，并发布版本3','2012-01-23','2011-12-28 00:00:00','2012-01-11 15:38:51','','open','none',0,NULL),(48,1,'ScrumKL第四次迭代','实现产品的bug跟踪和质量评估，并发布版本4','2012-02-28','2012-01-30 00:00:00','2012-01-11 15:40:22','','open','none',0,NULL),(54,4,'test for delete','','2012-01-26','2012-01-13 02:41:40','2012-01-13 02:41:40','','open','none',0,NULL);
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watchers`
--

DROP TABLE IF EXISTS `watchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `watchers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `watchable_type` varchar(255) NOT NULL DEFAULT '',
  `watchable_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `watchers_user_id_type` (`user_id`,`watchable_type`),
  KEY `index_watchers_on_user_id` (`user_id`),
  KEY `index_watchers_on_watchable_id_and_watchable_type` (`watchable_id`,`watchable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watchers`
--

LOCK TABLES `watchers` WRITE;
/*!40000 ALTER TABLE `watchers` DISABLE KEYS */;
/*!40000 ALTER TABLE `watchers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_content_versions`
--

DROP TABLE IF EXISTS `wiki_content_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_content_versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wiki_content_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `data` longblob,
  `compression` varchar(6) DEFAULT '',
  `comments` varchar(255) DEFAULT '',
  `updated_on` datetime NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_content_versions_wcid` (`wiki_content_id`),
  KEY `index_wiki_content_versions_on_updated_on` (`updated_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_content_versions`
--

LOCK TABLES `wiki_content_versions` WRITE;
/*!40000 ALTER TABLE `wiki_content_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_content_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_contents`
--

DROP TABLE IF EXISTS `wiki_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `text` longtext,
  `comments` varchar(255) DEFAULT '',
  `updated_on` datetime NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_contents_page_id` (`page_id`),
  KEY `index_wiki_contents_on_author_id` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_contents`
--

LOCK TABLES `wiki_contents` WRITE;
/*!40000 ALTER TABLE `wiki_contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_pages`
--

DROP TABLE IF EXISTS `wiki_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wiki_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_on` datetime NOT NULL,
  `protected` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_pages_wiki_id_title` (`wiki_id`,`title`),
  KEY `index_wiki_pages_on_wiki_id` (`wiki_id`),
  KEY `index_wiki_pages_on_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_pages`
--

LOCK TABLES `wiki_pages` WRITE;
/*!40000 ALTER TABLE `wiki_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_redirects`
--

DROP TABLE IF EXISTS `wiki_redirects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_redirects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wiki_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `redirects_to` varchar(255) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_redirects_wiki_id_title` (`wiki_id`,`title`),
  KEY `index_wiki_redirects_on_wiki_id` (`wiki_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_redirects`
--

LOCK TABLES `wiki_redirects` WRITE;
/*!40000 ALTER TABLE `wiki_redirects` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_redirects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wikis`
--

DROP TABLE IF EXISTS `wikis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wikis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `start_page` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `wikis_project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wikis`
--

LOCK TABLES `wikis` WRITE;
/*!40000 ALTER TABLE `wikis` DISABLE KEYS */;
INSERT INTO `wikis` VALUES (1,1,'Wiki',1),(2,2,'Wiki',1),(3,3,'Wiki',1),(4,4,'Wiki',1);
/*!40000 ALTER TABLE `wikis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflows`
--

DROP TABLE IF EXISTS `workflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_id` int(11) NOT NULL DEFAULT '0',
  `old_status_id` int(11) NOT NULL DEFAULT '0',
  `new_status_id` int(11) NOT NULL DEFAULT '0',
  `role_id` int(11) NOT NULL DEFAULT '0',
  `assignee` tinyint(1) NOT NULL DEFAULT '0',
  `author` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `wkfs_role_tracker_old_status` (`role_id`,`tracker_id`,`old_status_id`),
  KEY `index_workflows_on_old_status_id` (`old_status_id`),
  KEY `index_workflows_on_role_id` (`role_id`),
  KEY `index_workflows_on_new_status_id` (`new_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflows`
--

LOCK TABLES `workflows` WRITE;
/*!40000 ALTER TABLE `workflows` DISABLE KEYS */;
INSERT INTO `workflows` VALUES (1,1,1,2,3,0,0),(2,1,1,3,3,0,0),(3,1,1,4,3,0,0),(4,1,1,5,3,0,0),(5,1,1,6,3,0,0),(6,1,2,1,3,0,0),(7,1,2,3,3,0,0),(8,1,2,4,3,0,0),(9,1,2,5,3,0,0),(10,1,2,6,3,0,0),(11,1,3,1,3,0,0),(12,1,3,2,3,0,0),(13,1,3,4,3,0,0),(14,1,3,5,3,0,0),(15,1,3,6,3,0,0),(16,1,4,1,3,0,0),(17,1,4,2,3,0,0),(18,1,4,3,3,0,0),(19,1,4,5,3,0,0),(20,1,4,6,3,0,0),(21,1,5,1,3,0,0),(22,1,5,2,3,0,0),(23,1,5,3,3,0,0),(24,1,5,4,3,0,0),(25,1,5,6,3,0,0),(26,1,6,1,3,0,0),(27,1,6,2,3,0,0),(28,1,6,3,3,0,0),(29,1,6,4,3,0,0),(30,1,6,5,3,0,0),(31,2,1,2,3,0,0),(32,2,1,3,3,0,0),(33,2,1,4,3,0,0),(34,2,1,5,3,0,0),(35,2,1,6,3,0,0),(36,2,2,1,3,0,0),(37,2,2,3,3,0,0),(38,2,2,4,3,0,0),(39,2,2,5,3,0,0),(40,2,2,6,3,0,0),(41,2,3,1,3,0,0),(42,2,3,2,3,0,0),(43,2,3,4,3,0,0),(44,2,3,5,3,0,0),(45,2,3,6,3,0,0),(46,2,4,1,3,0,0),(47,2,4,2,3,0,0),(48,2,4,3,3,0,0),(49,2,4,5,3,0,0),(50,2,4,6,3,0,0),(51,2,5,1,3,0,0),(52,2,5,2,3,0,0),(53,2,5,3,3,0,0),(54,2,5,4,3,0,0),(55,2,5,6,3,0,0),(56,2,6,1,3,0,0),(57,2,6,2,3,0,0),(58,2,6,3,3,0,0),(59,2,6,4,3,0,0),(60,2,6,5,3,0,0),(61,3,1,2,3,0,0),(62,3,1,3,3,0,0),(63,3,1,4,3,0,0),(64,3,1,5,3,0,0),(65,3,1,6,3,0,0),(66,3,2,1,3,0,0),(67,3,2,3,3,0,0),(68,3,2,4,3,0,0),(69,3,2,5,3,0,0),(70,3,2,6,3,0,0),(71,3,3,1,3,0,0),(72,3,3,2,3,0,0),(73,3,3,4,3,0,0),(74,3,3,5,3,0,0),(75,3,3,6,3,0,0),(76,3,4,1,3,0,0),(77,3,4,2,3,0,0),(78,3,4,3,3,0,0),(79,3,4,5,3,0,0),(80,3,4,6,3,0,0),(81,3,5,1,3,0,0),(82,3,5,2,3,0,0),(83,3,5,3,3,0,0),(84,3,5,4,3,0,0),(85,3,5,6,3,0,0),(86,3,6,1,3,0,0),(87,3,6,2,3,0,0),(88,3,6,3,3,0,0),(89,3,6,4,3,0,0),(90,3,6,5,3,0,0),(91,1,1,2,4,0,0),(92,1,1,3,4,0,0),(93,1,1,4,4,0,0),(94,1,1,5,4,0,0),(95,1,2,3,4,0,0),(96,1,2,4,4,0,0),(97,1,2,5,4,0,0),(98,1,3,2,4,0,0),(99,1,3,4,4,0,0),(100,1,3,5,4,0,0),(101,1,4,2,4,0,0),(102,1,4,3,4,0,0),(103,1,4,5,4,0,0),(104,2,1,2,4,0,0),(105,2,1,3,4,0,0),(106,2,1,4,4,0,0),(107,2,1,5,4,0,0),(108,2,2,3,4,0,0),(109,2,2,4,4,0,0),(110,2,2,5,4,0,0),(111,2,3,2,4,0,0),(112,2,3,4,4,0,0),(113,2,3,5,4,0,0),(114,2,4,2,4,0,0),(115,2,4,3,4,0,0),(116,2,4,5,4,0,0),(117,3,1,2,4,0,0),(118,3,1,3,4,0,0),(119,3,1,4,4,0,0),(120,3,1,5,4,0,0),(121,3,2,3,4,0,0),(122,3,2,4,4,0,0),(123,3,2,5,4,0,0),(124,3,3,2,4,0,0),(125,3,3,4,4,0,0),(126,3,3,5,4,0,0),(127,3,4,2,4,0,0),(128,3,4,3,4,0,0),(129,3,4,5,4,0,0),(130,1,1,5,5,0,0),(131,1,2,5,5,0,0),(132,1,3,5,5,0,0),(133,1,4,5,5,0,0),(134,1,3,4,5,0,0),(135,2,1,5,5,0,0),(136,2,2,5,5,0,0),(137,2,3,5,5,0,0),(138,2,4,5,5,0,0),(139,2,3,4,5,0,0),(140,3,1,5,5,0,0),(141,3,2,5,5,0,0),(142,3,3,5,5,0,0),(143,3,4,5,5,0,0),(144,3,3,4,5,0,0);
/*!40000 ALTER TABLE `workflows` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-03-07 21:04:08
