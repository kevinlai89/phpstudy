CREATE TABLE IF NOT EXISTS `kevincms` (
`id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
`title`  varchar(255) NULL  COMMENT '产品名称',
`img`  int(10) UNSIGNED NULL  COMMENT '产品图片',
`content`  text  NULL  COMMENT '产品备注',
`cTime`  int(10) NULL  COMMENT '发布时间',
`productPrice`  int(10) NULL  COMMENT '产品价格',
`PriceValidityTime`  int(10) NULL  COMMENT '价格有效期',
`OrderProductNo`  int(10) NULL  COMMENT '订购号',
PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci CHECKSUM=0 ROW_FORMAT=DYNAMIC DELAY_KEY_WRITE=0;
INSERT INTO `kevinmodel` (`name`,`title`,`extend`,`relation`,`need_pk`,`field_sort`,`field_group`,`attribute_list`,`template_list`,`template_add`,`template_edit`,`list_grid`,`list_row`,`search_key`,`search_list`,`create_time`,`update_time`,`status`,`engine_type`,`addon`) VALUES ('cms','CMS内容','0','','1','["title","productPrice","content","img","PriceValidityTime","OrderProductNo"]','1:基础','','','','','OrderProductNo:订购号\r\nimg|get_img_html:产品图片\r\ntitle:产品名称\r\nproductPrice:产品价格\r\ncTime|time_format:发布时间\r\nPriceValidityTime|time_format:价格有效期\r\nid:操作:[EDIT]|编辑,[DELETE]|删除','10','title:请输入产品名称进行搜索','','1474906785','1485747928','1','MyISAM','Cms');
INSERT INTO `kevinattribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('title','产品名称','varchar(255) NULL','string','','','1','','0','','1','1','1485323504','1474906975','','3','','regex','','3','function');
INSERT INTO `kevinattribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('img','产品图片','int(10) UNSIGNED NULL','picture','','上传图片大小建议不超过500K','1','','0','','0','1','1485323516','1474907137','','3','','regex','','3','function');
INSERT INTO `kevinattribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('content','产品备注','text  NULL','textarea','','','1','','0','','0','1','1485323524','1474907235','','3','','regex','','3','function');
INSERT INTO `kevinattribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('cTime','发布时间','int(10) NULL','datetime','','','0','','0','','0','1','1474907449','1474907326','','3','','regex','time','1','function');
INSERT INTO `kevinattribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('productPrice','产品价格','int(10) NULL','num','','','1','','0','','1','1','1485323437','1485323437','','3','','regex','','3','function');
INSERT INTO `kevinattribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('PriceValidityTime','价格有效期','int(10) NULL','date','','','1','','0','','0','1','1485747542','1485747542','','3','','regex','','3','function');
INSERT INTO `kevinattribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('OrderProductNo','订购号','int(10) NULL','num','','','1','','0','','0','1','1485747846','1485747846','','3','','regex','','3','function');
UPDATE `kevinattribute` a, kevinmodel m SET a.model_id = m.id WHERE a.model_name=m.`name`;


