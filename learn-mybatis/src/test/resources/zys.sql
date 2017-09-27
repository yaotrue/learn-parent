SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Indexes */

DROP INDEX T_MA_NEWS_LANG_NEWLANG ON t_ma_news_lang;



/* Drop Tables */

DROP TABLE IF EXISTS t_ma_news_image;
DROP TABLE IF EXISTS t_ma_news_lang;
DROP TABLE IF EXISTS t_ma_news;




/* Create Tables */

-- 新闻、博客表
CREATE TABLE t_ma_news
(
	id bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
	create_time timestamp COMMENT '创建时间',
	type tinyint COMMENT '类型',
	status tinyint COMMENT '状态',
	PRIMARY KEY (id)
) COMMENT = '新闻、博客表';


-- 新闻、博客关联图片
CREATE TABLE t_ma_news_image
(
	id bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
	news_id bigint COMMENT '新闻、博客ID',
	sort_no int COMMENT '排序号',
	pic_uri varchar(500) COMMENT '图片URI',
	create_time timestamp COMMENT '创建时间',
	PRIMARY KEY (id)
) COMMENT = '新闻、博客关联图片';


-- 新闻、博客多语言表
CREATE TABLE t_ma_news_lang
(
	id bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
	new_id bigint COMMENT '新闻、博客ID',
	title mediumtext COMMENT '标题',
	intro mediumtext COMMENT '简介',
	content mediumtext COMMENT '内容',
	author varchar(200) COMMENT '发布人',
	create_time timestamp COMMENT '创建时间',
	lang varchar(100) COMMENT '语言值',
	PRIMARY KEY (id)
) COMMENT = '新闻、博客多语言表';



/* Create Indexes */

CREATE INDEX T_MA_NEWS_LANG_NEWLANG ON t_ma_news_lang (new_id ASC, lang ASC);



