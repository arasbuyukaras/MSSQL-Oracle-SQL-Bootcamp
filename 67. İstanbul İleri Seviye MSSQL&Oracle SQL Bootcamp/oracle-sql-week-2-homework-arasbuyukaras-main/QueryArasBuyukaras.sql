-- Kotasý limitsiz olan ürünler hangileridir? ----Telco þemasý için
Select * FROM TELCO.PRODUCT where quota='LIMITLESS';
-- Statüsü 'Initial' olan müþterileri bulunuz. ----Telco þemasý için
Select * FROM TELCO.customer where status='INITIAL';
-- Þehir bilgisi 'ISTANBUL' olan adresleri bulunuz. ----Telco þemasý için
Select * from TELCO.address where CITY='ISTANBUL';
-- Birim fiyatý 150'den büyük olan order_itemlarý bulunuz. ----Sales þemasý için
SELECT * FROM SALES.order_ýtems where unýt_price>150;
-- Ýþe alým tarihi Mayýs 2016 olan çalýþanlarý bulunuz. ----Sales þemasý için
SELECT * FROM SALES.employees where to_char(hire_date,'mm-yyyy')>'06-2016';
-- Adý Charlie ya da Charlsie olan contactlarý bulunuz. ----Sales þemasý için
SELECT * FROM SALES.contacts where first_name IN('Charlie','Charlsie');
--Yýlýn 4. aylarýnda en çok hangi amaçla kredi çekilmistir? ----Banking þemasý için
select PURPOSE,COUNT(PURPOSE)from "BANKING"."LUXURY_LOAN_PORTFOLIOS" where TO_CHAR(funded_date,'mm')=4 group by PURPOSE;
-- Adet sayýsý 10dan büyük 50den küçük envanterleri bulunuz. ----Sales þemasý için
Select * from SALES.ýnventorýes where quantýty between 10 and 50;
-- Birincil iletiþim bilgisi olmayan telefon numaralarýný bulunuz. ----Telco þemasý için
select * from TELCO.CUSTOMER;
-- Bir sipariþte toplam 100.0000'den fazla ücret ödeyen emirler nedir? ----Sales þemasý için
Select * from SALES.Products where lýst_prýce>100000;
-- Bankanýn 50 ve ya 51 yaþýnda kadýn müþterilerinden ayný isme sahip olan müþterisi/müþterileri var mý? Varsa isimleri neler?----Banking þemasý için
SELECT * FROM bankýng.cl
-- Hesap ödeme þekli nakit olmayan hesaplar hangileridir? ----Telco þemasý için
Select * from TELCO.account where payment_type!='CASH';
-- Statüsü deaktif olan müþterilerin baðlantý kesim tarihleri nedir? ----Telco þemasý için
Select býllýng_day from TELCO.Account where status='DEACTIVE';
-- Manager'ý olmayan çalýþanlar hangileridir? ----Sales þemasý için
select * from SALES.Employees where Manager_Id is null;
-- State bilgisi boþ olan lokasyonlarý bulunuz.----Sales þemasý için
SELECT * from SALES.LOCATIONS where state is null;
-- Hesap kapanýþ tarihi dolu olan hesaplarý bulunuz. ----Telco þemasý için
select * FROM TELCO.Account where account_closýng_date is not null;
-- Elektronik fatura mail adresi (E_bill_email) olan hesaplar hangileridir? ----Telco þemasý için
select * FROM TELCO.Account where e_býll_emaýl is not null;
-- Durumu iptal olan ve satýcýlarý olmayan emirler hangileridir? ----Sales þemasý için
SELECT * FROM SALES.Orders where status='Canceled' and salesman_ýd is null;
-- Sözleþme bitiþ tarihi 1 Ocak 2000'den büyük , 1 Ocak 2005'ten küçük olan sözleþmeleri bulunuz. ----Telco þemasý için
Select * from TELCO.agreement where commýtment_end_date between '01.01.2000' and '01.01.2005';
-- Ocak 2016 ile Haziran 2016 arasýnda verilen sipariþler hangileridir? ----Sales þemasý için
SELECT * FROM SALES.Orders where order_date between to_char(order_date,'mm-yyyy')>'01-2016' and to_char(order_date,'mm-yyyy')>'06-2016';
-- 2005 yýlýndan önce yapýlan ve hala aktif olan subscriptionlar hangileridir? ----Telco þemasý için
select * from TELCo.subscrýptýon where Status='ACTIVE' and extract(YEAR from Activation_date)<=2005;
-- Sözleþme baþlangýç tarihi Ocak 2010'dan büyük olan sözleþmeleri bulunuz. ----Telco þemasý için
Select * from TELCO.agreement where to_char(commýtment_start_date,'mm-yyyy')>'01-2010';
-- Ýsmi E ile baþlayan müþterileri bulunuz. ----Telco þemasý için
Select * from TELCO.customer where name like 'E%';
-- Product tipi 'DSL' ile biten ürünleri bulunuz. ----Telco þemasý için
Select * from TELCO.Product where product_type like '%DSL';
-- Unvaný 'S' ile baþlamayan çalýþanlarý bulunuz. ----Sales þemasý için
Select * from SALES.Employees where job_týtle not like 'S%';
-- Herhangi bir çeþit Intel Xeon ürünler hangileridir? ----Sales þemasý için
Select * from SALES.products where product_name like '%Intel Xeon%';
-- Ýsminde ya da soyisminde 'ü' harfi geçen müþteriler hangileridir? ----Telco þemasý için
select * from TELCO.customer where Name  like '%ü%' or Surname like '%ü%';
-- Ýsmi 'C' ile baþlayan kontaklar hangileridir? Soyadýna göre alfabetik sýra ile sýralayalým. ----Sales þemasý için
select * from SALES.contacts where fýrst_name like 'C%' order by last_name asc;
-- Ürün adý 'Asus' ile baþlayan ve liste fiyatý standart ücretinden küçük olan ürünleri bulunuz. ----Sales þemasý için
Select * from SALES.products where product_name like 'Asus%' and lýst_prýce<standard_cost;
-- Ülke kodu UK ve AU olan adresleri bulunuz.----Telco þemasý için
select * from TELCO.address where country_cd IN ('UK','AU');
-- 1,2,4,5 id'li kategorilerin bilgilerini bulunuz. ----Sales þemasý için
select * from SALES.products where category_id IN (1,2,4,5);
-- Taahhüt süresi 240 ve 120 ay olan bütün sözleþmeleri bulmak istiyoruz.----Telco þemasý için
select * from TELCO.agreement where commýtment_duratýon IN ('240 MONTHS','120 MONTHS');
-- Sipariþ durumu 'Shipped'den farklý olan müþterilerin bilgilerini bulunuz. ----Sales þemasý için
Select * from SALES.Orders where status!='Shipped';
-- Adet sayýsý 100e eþit olan envanterlerin product bilgisini bulunuz. ----Sales þemasý için
Select * from SALES.ýnventorýes where quantity = 100; 
-- Sözleþme alt tipi MAIN olan kaç tane sözleþme vardýr?----Telco þemasý için
select * from TELCO.agreement where subtype='MAIN';
-- Deaktif müþterilerin sayýsýný bulunuz.----Telco þemasý için
Select * from TELCO.Customer where status='DEACTIVE';
-- Beijing (8 numaralý warehouse)'da kaç farklý envanter vardýr? ----Sales þemasý için
Select * from SALES.ýnventorýes where warehouse_ýd=8;
-- Ýletiþim tipi olarak email ve statusu kullanýmda olan kaç müþteri var?----Telco þemasý için
SELECT COUNT(CUSTOMER_ID) FROM TELCO.contact where CNT_TYPE='EMAIL' and STATUS='USED';
-- Liste fiyati 1000 ile 3000 arasinda olan kaç product var?----Sales þemasý için
Select COUNT(Product_ID) FROM SALES.products where lýst_prýce between 1000 and 3000;
--Hangi yýllarda kaç hesap açýlmýþtýr?----Banking þemasý için
SELECT YEAR,COUNT(YEAR) FROM ACCOUNTS GROUP BY YEAR;
-- Ýþlemlerin tiplerine göre toplam sayýlarýnýn büyükten küçüðe sýralamasý nedir?----Banking þemasý için
SELECT TYPE,COUNT(TYPE) FROM TRANSACTIONS GROUP BY TYPE ORDER BY COUNT(TYPE) DESC;
-- Ýþlemlerin tiplerine göre toplam tutarlarýnýn büyükten küçüðe sýralamasý nedir?----Banking þemasý için
SELECT TYPE,COUNT(TYPE) FROM TRANSACTIONS GROUP BY TYPE ORDER BY COUNT(TYPE) ASC;