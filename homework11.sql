CREATE TABLE user
(
user_id int not null auto_increment,
name varchar(20) not null ,
surname varchar(30) not null ,
date_of_registration date not null ,
primary key(user_id)
);

CREATE TABLE wallet
(
wallet_id int not null auto_increment,
currency varchar(20) not null,
amount bigint not null,
user_id int not null ,
created date not null ,
primary key(wallet_id),
foreign key(user_id) references user(user_id) on update cascade on delete cascade
);

insert into user
(name ,surname ,date_of_registration)
values
('Andrey','Ivanov','2016-10-18'),
('Ekaterina','Stepanova','2017-02-23'),
('Mariya','Sharapova' ,'2018-03-11'),
('Nataliya','Samsonova' ,'2019-03-11'),
('Maria','Teryannikova' ,'2017-07-08'),
('Nikolay','Solovey','2020-05-20'),
('Anna','Elizova','2015-08-13');

insert into wallet
(currency ,amount ,user_id,created)
values
('Hryvna',65435,1,'2015-09-23'),
('Dollar',2345,2,'2015-09-12'),
('Euro',5653,3,'2017-02-22'),
('Hryvnia',76423,4,'2020-02-07'),
('Dollar',546446,5,'2020-05-20'),
('Hryvna',2476297,6,'2021-10-21'),
('Euro',376975,1,'2021-08-12');

select name , currency ,amount from wallet inner join user on wallet.user_id=user.user_id ;