🏥 Hastane Yönetim Sistemi & Kaynak Verimliliği Analizi

Bu proje, hasta kayıtları, doktor randevuları ve poliklinik yoğunluklarını analiz ederek hastane kaynaklarının (doktor, zaman, poliklinik) verimli kullanımını değerlendirmeyi amaçlayan uçtan uca bir veri analitiği ve iş zekâsı (BI) çalışmasıdır.

Proje kapsamında:

PostgreSQL üzerinde ilişkisel bir veritabanı tasarlanmış,

Gerçekçi senaryolarla örnek veriler üretilmiş,

Power BI ile etkileşimli dashboard’lar oluşturulmuş,

Elde edilen bulgular üzerinden yönetsel öneriler sunulmuştur.

🎯 Proje Amacı

Hastane randevu süreçlerini analiz etmek

Poliklinik ve doktor yoğunluklarını tespit etmek

Randevu gerçekleşme ve iptal oranlarını ölçmek

Zaman ve yaş grubu bazlı hasta davranışlarını incelemek

Veri temelli karar destek mekanizması oluşturmak

🧱 Veri Modeli (ER Diyagramı)

Proje aşağıdaki temel tablolar üzerine kuruludur:

Hastalar

Doktorlar

Poliklinikler

Randevular

Teşhisler

Takvim (Calendar Table – Power BI)

Temel İlişkiler

1 Hasta → N Randevu

1 Doktor → N Randevu

1 Poliklinik → N Doktor

1 Randevu → 0/1 Teşhis

Veri bütünlüğü Primary Key ve Foreign Key kısıtlarıyla sağlanmıştır.

🗄️ Kullanılan Teknolojiler

PostgreSQL – Veri tabanı ve SQL sorguları

DBeaver – Veri tabanı yönetimi

Power BI Desktop – Veri modelleme, DAX ve dashboard

Power Query – Veri temizleme ve dönüştürme

DAX (Data Analysis Expressions) – Hesaplamalar ve metrikler

📊 Power BI Dashboard İçeriği
1️⃣ Yönetici Özeti (Executive Dashboard)

Toplam Randevu Sayısı

Gelen Hasta Sayısı

Randevu Gerçekleşme Oranı

Randevu İptal Oranı

2️⃣ Poliklinik & Doktor Analizi

Poliklinik bazlı randevu yoğunluğu

Doktor başına bakılan hasta sayısı

Doktor performans karşılaştırmaları

3️⃣ Zaman & Yoğunluk Analizi

Saatlik randevu yoğunluğu (ısı haritası)

Gün ve ay bazlı randevu trendleri

4️⃣ Yaş Grubu Analizi

Yaş gruplarına göre hasta dağılımı

Yaş grubu bazlı randevu yoğunluğu

📐 Kullanılan Örnek DAX Ölçüleri
Toplam Randevu = COUNT(Randevular[randevu_id])

Gelen Hasta =
CALCULATE(
    COUNT(Randevular[randevu_id]),
    Randevular[durum] = "Geldi"
)

Gerceklesme Orani =
DIVIDE(
    [Gelen Hasta],
    [Toplam Randevu]
)

🔍 Elde Edilen Bulgular (Özet)

Belirli polikliniklerde randevu yoğunluğu diğerlerine göre daha yüksektir.

Randevuların önemli bir kısmı mesai saatlerinin belirli zaman aralıklarında yoğunlaşmaktadır.

19–40 yaş grubu hastalar sistemde baskın kullanıcı grubudur.

İptal oranları, operasyonel verimliliği doğrudan etkilemektedir.

📌 Yöneticiye Yönelik Öneriler

Yoğun saatlerde ek doktor veya zaman dilimi planlaması yapılabilir

İptal oranı yüksek randevular için SMS/e-posta hatırlatma sistemi önerilir

Düşük yoğunluklu saatlerde randevu teşvikleri uygulanabilir

Kaynak dağılımı veriye dayalı olarak optimize edilebilir

📁 Proje Yapısı
📦 hastane-yonetim-sistemi
 ┣ 📂 sql
 ┃ ┣ create_tables.sql
 ┃ ┣ insert_dummy_data.sql
 ┃ ┗ views.sql
 ┣ 📂 powerbi
 ┃ ┗ Hastane_Yonetim_Sistemi.pbix
 ┣ 📂 docs
 ┃ ┗ er_diagram.png
 ┣ README.md

🏁 Sonuç

Bu proje, SQL + Power BI + veri modelleme + analitik düşünme becerilerini bir araya getirerek gerçek hayata uygun bir hastane yönetim senaryosu sunmaktadır.
Hem akademik bitirme projeleri hem de veri analisti / BI rollerine başvurular için güçlü bir portföy örneğidir.

Hazırlayan:

Gizem Can Bayındır

📌 Not:
Bu proje, genişletilebilir yapıdadır.
İleride stok yönetHizmet, personel vardiya planlama veya finansal analiz modülleri eklenebilir.
