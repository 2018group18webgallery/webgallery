--------------------------------------Download---------------------------------
create table download(
DownloadId int identity(1,1) primary key,
UserId int ,
PictureCode varchar(100),
DownloadDate datetime);





-----------------------Users --------------------------------------
create table users(UserId int not null primary key identity(1,1), 
Username nvarchar(100) ,
Email varchar(255) ,
Password varchar(255),
CreditCardType varchar(50),
CreditCardNumber varchar(50),
CreditCardExpirationDate varchar(50),
 );

 -------------------
  create table user_pass(
  Username varchar(50) not null primary key,
  Password varchar(50) not null);



  drop table user_pass;

  INSERT INTO user_pass values('tphuong','ahihi'),('trucphuong','ahihi');
  --------------
  create table user_role(
  Username varchar(50) not null ,
  Rolename varchar(50)not null ,primary key(Username,Rolename));
drop table user_role;
Insert into user_role values('tphuong','programer'),
('trucphuong','programer'),
('trucphuong','service');

select * from users;
------------------------------Category-----------------------------------
Create table category(
CategoryId int identity(1,1) primary key,
CategoryName varchar(20)
);

select * from category;

drop table category;
-----------------------------------------Picture-----------------------------
create table picture(
PictureId int identity(1,1) primary key,
PictureCode varchar(100),
Capacity bigint ,
CategoryId int
foreign key (CategoryId) references category(CategoryId)
);
------------------------------------Service-------------------------
create table services(
ServiceId int identity(1,1) primary key,
ServiceName varchar(20),
ServicePrice decimal(7,2));

-----------------------------Payment------------------------------
create table payment(
PaymentId int identity(1,1) primary key,
UserId int  not null default'0',
ServiceId int not null default'0',
Amount decimal(7,2) default'0.0',
PaymentDate DateTime not null default'0000-00-00 00:00:00',
PaymentTypeId int,
foreign key (UserId) references users(UserId),
foreign key (PaymentTypeId) references payment_type(PaymentTypeId));

------------------------PaymentType---------------------------
create table payment_type(
PaymentTypeId int identity(1,1) primary key,
PaymentTypeDescription varchar(64));

drop table payment_type;