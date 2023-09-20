

-- burasi yorum satiri

/*

bu aralikta

istedigim sayida 

satira yorum

yazabiliyorum

*/

/*========================================

    TABLO OLUSTURMA 1 (CRUD - Create)

========================================*/

/*-----------syntax-----------------------------------

create table_name
(
field_name DATATYPE,
field_name DATATYPE,
field_name DATATYPE, etc...
);

======================================================*/

-- id, isim, not ortalamasi, adres ve son degistirme tarihi
-- fieldlari iceren bir ogrenciler table'i olusturunuz.

USE sys;  -- no database select diyorsa bunu yazmamissindir 

-- tabloyu silersek tablo silinmis olmaz cunku create ettik
CREATE TABLE ogrenciler(
id CHAR(4),
isim VARCHAR(20),
not_ortalamasi DOUBLE,
adres VARCHAR(100),
son_degistirme_tarihi DATE
);
-- ogrenciler adinda bir tablo olusturdumuz icin bir daha calistirirsak already exists cevabi aliriz

SELECT * FROM ogrenciler;   -- tabloyu görmek istersem bu komutu istedigim kadar calistirabiliyorum

/*===============================================
	VAROLAN TABLODAN TABLO OLUSTURMAK
=================================================

------------Syntax--------------------------

create table table_name
AS
SELECT  field1, field2
from other_table_name
*/

-- ogrenciler tablosundan "isim" ve "not ortalamsi" fieldlarini
-- alarak ogrenci_derece isimli yeni bir tablo olusturun

create table ogrenci_derece
as
select isim, not_ortalamasi
from ogrenciler;

select * from ogrenci_derece;

/*-----------------------------------------------
Q1: "tedarikcciler" isminde bir tablo olusturun.
"tedarikci_id", "tedarikci_ismi", "tedarikci_adres" ve
"ulasim_tarihi" field'lari olsun.
-------------------------------------------------*/

create table tedarikcciler(

tedarikci_id char(4),
tedarikci_ismi varchar(20),
tedarikci_adres varchar(100),
ulasim_tarihi date
);

select * from tedarikcciler;
-- select tedarikci_id from tedarikcciler; 


/*---------------------------------------------
Q2 : "tedarikcciler" table'indan "tedarikci_ismi ve 
"ulasim_tarihi" field'lari olan "tedarikciler_son"
isimli yeni bir table olusturun.
----------------------------------------------*/

create table tedarikciler_son
as
select tedarikci_ismi, ulasim_tarihi
from tedarikcciler;

select * from tedarikcciler;















