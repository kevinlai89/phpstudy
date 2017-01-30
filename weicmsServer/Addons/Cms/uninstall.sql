DELETE FROM `kevinattribute` WHERE `model_name`='cms';
DELETE FROM `kevinmodel` WHERE `name`='cms' ORDER BY id DESC LIMIT 1;
DROP TABLE IF EXISTS `kevincms`;


