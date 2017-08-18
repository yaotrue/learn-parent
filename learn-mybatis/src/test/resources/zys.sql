SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS t_ma_news_lang;
DROP TABLE IF EXISTS t_ma_news;




/* Create Tables */

-- 新闻、博客表
CREATE TABLE t_ma_news
(
	id bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
	small_img_uri varchar(300) COMMENT '小图URI',
	big_img_uri varchar(300) COMMENT '大图URI',
	create_time timestamp COMMENT '创建时间',
	type tinyint COMMENT '类型',
	status tinyint COMMENT '状态',
	PRIMARY KEY (id)
) COMMENT = '新闻、博客表';


-- 新闻、博客多语言表
CREATE TABLE t_ma_news_lang
(
	id bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
	new_id bigint COMMENT '新闻、博客ID',
	title mediumtext COMMENT '标题',
	content mediumtext COMMENT '内容',
	author varchar(200) COMMENT '发布人',
	create_time timestamp COMMENT '创建时间',
	lang varchar(100) COMMENT '语言值',
	PRIMARY KEY (id)
) COMMENT = '新闻、博客多语言表';



