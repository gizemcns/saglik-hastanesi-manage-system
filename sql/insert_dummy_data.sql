INSERT INTO Poliklinikler (poliklinik_adi) VALUES
('Kardiyoloji'),
('Ortopedi'),
('Dahiliye'),
('Göğüs Hastalıkları'),
('Nöroloji'),
('Genel Cerrahi'),
('Çocuk Sağlığı'),
('Göz Hastalıkları');


INSERT INTO Doktorlar 
(poliklinik_id, ad, soyad, uzmanlik_alani, unvan)
VALUES
(1,'Mehmet', 'Yılmaz', 'Kardiyoloji', 'Uzman Dr.' ),
(1,'Ayşe', 'Demir', 'Kardiyoloji',  'Prof. Dr.'),
(2,'Fatma', 'Kaya', 'Ortopedi',  'Uzman Dr.'),
(3,'Ali', 'Şahin', 'Dahiliye',  'Doç. Dr.'),
(4,'Zeynep', 'Çelik', 'Göğüs Hastalıkları', 'Uzman Dr.'),
(5,'Can', 'Arslan', 'Nöroloji',  'Prof. Dr.'),
(6,'Elif', 'Özkan', 'Genel Cerrahi',  'Uzman Dr.'),
(7,'Ahmet', 'Aydın', 'Çocuk Sağlığı',  'Uzman Dr.'),
(8,'Selin', 'Kurt', 'Göz Hastalıkları',  'Doç. Dr.');


INSERT INTO Hastalar (tc_no, ad, soyad, dogum_tarihi, kan_grubu, cinsiyet) VALUES
('12345678901', 'Ahmet', 'Yıldız', '1985-03-15', 'A+', 'E'),
('23456789012', 'Elif', 'Kara', '1990-07-22', 'O+', 'K'),
('34567890123', 'Mehmet', 'Beyaz', '1978-11-30', 'B+', 'E'),
('45678901234', 'Ayşe', 'Mavi', '2005-05-10', 'AB+', 'K'),
('56789012345', 'Can', 'Yeşil', '1995-09-18', 'A-', 'E'),
('67890123456', 'Zeynep', 'Sarı', '1982-01-25', 'O-', 'K'),
('78901234567', 'Ali', 'Gri', '2010-12-05', 'B-', 'E'),
('89012345678', 'Fatma', 'Mor', '1970-06-14', 'A+', 'K'),
('90123456789', 'Burak', 'Turuncu', '1988-04-20', 'O+', 'E'),
('01234567890', 'Selin', 'Pembe', '2000-08-08', 'AB-', 'K'),
('11234567891', 'Emre', 'Lacivert', '1992-02-28', 'A+', 'E'),
('22345678902', 'Deniz', 'Kahve', '1975-10-12', 'B+', 'K'),
('33456789013', 'Cem', 'Bordo', '2008-03-03', 'O+', 'E'),
('44567890124', 'Gizem', 'Altın', '1986-09-17', 'A-', 'K'),
('55678901235', 'Onur', 'Gümüş', '1998-07-07', 'B-', 'E'),
('66789012346', 'Merve', 'Bronz', '1980-05-25', 'AB+', 'K'),
('77890123457', 'Kaan', 'Platin', '2003-11-11', 'O-', 'E'),
('88901234568', 'Seda', 'Turkuaz', '1973-01-19', 'A+', 'K'),
('99012345679', 'Berat', 'Eflatun', '1994-06-06', 'B+', 'E'),
('10123456780', 'Aslı', 'Nane', '2001-12-24', 'O+', 'K'),
('21234567891', 'Serkan', 'Zümrüt', '1987-08-15', 'A-', 'E'),
('32345678902', 'Pınar', 'Mercan', '1996-04-04', 'AB-', 'K'),
('43456789013', 'Tolga', 'Safir', '2006-10-10', 'B+', 'E'),
('54567890124', 'Ecem', 'Yakut', '1979-02-02', 'O-', 'K'),
('65678901235', 'Barış', 'Elmas', '1991-07-21', 'A+', 'E'),
('76789012346', 'Nil', 'İnci', '2004-03-13', 'B-', 'K'),
('87890123457', 'Ege', 'Ametist', '1983-09-09', 'O+', 'E'),
('98901234568', 'Duygu', 'Opal', '1997-05-05', 'AB+', 'K'),
('09012345679', 'Mert', 'Jade', '1972-11-30', 'A-', 'E'),
('10234567892', 'Aysun', 'Kuvars', '1989-01-01', 'B+', 'K'),
('21345678903', 'Hakan', 'Topaz', '2002-08-20', 'O-', 'E'),
('32456789014', 'Gülay', 'Ağat', '1984-04-16', 'A+', 'K'),
('43567890125', 'Sinan', 'Kristal', '1993-12-12', 'AB-', 'E'),
('54678901236', 'Burcu', 'Sedef', '1977-06-06', 'B-', 'K'),
('65789012347', 'Okan', 'Lapis', '1999-02-14', 'O+', 'E'),
('76890123458', 'İrem', 'Koral', '2007-10-31', 'A-', 'K'),
('87901234569', 'Volkan', 'Mermer', '1981-07-27', 'B+', 'E'),
('98012345670', 'Canan', 'Granit', '1995-03-03', 'O-', 'K'),
('09123456781', 'Erdem', 'Bazalt', '1974-09-19', 'AB+', 'E'),
('10234567893', 'Aylin', 'Obsidyen', '1986-05-15', 'A+', 'K'),
('21345678904', 'Kerem', 'Kalsit', '2005-01-08', 'B-', 'E'),
('32456789015', 'Sibel', 'Dolomit', '1992-11-23', 'O+', 'K'),
('43567890126', 'Utku', 'Feldspat', '1976-08-08', 'A-', 'E'),
('54678901237', 'Nihan', 'Mika', '2001-04-29', 'AB-', 'K'),
('65789012348', 'Taner', 'Piroksen', '1988-12-17', 'B+', 'E'),
('76890123469', 'Özge', 'Olivin', '1971-06-22', 'O-', 'K'),
('87901234570', 'Alper', 'Serpantin', '1997-02-10', 'A+', 'E'),
('98012345681', 'Eda', 'Talk', '2009-10-05', 'B-', 'K'),
('09123456782', 'Koray', 'Jips', '1985-03-28', 'O+', 'E'),
('10234567894', 'Şeyma', 'Kuvarsit', '1994-07-14', 'AB+', 'K');


INSERT INTO Randevular 
(hasta_id, doktor_id, tarih_saat, durum)
SELECT
    (random() * 49 + 1)::INT AS hasta_id,
    (random() * 8 + 1)::INT AS doktor_id,
    NOW() - (random() * INTERVAL '180 days')
        + (random() * INTERVAL '8 hours') AS tarih_saat,
    CASE
        WHEN random() < 0.70 THEN 'Geldi'
        WHEN random() < 0.85 THEN 'Gelmedi'
        WHEN random() < 0.95 THEN 'İptal'
        ELSE 'Bekliyor'
    END AS durum
FROM generate_series(1, 500);


INSERT INTO Teshisler 
(randevu_id, tani_kodu, recete_no, aciklama)
SELECT
    randevu_id,
    'ICD-' || (1000 + (random() * 9000)::INT),
    'RX' || (10000 + (random() * 90000)::INT),
    'Kontrol muayenesi yapıldı. İlaç tedavisi önerildi.'
FROM Randevular
WHERE durum = 'Geldi';


SELECT 'Poliklinikler' AS tablo, COUNT(*) FROM Poliklinikler
UNION ALL
SELECT 'Doktorlar', COUNT(*) FROM Doktorlar
UNION ALL
SELECT 'Hastalar', COUNT(*) FROM Hastalar
UNION ALL
SELECT 'Randevular', COUNT(*) FROM Randevular
UNION ALL
SELECT 'Teshisler', COUNT(*) FROM Teshisler;

SELECT
    p.poliklinik_adi,
    COUNT(*) AS toplam_randevu
FROM Randevular r
JOIN Doktorlar d ON r.doktor_id = d.doktor_id
JOIN Poliklinikler p ON d.poliklinik_id = p.poliklinik_id
GROUP BY p.poliklinik_adi
ORDER BY toplam_randevu DESC
LIMIT 5;

SELECT
    EXTRACT(HOUR FROM tarih_saat) AS saat,
    COUNT(*) AS randevu_sayisi
FROM Randevular
GROUP BY saat
ORDER BY saat;

