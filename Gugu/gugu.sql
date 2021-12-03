
DROP DATABASE IF EXISTS gugu;
DROP USER IF EXISTS  gugu@localhost;
create user gugu@localhost identified by 'gugu';
create database gugu;
grant all privileges on gugu.* to gugu@localhost with grant option;

USE gugu;

create table t99 (
	2단 varchar(20),
	3단 varchar(20),
	4단 varchar(20),
	5단 varchar(20),
	6단 varchar(20),
	7단 varchar(20),
	8단 varchar(20),
	9단 varchar(20)
);

INSERT INTO t99 SELECT
	CONCAT(st2.s2, '*' , mby.mby , '=', mby.mby * st2.s2),
	CONCAT(st3.s3, '*' , mby.mby , '=', mby.mby * st3.s3),
	CONCAT(st4.s4, '*' , mby.mby , '=', mby.mby * st4.s4),
	CONCAT(st5.s5, '*' , mby.mby , '=', mby.mby * st5.s5),
	CONCAT(st6.s6, '*' , mby.mby , '=', mby.mby * st6.s6),
	CONCAT(st7.s7, '*' , mby.mby , '=', mby.mby * st7.s7),
	CONCAT(st8.s8, '*' , mby.mby , '=', mby.mby * st8.s8),
	CONCAT(st9.s9, '*' , mby.mby , '=', mby.mby * st9.s9)
FROM (
	SELECT 1 mby UNION ALL
	SELECT 2 mby UNION ALL
	SELECT 3 mby UNION ALL
	SELECT 4 mby UNION ALL
	SELECT 5 mby UNION ALL
	SELECT 6 mby UNION ALL
	SELECT 7 mby UNION ALL
	SELECT 8 mby UNION ALL
	SELECT 9 mby
) mby CROSS JOIN
	(SELECT 2 s2) st2,
	(SELECT 3 s3) st3,
	(SELECT 4 s4) st4,
	(SELECT 5 s5) st5,
	(SELECT 6 s6) st6,
	(SELECT 7 s7) st7,
	(SELECT 8 s8) st8,
	(SELECT 9 s9) st9;
    
SELECT * FROM t99;
