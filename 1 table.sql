use RealtyDB
go 
drop table if exists Realty 
go 
create table dbo.Realty(
    RealtyID int not null identity primary key,
    HouseAddress varchar(50) not null 
        constraint ck_Realty_HouseAddress_cannot_be_blank check(HouseAddress <> ''),
    Town varchar(25) not null
        constraint ck_Realty_Town_cannot_be_blank check(Town <> ''),
    HouseType varchar(25) not null,
    Bedrooms int not null,
    Bathrooms int not null,
    SquareFootageHouse int 
        constraint ck_Realty_SquareFootageHouse_must_be_greater_than_0 check(SquareFootageHouse > 0),
    SquareFootageLot int 
        constraint ck_Realty_SquareFootageLot_must_be_greater_than_0 check(SquareFootageLot > 0),
    HouseOwner varchar(50) not null 
        constraint ck_Realty_HouseOwner_cannot_be_blank check(HouseOwner <> ''),
    Realtor varchar(50) not null   
        constraint ck_Realty_Realtor_cannot_be_blank check(Realtor <> ''),
    Client varchar(50) not null 
        constraint ck_Realty_Client_cannot_be_blank check(Client <> ''),
    DatePutOnMarket date,
    DateSold date
        constraint ck_Realty_DateSold_must_be_less_than_or_equal_to_current_date check(DateSold < = getdate()),
    AskingPrice int not null,
    PriceSold int 
        constraint ck_Realty_PriceSold_between_100_and_9M check(PriceSold between .1 and 9.9),
    Buyer varchar(50),
    constraint ck_Realty_PriceSold_is_greater_than_or_equal_to_AskingPrice check(PriceSold > = AskingPrice)
       
)

