SELECT
	m.meslek
FROM Dukkan.dbo.tblKullanici k
INNER JOIN Dukkan.dbo.tblMeslek m
	ON k.meslekKod = m.meslekKod
WHERE k.kullaniciAd NOT IN (SELECT
	DISTINCT
		k.kullaniciAd
	FROM Dukkan.dbo.tblSiparisDetay sd
	INNER JOIN Dukkan.dbo.tblSiparis s
		ON s.faturaKod = sd.faturaKod
	INNER JOIN Dukkan.dbo.tblKullanici k
		ON s.kullaniciKod = k.kullaniciKod)