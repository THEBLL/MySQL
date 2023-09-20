/*==============================================
               VERI GIRISI - INSERT
===============================================*/

-- INSERT INTO + table adi + values + (std_id CHAR(4), std_name VARCHAR(25), std_age int)
-- Degerleri girerken dikkat edilmesi gereken husus, Tabloyu
-- olustururken degerleri atadigimiz veri cinsinden olmasi
-- String ifadeleri tek tirnak icinde yaziyoruz.
-- Date data tipi de String gibi tek tirnak icine yazilir,
-- ayrica MySQL'in default tarih formati YYYY-MM-DD seklindedir

/***********************************************************************
-> Bir field'a kaydedilecek verileri UNIQUE yapmak icin 
table olustururken field isminin yanina UNIQUE yaziyoruz.
-> Bir field'a kaydedilecek verilerde null olmasin istiyorsak
table olustururken field isminin yanina NOT NULL  yaziyoruz.
************************************************************************/

-- Fen lisesi ogrencilerinin okul no, isim, derece, adres ve 
-- son degisiklik tarihi field'lari olan tablosunu hazirlayalim
-- okul no field'i UNIQUE olmali, isim field'i da bos birakilmasin.alter

CREATE TABLE fen_lisesi(
okul_no INT UNIQUE,
isim varchar(20) not null,
derece double,
adres varchar(20),
son_degisiklik_tarihi date
);

select * from fen_lisesi;

-- UNIQUE Oolarak belirlemedigimiz bir field'a istedigimiz kadar NULL deger kaydedebiliriz
-- ancak data tipi String ise hiclik ifadesini sadece 1 kere kaydeder,
-- diger kayitlarda dublicate hatasi verir.  

INSERT INTO fen_lisesi values (101,'Mertkan Serefoglu', 4.3, 'Hatay', '2023-09-06');
INSERT INTO fen_lisesi values (102,'Arif Emre Comert', 4.5, 'Nigde', '2023-09-06');
INSERT INTO fen_lisesi values (103,'Resul Acar', 4.3, 'Istanbul', '2023-09-06');
INSERT INTO fen_lisesi values (104,'Gulay Gumus', 4.8, 'Hatay', '2023-09-06');
INSERT INTO fen_lisesi values (105,'Hilal Ciftci', 4.9, 'Istanbul', '2023-09-06');
INSERT INTO fen_lisesi values (106,'Gulsah Özkan', 5.0, 'Leeds', '2023-09-06');
INSERT INTO fen_lisesi values (107,'Yusuf Ihsan Esen', 3.2, 'Istanbul', '2023-09-06');
INSERT INTO fen_lisesi values (108,null, 3.2, 'Istanbul', '2023-09-06');  -- isim degeri null oldugu icin kabul etmez
INSERT INTO fen_lisesi values (108,'Ramazan Tarhana', 2.8, null, '2023-09-06');
INSERT INTO fen_lisesi values (109,'Halin Gunes', null, 'Kahramanmaras', '2023-09-06');
INSERT INTO fen_lisesi values (null,'Samet Ari', '4.5', 'Ankara', '2023-09-06');
INSERT INTO fen_lisesi values (null,'Esref Gezer', '4.5', 'Batman', '2023-09-06');

-- tabloyu görmek icin tekrar tekrar seleck * from fen_lisesi; yazmaya gerek yok yukardanda calistirilir

/*
Q1 : okul no, isim, adres, derece fieldlari olan
anadolu lisesi table olusturun. okul_no char ve unique,
isim not null olacak.
*/

use sys;
CREATE TABLE anadolu_lisesi(
okul_no char(6) unique,
isim varchar(20) not null,
adres varchar(20),
derece double
);

select * from anadolu_lisesi; 

INSERT INTO anadolu_lisesi VALUES ('101','Esat Fatih','Ankara',4.7);
INSERT INTO anadolu_lisesi VALUES ('102','Yusuf Rahman','Ankara',4.8);
INSERT INTO anadolu_lisesi VALUES ('103','Sevda Bagci','Istanbul',3.5);
INSERT INTO anadolu_lisesi VALUES ('104','Muhammet Ozyon','Ankara',4.3);
INSERT INTO anadolu_lisesi VALUES ('105','Saida Aliyeva','Ankara',4.1);
INSERT INTO anadolu_lisesi VALUES ('106','Cemil Cetin','Mardin',4.9);
INSERT INTO anadolu_lisesi VALUES ('','Mustafa Anar','Erzurum',4.6);
INSERT INTO anadolu_lisesi VALUES ('','Bugra Kagan','Kayseri',4.6 ); -- bunu kaydetmez dublicate hatasi verir
INSERT INTO anadolu_lisesi (okul_no, isim) VALUES ('107','Bugra Kagan'); 
INSERT INTO anadolu_lisesi (isim, derece, okul_no) VALUES ('Tugba Akgun',4.7,'108');
INSERT INTO anadolu_lisesi (derece, okul_no) VALUES (4.7,'109'); -- isim degeri icermedigi icin kaydetmez











