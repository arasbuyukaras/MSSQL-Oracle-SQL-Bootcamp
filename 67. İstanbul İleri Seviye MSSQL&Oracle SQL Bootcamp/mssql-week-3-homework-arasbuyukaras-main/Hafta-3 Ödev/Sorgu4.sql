SELECT
	sd.urunKod,COUNT(sd.urunKod) ToplamAdet
FROM Dukkan.dbo.tblSiparis s
INNER JOIN Dukkan.dbo.tblSiparisDetay sd
	ON s.faturaKod = sd.faturaKod
	WHERE CAST(s.siparisTarih AS DATE) BETWEEN '01.02.2007' and '05.03.2014'
	GROUP BY sd.urunKod