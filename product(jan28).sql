use WFA3DotNet
--1.Create a table Product
create table Product(
	Productid int not null primary key identity (1,1),
	Description varchar(30) not null Unique,
	setqty int not null check(setqty=1 or setqty=5 or setqty=10) Default 1,
	Rate decimal(10,2) check(rate>=51 And rate<=5000)
)
--2.Insert 20 records
insert into Product values('Mint-o',1,51.5)
insert into Product values('GumOn',5,658)
insert into Product values('Savlon',10,777)
insert into Product values('Nimyle',5,321.88)
insert into Product values('Classmate',10,945)
insert into Product values('FarmList',5,1000)
insert into Product values('Sunfeast',10,550)
insert into Product values('MomsMagic',5,500.69)
insert into Product values('Fiama',5,980)
insert into Product values('CandyMan',10,870)
insert into Product values('Natural',5,400)
insert into Product values('DarkFantasy',1,247)
insert into Product values('Bingo',1,150)
insert into Product values('Engage',5,2000)
insert into Product values('Superia',10,450)
insert into Product values('Aashirvaad',5,500)
insert into Product values('StoS',10,51)
insert into Product values('PaperKraft',5,100)
insert into Product values('John Player',1,1222.22)
insert into Product values('Wills',10,1500.95)

--3.Update all the rates with 10% rate hike

update Product set rate=(rate*1.1) from Product

--4.Delete last record by providing the ProductID.
delete from product where ProductId=20

--5.Alter the above table and add the following column
alter table product add Margincode char(1)
check(margincode='A' or margincode='B' or margincode=null)

--6.Update few records to set MarginCode to A and some records MarginCode to B

update product set margincode='A' where rate>2000

update product set margincode='B' where rate<100

--update Product set setqty=1 where margincode='A'
--7.Update all the SetQty to 10 for all Items which have MarginCode A and whose original SetQty is 1.

update product set SetQty=10 where margincode='A' and setqty=1
select * from Product
