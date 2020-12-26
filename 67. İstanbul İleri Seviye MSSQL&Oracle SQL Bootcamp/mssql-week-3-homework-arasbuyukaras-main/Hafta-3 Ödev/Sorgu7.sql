SELECT
* FROM dukkan.dbo.tblSiparis s
INNER JOIN dukkan.dbo.tblSiparisDetay sd ON sd.faturaKod=s.faturaKod 
INNER JOIN Dukkan.dbo.tblUrun u ON sd.urunKod = u.urunKod
INNER JOIN dukkan.dbo.tblKullanici k ON s.kullaniciKod=k.kullaniciKod
INNER JOIN dukkan.dbo.tblSehir se ON se.Id=CAST(K.sehir AS INT)
WHERE U.urunKod=

/* hocam burada dönüþüm yapmam gerekti. Sonrasýnda acaba derste biz mi deðiþtirdik diye veritabanýný sildim. 
Sonrasýnda tekrar yüklemek istediðimde þifreyi bulamadým :(((( bundan dolayý 8. soruyuda yapamadým :(((
*/