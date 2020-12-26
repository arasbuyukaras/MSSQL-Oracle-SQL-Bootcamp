SELECT
DISTINCT
	(sd.urunKod)
   ,u.urunAd
   ,k.isim +SPACE(1)+k.soyad AS [Ad Soyad]
FROM Dukkan.dbo.tblSiparisDetay sd
INNER JOIN Dukkan.dbo.tblUrun u
	ON sd.urunKod = u.urunKod
INNER JOIN Dukkan.dbo.tblSiparis s
	ON s.faturaKod = sd.faturaKod
INNER JOIN Dukkan.dbo.tblKullanici k
	ON s.kullaniciKod = k.kullaniciKod
WHERE sd.faturaKod IN (SELECT TOP 1
		S.faturaKod
	FROM Dukkan.dbo.tblSiparis AS S
	ORDER BY S.toplam DESC)
