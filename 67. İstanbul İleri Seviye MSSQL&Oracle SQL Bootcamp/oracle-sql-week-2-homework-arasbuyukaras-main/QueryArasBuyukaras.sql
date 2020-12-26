-- Kotas� limitsiz olan �r�nler hangileridir? ----Telco �emas� i�in
Select * FROM TELCO.PRODUCT where quota='LIMITLESS';
-- Stat�s� 'Initial' olan m��terileri bulunuz. ----Telco �emas� i�in
Select * FROM TELCO.customer where status='INITIAL';
-- �ehir bilgisi 'ISTANBUL' olan adresleri bulunuz. ----Telco �emas� i�in
Select * from TELCO.address where CITY='ISTANBUL';
-- Birim fiyat� 150'den b�y�k olan order_itemlar� bulunuz. ----Sales �emas� i�in
SELECT * FROM SALES.order_�tems where un�t_price>150;
-- ��e al�m tarihi May�s 2016 olan �al��anlar� bulunuz. ----Sales �emas� i�in
SELECT * FROM SALES.employees where to_char(hire_date,'mm-yyyy')>'06-2016';
-- Ad� Charlie ya da Charlsie olan contactlar� bulunuz. ----Sales �emas� i�in
SELECT * FROM SALES.contacts where first_name IN('Charlie','Charlsie');
--Y�l�n 4. aylar�nda en �ok hangi ama�la kredi �ekilmistir? ----Banking �emas� i�in
select PURPOSE,COUNT(PURPOSE)from "BANKING"."LUXURY_LOAN_PORTFOLIOS" where TO_CHAR(funded_date,'mm')=4 group by PURPOSE;
-- Adet say�s� 10dan b�y�k 50den k���k envanterleri bulunuz. ----Sales �emas� i�in
Select * from SALES.�nventor�es where quant�ty between 10 and 50;
-- Birincil ileti�im bilgisi olmayan telefon numaralar�n� bulunuz. ----Telco �emas� i�in
select * from TELCO.CUSTOMER;
-- Bir sipari�te toplam 100.0000'den fazla �cret �deyen emirler nedir? ----Sales �emas� i�in
Select * from SALES.Products where l�st_pr�ce>100000;
-- Bankan�n 50 ve ya 51 ya��nda kad�n m��terilerinden ayn� isme sahip olan m��terisi/m��terileri var m�? Varsa isimleri neler?----Banking �emas� i�in
SELECT * FROM bank�ng.cl
-- Hesap �deme �ekli nakit olmayan hesaplar hangileridir? ----Telco �emas� i�in
Select * from TELCO.account where payment_type!='CASH';
-- Stat�s� deaktif olan m��terilerin ba�lant� kesim tarihleri nedir? ----Telco �emas� i�in
Select b�ll�ng_day from TELCO.Account where status='DEACTIVE';
-- Manager'� olmayan �al��anlar hangileridir? ----Sales �emas� i�in
select * from SALES.Employees where Manager_Id is null;
-- State bilgisi bo� olan lokasyonlar� bulunuz.----Sales �emas� i�in
SELECT * from SALES.LOCATIONS where state is null;
-- Hesap kapan�� tarihi dolu olan hesaplar� bulunuz. ----Telco �emas� i�in
select * FROM TELCO.Account where account_clos�ng_date is not null;
-- Elektronik fatura mail adresi (E_bill_email) olan hesaplar hangileridir? ----Telco �emas� i�in
select * FROM TELCO.Account where e_b�ll_ema�l is not null;
-- Durumu iptal olan ve sat�c�lar� olmayan emirler hangileridir? ----Sales �emas� i�in
SELECT * FROM SALES.Orders where status='Canceled' and salesman_�d is null;
-- S�zle�me biti� tarihi 1 Ocak 2000'den b�y�k , 1 Ocak 2005'ten k���k olan s�zle�meleri bulunuz. ----Telco �emas� i�in
Select * from TELCO.agreement where comm�tment_end_date between '01.01.2000' and '01.01.2005';
-- Ocak 2016 ile Haziran 2016 aras�nda verilen sipari�ler hangileridir? ----Sales �emas� i�in
SELECT * FROM SALES.Orders where order_date between to_char(order_date,'mm-yyyy')>'01-2016' and to_char(order_date,'mm-yyyy')>'06-2016';
-- 2005 y�l�ndan �nce yap�lan ve hala aktif olan subscriptionlar hangileridir? ----Telco �emas� i�in
select * from TELCo.subscr�pt�on where Status='ACTIVE' and extract(YEAR from Activation_date)<=2005;
-- S�zle�me ba�lang�� tarihi Ocak 2010'dan b�y�k olan s�zle�meleri bulunuz. ----Telco �emas� i�in
Select * from TELCO.agreement where to_char(comm�tment_start_date,'mm-yyyy')>'01-2010';
-- �smi E ile ba�layan m��terileri bulunuz. ----Telco �emas� i�in
Select * from TELCO.customer where name like 'E%';
-- Product tipi 'DSL' ile biten �r�nleri bulunuz. ----Telco �emas� i�in
Select * from TELCO.Product where product_type like '%DSL';
-- Unvan� 'S' ile ba�lamayan �al��anlar� bulunuz. ----Sales �emas� i�in
Select * from SALES.Employees where job_t�tle not like 'S%';
-- Herhangi bir �e�it Intel Xeon �r�nler hangileridir? ----Sales �emas� i�in
Select * from SALES.products where product_name like '%Intel Xeon%';
-- �sminde ya da soyisminde '�' harfi ge�en m��teriler hangileridir? ----Telco �emas� i�in
select * from TELCO.customer where Name  like '%�%' or Surname like '%�%';
-- �smi 'C' ile ba�layan kontaklar hangileridir? Soyad�na g�re alfabetik s�ra ile s�ralayal�m. ----Sales �emas� i�in
select * from SALES.contacts where f�rst_name like 'C%' order by last_name asc;
-- �r�n ad� 'Asus' ile ba�layan ve liste fiyat� standart �cretinden k���k olan �r�nleri bulunuz. ----Sales �emas� i�in
Select * from SALES.products where product_name like 'Asus%' and l�st_pr�ce<standard_cost;
-- �lke kodu UK ve AU olan adresleri bulunuz.----Telco �emas� i�in
select * from TELCO.address where country_cd IN ('UK','AU');
-- 1,2,4,5 id'li kategorilerin bilgilerini bulunuz. ----Sales �emas� i�in
select * from SALES.products where category_id IN (1,2,4,5);
-- Taahh�t s�resi 240 ve 120 ay olan b�t�n s�zle�meleri bulmak istiyoruz.----Telco �emas� i�in
select * from TELCO.agreement where comm�tment_durat�on IN ('240 MONTHS','120 MONTHS');
-- Sipari� durumu 'Shipped'den farkl� olan m��terilerin bilgilerini bulunuz. ----Sales �emas� i�in
Select * from SALES.Orders where status!='Shipped';
-- Adet say�s� 100e e�it olan envanterlerin product bilgisini bulunuz. ----Sales �emas� i�in
Select * from SALES.�nventor�es where quantity = 100; 
-- S�zle�me alt tipi MAIN olan ka� tane s�zle�me vard�r?----Telco �emas� i�in
select * from TELCO.agreement where subtype='MAIN';
-- Deaktif m��terilerin say�s�n� bulunuz.----Telco �emas� i�in
Select * from TELCO.Customer where status='DEACTIVE';
-- Beijing (8 numaral� warehouse)'da ka� farkl� envanter vard�r? ----Sales �emas� i�in
Select * from SALES.�nventor�es where warehouse_�d=8;
-- �leti�im tipi olarak email ve statusu kullan�mda olan ka� m��teri var?----Telco �emas� i�in
SELECT COUNT(CUSTOMER_ID) FROM TELCO.contact where CNT_TYPE='EMAIL' and STATUS='USED';
-- Liste fiyati 1000 ile 3000 arasinda olan ka� product var?----Sales �emas� i�in
Select COUNT(Product_ID) FROM SALES.products where l�st_pr�ce between 1000 and 3000;
--Hangi y�llarda ka� hesap a��lm��t�r?----Banking �emas� i�in
SELECT YEAR,COUNT(YEAR) FROM ACCOUNTS GROUP BY YEAR;
-- ��lemlerin tiplerine g�re toplam say�lar�n�n b�y�kten k����e s�ralamas� nedir?----Banking �emas� i�in
SELECT TYPE,COUNT(TYPE) FROM TRANSACTIONS GROUP BY TYPE ORDER BY COUNT(TYPE) DESC;
-- ��lemlerin tiplerine g�re toplam tutarlar�n�n b�y�kten k����e s�ralamas� nedir?----Banking �emas� i�in
SELECT TYPE,COUNT(TYPE) FROM TRANSACTIONS GROUP BY TYPE ORDER BY COUNT(TYPE) ASC;