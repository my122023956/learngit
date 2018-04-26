create table t_mxmc(
	id		int(8) primary key auto_increment,
	cname	varchar(32),
	curl	varchar(64),
	ctype	varchar(32)
) default charset=utf8;

insert into t_mxmc(cname,curl,ctype) values
	('Jackery app','img/casePgImg(1).jpg','wx'),
	('律生活在线法律服务平台','img/casePgImg(2).jpg','wx'),
	('优品汇手机助手','img/casePgImg(3).jpg','app'),
	('我开始健身pad端app','img/casePgImg(4).jpg','app'),
	('四维图新 - 趣逛地图','img/casePgImg(5).jpg','wx'),
	('硅谷明星教育团队米豆教育','img/casePgImg(6).jpg','web'),
	('携手正量网开创工程建设电商','img/casePgImg(7).jpg','web'),
	('vivo Xplay5双曲面屏','img/casePgImg(8).jpg','wx'),
	('零担速配APP案例','img/casePgImg(9).jpg','app');
