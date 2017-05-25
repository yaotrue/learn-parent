SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS t_pd_category;




/* Create Tables */

-- 分类
CREATE TABLE t_pd_category
(
	id bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
	parent_id bigint NOT NULL COMMENT '父分类ID',
	category_name varchar(256) COMMENT '分类名',
	category_code varchar(256) COMMENT '分类编码',
	level tinyint COMMENT '级别',
	status tinyint COMMENT '状态',
	create_time timestamp COMMENT '创建时间',
	update_time timestamp COMMENT '更新时间',
	PRIMARY KEY (id),
	UNIQUE (category_code)
) COMMENT = '分类' DEFAULT CHARACTER SET utf8;



/* Create Foreign Keys */

ALTER TABLE t_pd_category
	ADD FOREIGN KEY (parent_id)
	REFERENCES t_pd_category (id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



