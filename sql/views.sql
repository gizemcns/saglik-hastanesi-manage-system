CREATE VIEW vw_randevu_detay AS
SELECT
    r.randevu_id,
    r.tarih_saat,
    r.durum,
    h.ad || ' ' || h.soyad AS hasta_adi,
    d.ad || ' ' || d.soyad AS doktor_adi,
    p.poliklinik_adi
FROM Randevular r
JOIN Hastalar h ON r.hasta_id = h.hasta_id
JOIN Doktorlar d ON r.doktor_id = d.doktor_id
JOIN Poliklinikler p ON d.poliklinik_id = p.poliklinik_id;
