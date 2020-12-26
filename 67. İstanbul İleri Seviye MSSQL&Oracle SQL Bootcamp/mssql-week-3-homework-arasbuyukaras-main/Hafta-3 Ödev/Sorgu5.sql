SELECT
DISTINCT
	(u.urunAd)
FROM Dukkan.dbo.tblSiparisDurum sd
INNER JOIN Dukkan.dbo.tblSiparis s
	ON sd.siparisDurumKod = s.siparisDurumKod
INNER JOIN Dukkan.dbo.tblSiparisDetay sd1
	ON s.faturaKod = sd1.faturaKod
INNER JOIN Dukkan.dbo.tblUrun u
	ON sd1.urunKod = u.urunKod
WHERE sd.siparisDurumKod = 10