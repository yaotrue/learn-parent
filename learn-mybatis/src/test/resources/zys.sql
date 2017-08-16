SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS t_ma_news;




/* Create Tables */

-- 新闻、博客表
CREATE TABLE t_ma_news
(
	id bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
	title mediumtext COMMENT '标题',
	content mediumtext COMMENT '内容',
	small_img_uri varchar(300) COMMENT '小图URI',
	big_img_uri varchar(300) COMMENT 'big_img_uri',
	author varchar(200) COMMENT '发布人',
	create_time timestamp COMMENT '创建时间',
	type tinyint COMMENT '类型',
	status tinyint COMMENT '状态',
	PRIMARY KEY (id)
) COMMENT = '新闻、博客表';



