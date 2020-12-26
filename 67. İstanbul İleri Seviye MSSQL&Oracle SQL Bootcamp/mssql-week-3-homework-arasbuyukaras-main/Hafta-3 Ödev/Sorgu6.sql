SELECT
TOP 1
	m.meslek
   ,COUNT(s.faturaKod)
FROM Dukkan.dbo.tblSiparis s
INNER JOIN Dukkan.dbo.tblKullanici k
	ON s.kullaniciKod = k.kullaniciKod
INNER JOIN Dukkan.dbo.tblMeslek m
	ON k.meslekKod = m.meslekKod
GROUP BY m.meslek
ORDER BY COUNT(s.faturaKod) DESC