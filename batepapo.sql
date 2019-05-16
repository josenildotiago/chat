# Host: localhost  (Version 5.7.24)
# Date: 2019-05-16 00:12:15
# Generator: MySQL-Front 6.1  (Build 1.26)


#
# Structure for table "groups"
#

DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Data for table "groups"
#

INSERT INTO `groups` VALUES (1,'Geral'),(2,'Testes'),(3,'Desenvolvimento'),(4,'Criada via Sistema'),(5,'Sala 2');

#
# Structure for table "messages"
#

DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_group` int(11) NOT NULL,
  `date_msg` datetime NOT NULL,
  `msg` text NOT NULL,
  `msg_type` varchar(20) NOT NULL DEFAULT 'text',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

#
# Data for table "messages"
#


#
# Structure for table "users"
#

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '',
  `pass` varchar(255) NOT NULL DEFAULT '',
  `loginhash` varchar(32) DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `groups` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Data for table "users"
#

INSERT INTO `users` VALUES (1,'bonieky','$2y$10$oSf2zLbBP8IIT2fO8jM3a.2UjwmDpISliTJlpccnN2GR7E9U6wBGm','952dfaa45c5add2775085ea3a489ec19','2019-05-16 00:11:40','!3!1!'),(4,'teste','$2y$10$g8zE7KgJDzuzUqrzuAy/bOoWsXjIYyENorHmElkqscAyyzubLnWFa','1bbf472b2028505a52869b8c4ec69012','2019-05-14 14:51:08',''),(5,'josenildo','$2y$10$hynZ8HEiqVwDpaBsip6VleRQtXCq4sg0VoqgUg5AuhsU8kczW6j12','493f417c9cadf9f2dc1e54d7ce98fb7c','2019-05-16 00:10:41','!3!1!');
