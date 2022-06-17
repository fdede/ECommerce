create database ECommerce
go

use ECommerce
go

create table Materials (
	Id int not null IDENTITY(1,1) primary key,
	Name nvarchar(100) not null,
	Code nvarchar(100) not null unique,
	CreatedDate datetime2(7) not null,
	UpdatedDate datetime2(7) not null
)
go

create table AmountTypes (
	Id int not null IDENTITY(1,1) primary key,
	Name nvarchar(100) not null,
	CreatedDate datetime2(7) not null,
	UpdatedDate datetime2(7) not null
)
go

create table OrderStatuses (
	Id int not null IDENTITY(1,1) primary key,
	Name nvarchar(100) not null,
	CreatedDate datetime2(7) not null,
	UpdatedDate datetime2(7) not null
)
go

create table WeightUnits (
	Id int not null IDENTITY(1,1) primary key,
	Name nvarchar(100) not null,
	CreatedDate datetime2(7) not null,
	UpdatedDate datetime2(7) not null
)
go

create table Orders (
	Id bigint NOT NULL IDENTITY(1,1) PRIMARY KEY,
	CustomerOrderNo varchar(100) not null,
	FromAddress varchar(max) not null,
	ToAddress varchar(max) not null,
	Amount int  not null,
	AmountTypeId int not null FOREIGN KEY REFERENCES AmountTypes(Id),
	Weight decimal(18,2) not null,
	WeightUnitId int not null FOREIGN KEY REFERENCES WeightUnits(Id),
	MaterialId int not null FOREIGN KEY REFERENCES Materials(Id),
	Note nvarchar(max),
	OrderStatusId int not null foreign key references OrderStatuses(Id),
	CreatedDate datetime2(7) not null,
	UpdatedDate datetime2(7) not null
)
go

insert into Materials values
('Monitör', 'MLZ-0001', GETDATE(), GETDATE()),
('Klavye', 'MLZ-0002', GETDATE(), GETDATE()),
('Mouse', 'MLZ-0003', GETDATE(), GETDATE()),
('Mouse Pad', 'MLZ-0004', GETDATE(), GETDATE()),
('Yemek Masası', 'MLZ-0005', GETDATE(), GETDATE())
go

insert into AmountTypes values
('Adet', GETDATE(), GETDATE()),
('Koli', GETDATE(), GETDATE()),
('Paket', GETDATE(), GETDATE()),
('Palet', GETDATE(), GETDATE())
go

insert into OrderStatuses values
('Sipariş Alındı', GETDATE(), GETDATE()),
('Yola Çıktı', GETDATE(), GETDATE()),
('Dağıtım Merkezinde', GETDATE(), GETDATE()),
('Dağıtıma Çıktı', GETDATE(), GETDATE()),
('Teslim Edildi', GETDATE(), GETDATE()),
('Teslim Edilemedi', GETDATE(), GETDATE())
go

insert into WeightUnits values
('Kg', GETDATE(), GETDATE()),
('Ton', GETDATE(), GETDATE())
go