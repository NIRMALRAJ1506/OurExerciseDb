create database OurExerciseDb
on primary(Name='Customer_Db',Filename='C:\Mphasis Db connectivity\Day 1\Excercises\OurExercise_Db.mdf',
size=24MB,Maxsize=48MB, filegrowth=8MB)
log on(name='Customer_Db_log',filename='C:\Mphasis Db connectivity\Day 1\Excercises\OurExercise_Db_log.ldf')
COLLATE	SQL_Latin1_General_CP1_CI_AS

use OurExerciseDb

create table Product
(PId int primary key identity(50,1),
PName nvarchar(50) not null,
PPrice float check(PPrice>=50 and PPrice<=100000),
PCompany nvarchar(50) check(PCompany in('Samsung','Apple','Redmi','HTC')),
PQty int check(PQty>=1) default 1
)

insert into Product values('Sam',45000.50,'Samsung',2)
insert into Product values('Hamid',33000.35,'HTC',1)
insert into Product values('Riya',24000,'Samsung',4)
insert into Product values('Kamal',29000,'Redmi',3)
insert into Product values('Anirudh',50000,'Apple',1)

select * from Product