# purpose: rebuild DB

dropdb -e phise
createdb -e phise

echo "
--drop database phise;
--create database phise;

-- \c phise

-- drop table obj; 		-- table obj definition
create table obj(
  n integer not null default '0',
  tag integer not null default '0',
primary key (n,tag)
);

-- drop table arrow;	-- table:arrow definition
create table arrow
( i integer not null default '0',
  o integer not null default '0',
primary key (i,o)
);

-- drop table tag; -- table:tag definition
create table tag(
  k integer not null default '0',
  text char(100),
primary key(k)
);
---------------------------
" > pgsqlcommand.tmp

psql phise -f pgsqlcommand.tmp

