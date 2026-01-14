CREATE TABLE "Hastalar"(
    "hasta_id" SERIAL NOT NULL,
    "tc_no" VARCHAR(11) NOT NULL,
    "ad" VARCHAR(50) NOT NULL,
    "soyad" VARCHAR(50) NOT NULL,
    "dogum_tarihi" DATE NOT NULL,
    "kan_grubu" VARCHAR(5) NOT NULL,
    "cinsiyet" VARCHAR(5) NOT NULL
);
ALTER TABLE
    "Hastalar" ADD PRIMARY KEY("hasta_id");
ALTER TABLE
    "Hastalar" ADD CONSTRAINT "hastalar_tc_no_unique" UNIQUE("tc_no");
CREATE TABLE "Poliklinikler"(
    "poliklinik_id" SERIAL NOT NULL,
    "poliklinik_adi" VARCHAR(100) NOT NULL,
    "kat_no" INTEGER NOT NULL,
    "aktif" BOOLEAN NOT NULL
);
ALTER TABLE
    "Poliklinikler" ADD PRIMARY KEY("poliklinik_id");
CREATE TABLE "Doktorlar"(
    "doktor_id" SERIAL NOT NULL,
    "poliklinik_id" INTEGER NOT NULL,
    "ad" VARCHAR(50) NOT NULL,
    "soyad" VARCHAR(50) NOT NULL,
    "uzmanlik_alani" VARCHAR(100) NOT NULL,
    "unvan" BIGINT NOT NULL
);
ALTER TABLE
    "Doktorlar" ADD PRIMARY KEY("doktor_id");
CREATE TABLE "Randevular"(
    "randevu_id" BIGINT NOT NULL,
    "hasta_id" BIGINT NOT NULL,
    "doktor_id" INTEGER NOT NULL,
    "tarih_saat" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "durum" VARCHAR(20) NOT NULL,
    "randevu_turu" VARCHAR(30) NOT NULL,
    "olusturma_tarihi" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL
);
ALTER TABLE
    "Randevular" ADD PRIMARY KEY("randevu_id");
CREATE TABLE "Teshisler"(
    "teshis_id" SERIAL NOT NULL,
    "randevu_id" INTEGER NOT NULL,
    "tani_kodu" VARCHAR(20) NOT NULL,
    "recete_no" VARCHAR(20) NOT NULL,
    "aciklama" TEXT NOT NULL
);
ALTER TABLE
    "Teshisler" ADD PRIMARY KEY("teshis_id");
ALTER TABLE
    "Teshisler" ADD CONSTRAINT "teshisler_randevu_id_foreign" FOREIGN KEY("randevu_id") REFERENCES "Randevular"("randevu_id");
ALTER TABLE
    "Randevular" ADD CONSTRAINT "randevular_doktor_id_foreign" FOREIGN KEY("doktor_id") REFERENCES "Doktorlar"("doktor_id");
ALTER TABLE
    "Doktorlar" ADD CONSTRAINT "doktorlar_poliklinik_id_foreign" FOREIGN KEY("poliklinik_id") REFERENCES "Poliklinikler"("poliklinik_id");
ALTER TABLE
    "Randevular" ADD CONSTRAINT "randevular_hasta_id_foreign" FOREIGN KEY("hasta_id") REFERENCES "Hastalar"("hasta_id");