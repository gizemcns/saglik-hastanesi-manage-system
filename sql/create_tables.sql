create database saglik_hastane_yonetim

CREATE TABLE Hastalar (
    hasta_id SERIAL PRIMARY KEY,
    tc_no CHAR(11) UNIQUE NOT NULL,
    ad VARCHAR(50),
    soyad VARCHAR(50),
    dogum_tarihi DATE,
    cinsiyet VARCHAR(10),
    kan_grubu VARCHAR(5));

CREATE TABLE Poliklinikler (
    poliklinik_id SERIAL PRIMARY KEY,
    poliklinik_adi VARCHAR(100));

CREATE TABLE Doktorlar (
    doktor_id SERIAL PRIMARY KEY,
    poliklinik_id INT REFERENCES Poliklinikler(poliklinik_id),
    ad VARCHAR(50),
    soyad VARCHAR(50),
    uzmanlik_alani VARCHAR(100),
    unvan VARCHAR(50));



CREATE TABLE Randevular (
    randevu_id SERIAL PRIMARY KEY,
    hasta_id INT REFERENCES Hastalar(hasta_id),
    doktor_id INT REFERENCES Doktorlar(doktor_id),
    tarih_saat TIMESTAMP,
    durum VARCHAR(20) -- Geldi / Gelmedi / İptal
);


CREATE TABLE Teshisler (
    teshis_id SERIAL PRIMARY KEY,
    randevu_id INT REFERENCES Randevular(randevu_id),
    tani_kodu VARCHAR(20),
    recete_no VARCHAR(30),
    aciklama TEXT
);






