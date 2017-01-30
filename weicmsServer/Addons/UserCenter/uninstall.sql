DELETE FROM `kevinattribute` WHERE `model_name`='user_tag';
DELETE FROM `kevinmodel` WHERE `name`='user_tag' ORDER BY id DESC LIMIT 1;
DROP TABLE IF EXISTS `kevinuser_tag`;


DELETE FROM `kevinattribute` WHERE `model_name`='user_tag_link';
DELETE FROM `kevinmodel` WHERE `name`='user_tag_link' ORDER BY id DESC LIMIT 1;
DROP TABLE IF EXISTS `kevinuser_tag_link`;


