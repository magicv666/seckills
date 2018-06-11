--数据库初始化脚本

--查看数据库建表SQL: show create table seckill;



--创建数据库
CREATE DATABASE seckill;

--使用数据库
use seckill;

--秒杀库存表
--注意：建表时，字段名称不用加引号。可以用`符号 例如： `seckill`  字符是键盘左上角，ESC下面的按键
CREATE TABLE seckill(
seckill_id bigint NOT NULL AUTO_INCREMENT COMMENT '商品库存id',
name varchar(120) NOT NULL COMMENT '商品名称',
number int NOT NULL COMMENT '库存数量',
start_time timestamp  NOT NULL COMMENT '秒杀开始时间',
end_time timestamp  NOT NULL COMMENT '秒杀结束时间',
create_time timestamp NOT NULL DEFAULT  CURRENT_TIMESTAMP  COMMENT '创建时间',
PRIMARY KEY (seckill_id),
key idx_start_time(start_time),
key idx_end_time(end_time),
key idx_create_time(create_time)
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT ='秒杀库存表';

--初始化数据
insert into seckill(name,number,start_time,end_time)
values
  ('3000秒杀iPhoneX',100,'2018-06-06 00:00:00','2018-06-07 00:00:00'),
  ('1000秒杀红米NOTE',200,'2018-06-06 00:00:00','2018-06-07 00:00:00'),
  ('5000秒杀MACBOOT AIR',20,'2018-06-06 00:00:00','2018-06-07 00:00:00'),
  ('500秒杀华为荣耀11',70,'2018-06-06 00:00:00','2018-06-07 00:00:00');

--秒杀明细表：
CREATE TABLE success_killed(
`seckill_id` bigint NOT NULL COMMENT '秒杀商品id',
`user_phone` bigint NOT NULL COMMENT '用户手机号',
`state` tinyint NOT NULL DEFAULT  -1 COMMENT '状态提示 -1：失效 0：成功 1：已付款',
`create_time` timestamp  NOT NULL COMMENT '创建时间',
PRIMARY KEY(seckill_id,user_phone),
key idx_create_time(create_time)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='秒杀明细表';
