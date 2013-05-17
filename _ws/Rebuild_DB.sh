# purpose: rebuild DB

dropdb -e phise
createdb -e phise

echo "
--drop database phise;
--create database phise;

-- \c phise

-- drop table obj;
create table obj(
  n integer not null default '0',
  tag integer not null default '0',
primary key (n,tag)
);

-- drop table arrow;
create table arrow
( i integer not null default '0',
  o integer not null default '0',
primary key (i,o)
);

-- drop table tag;
create table tag(
  k integer not null default '0',
  text char(100),
primary key(k)
);
---------------------------
" > pgsqlcommand.tmp

psql phise -f pgsqlcommand.tmp
