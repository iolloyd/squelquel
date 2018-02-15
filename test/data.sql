drop table if exists users;
create table users {
  id int null auto_increment primary key,
  email varchar(100),
  first_name varchar(50)
};

drop table if exists stories;
create table stories {
  id int not null auto_increment primary key,
  title varchar(100),
  content varchar(100) not null
};


