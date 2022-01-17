delete Realty 

insert Realty(HouseAddress, Town, HouseType, Bedrooms, Bathrooms, SquareFootageHouse, SquareFootageLot, HouseOwner, Realtor, 
Client, DatePutOnMarket, DateSold, AskingPrice, PriceSold, Buyer)
select '5 Lynn Drive', 'Toms River', 'Colonial', 4, 2.5, '3000', '42000', 'Lynn Drive, LLC', 'RivkaHarnik', 'Yaakov Fishman', '1/12/2021', '2/22/2021', .450, .475, 'Rachel Gestetner'
union select '8 London Drive', 'Lakewood', 'Ranch', 3, 2, 2000, 4089, 'Shaindy Braun', 'Raizy Berger', 'Shaindy Braun', '4/5/2009', '7/10/2010', .200, .200, 'Elazar and Faigy Adler'
union select '423 2nd Street', 'Lakewood', 'Colonial', 9, 5.5, 3500, 4200, 'L3C Jackson, LLC', 'Rivka Harnik', 'Mark Farkas', '1/6/2015', '6/9/2015', .360, .370, 'Yossi Handler and Rivky Handler'
union select '176 Hadassah Lane', 'Lakewood', 'duplex', 5, 2.5, 2550, 3049.2, 'Greenview Equities, LLC', 'shlomo press', 'Moshe Celnik', '5/3/2021', null, .549, .600, null, 'Shea Speigel'
union select '1141 Central Avenue', 'Lakewood', 'ranch', 3, 1, 855, 5000, 'Sorah Hager', 'Yitzchok Tendler', 'Moshe Celnik', '1/2/2022', null, .300, null