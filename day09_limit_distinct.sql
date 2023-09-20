/*============================ LIMIT ===========================
>Tablodaki verilerin belli bir kismini listelemek icin LIMIT
 komutunu kullaniriz.
>LIMIT komutundan sonra kullandigimiz sayi kadar kaydi bize getirir.
>Eger belirli bir aralikta calismak istiyorsak bu durumda 
iki sayi gireriz, ancak bu sayilardan ilki baslangic noktamizi 
ifade ederken ikincisi kac kayit getirecegimizi belirtir. Baslangic 
noktasi dahil edilmez!
===============================================================*/

-- 1) Isciler tablosundan ilk 5 kaydi getiriniz.

SELECT *
FROM isciler
LIMIT 5;

-- 2) Isim sirali tablodan ilk 3 kaydi listeleyin.

select *
from isciler
order by isim
limit 3;

-- 3) Maas sirali tablodan 5. kayittan 7. kayda kadar olan
-- kayitlarin isim ve sehir bilgilerini listeleyin.

SELECT isim, sehir
FROM isciler
ORDER BY maas
LIMIT 4,3;

-- 4) Maasi en yuksek 3 kisinin bilgilerini listeleyen sorguyu yaziniz.

select *
from isciler
order by maas desc
limit 3;

-- 5) Maasi en dusuk 3 kisinin sadece isimlerini listeleyen sorguyu yaziniz.

select isim, sirket
from isciler
order by maas desc
limit 3;

-- 6) Maasi en dusuk 3 kisinin sadece isimlerini, isim sirali listeleyen sorguyu yaziniz.

SELECT isim,sirket
FROM isciler
ORDER BY maas ,isim
LIMIT 3;

-- 7) Maas'i 4000'den buyuk olan ilk 3 kisinin bulunduklari sehri listeleyin.

SELECT sehir, maas
FROM isciler
WHERE maas > 4000
ORDER BY maas
LIMIT 3;

/*============================ DISTINCT ===========================
    DISTINCT cumlecigi bir Sorgu ifadesinde benzer olan kayitlari
    filtrelemek icin kullanilir. Dolayisiyla secilen sutun veya 
    sutunlar icin benzersiz veri iceren satirlar olusturmaya yarar.

    Syntax :
    --------
    SELECT DISTINCT field_name1, field_name2,...

    FROM table_name
===============================================================*/

-- 1) Iscileri yasadiklari sehirler ile tekrarsiz listeleyin

SELECT DISTINCT sehir,isim
FROM isciler;

-- Group By'da bir fielda gore gruplama yapip, Aggregate Function'lar 
-- yardimiyla baska bir field'da islem yapip bize islem yaptigi field'i 
-- yeni bir field olarak donduruyor.DISTINCT cumlecigi bir Sorgu ifadesinde
-- benzer olan kayitlari filtrelemek icin kullanilir. DISTINCT komutu bize
-- bir field'daki kayitlarin tek bir ornegini dondurur.

SELECT * FROM manav;

-- 2) Manav tablosundan satilan farkli meyve turlerini listeleyen bir query yaziniz

SELECT urun_adi
FROM manav
GROUP BY urun_adi;
SELECT DISTINCT urun_adi
FROM manav;

-- 3) Satilan farkli meyve turlerinden NULL olmayanlari listeleyen 
-- bir query yaziniz

SELECT DISTINCT urun_adi
FROM manav
WHERE urun_adi IS NOT NULL;

-- 4) Satilan farkli meyve turlerinden NULL olmayanlari meyve isim sirali
-- listeleyen bir query yaziniz

SELECT DISTINCT urun_adi
FROM manav
WHERE urun_adi IS NOT NULL
order by urun_adi;

-- 5) Satin alan kisi ve meyve isimlerinden farkli olan ikilileri 
-- listeleyen query yaziniz

SELECT DISTINCT isim, urun_adi
FROM manav;



