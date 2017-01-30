DELETE FROM `kevinattribute` WHERE `model_name`='feedback';
DELETE FROM `kevinmodel` WHERE `name`='feedback' ORDER BY id DESC LIMIT 1;
DROP TABLE IF EXISTS `kevinfeedback`;


