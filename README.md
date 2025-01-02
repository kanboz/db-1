Bu projede araç satış ve değerlendirme verilerini tutan örnek bir veri tabanı tasarladım.


Genel Bilgi
Veri tabanı geliştirme amacım:

Araç satış işlemlerini takip etmek.
Müşteri ve personel verilerini yönetmek.
Araçların stok, servis geçmişi ve sigorta bilgilerini saklamak.
Kampanya ve geri bildirimlerle iş süreçlerini optimize etmek.


Tablolar ve Açıklamaları
1. aracozellikleri
Amacı: Araçların özelliklerini (örneğin, donanım seviyeleri) depolamak.

2. aracturleri
Amacı: Araç türlerini (örneğin SUV, sedan) saklamak.

3. kampanyalar
Amacı: Satış kampanyalarını saklamak.

4. markalar
Amacı: Araç markalarını saklamak.
MarkaID: Marka ID'si.
MarkaAdi: Marka adı.

5. modeller
Amacı: Markalara ait modelleri saklamak.
ModelID: Model ID'si.
MarkaID: İlgili markanın ID'si.
ModelAdi: Model adı.

6. araclar
Amacı: Araçların ana bilgilerini saklamak.
AracID: Araç ID'si.
MarkaID, ModelID: Marka ve model bilgisi.
Yil: Üretim yılı.
YakitTipi: Yakıt tipi.
Sanziman: Şanzıman türü.
Fiyat: Araç fiyatı.
Kilometre: Kilometre bilgisi.


7. aracdegerlendirme
Amacı: Araç değerlendirmelerini saklamak.
DegerlendirmeID: Değerlendirme ID'si.
AracID: İlgili aracın ID'si.
DegerlendirmeTarihi: Değerlendirme tarihi.
Durum: Araç durumu.
Puan: Değerlendirme puanı.


8. musteriler
Amacı: Müşteri bilgilerini saklamak.
MusteriID: Müşteri ID'si.
Ad, Soyad, Telefon, Eposta, Adres: Müşteri iletişim bilgileri.


9. musterigeribildirimleri
Amacı: Müşteri geri bildirimlerini saklamak.
GeriBildirimID: Geri bildirim ID'si.
MusteriID: İlgili müşterinin ID'si.
Tarih: Geri bildirim tarihi.
Yorum: Müşteri yorumu.
Puan: Geri bildirim puanı.


10. personel
Amacı: Şirket personel bilgilerini saklamak.
PersonelID: Personel ID'si.
Ad, Soyad, Gorev, Telefon, Eposta: Personel bilgileri.


11. personelsatisperformansi
Amacı: Personelin satış performansını takip etmek.
PerformansID: Performans ID'si.
PersonelID: İlgili personelin ID'si.
SatisAdedi: Satış adedi.
ToplamCiro: Toplam ciro.
Donem: Performans dönemi.


12. satislar
Amacı: Satış bilgilerini saklamak.
SatisID: Satış ID'si.
AracID: Satılan aracın ID'si.
MusteriID: Müşterinin ID'si.
SatisTarihi: Satış tarihi.
SatisFiyati: Satış fiyatı.


13. odemedetaylari
Amacı: Ödeme bilgilerini saklamak.
OdemeID: Ödeme ID'si.
SatisID: İlgili satışın ID'si.
OdemeTipi: Ödeme tipi (örneğin kredi kartı, nakit).
OdemeTarihi: Ödeme tarihi.
Tutar: Ödenen tutar.

14. servisgecmisi
Amacı: Araçların servis geçmişini saklamak.
ServisID: Servis ID'si.
AracID: Servis gören araç ID'si.
ServisTarihi: Servis tarihi.
YapilanIslem: Yapılan işlemler.
Ucret: Servis ücreti.


15. servistipleri
Amacı: Servis türlerini saklamak.
ServisTipiID: Servis tipi ID'si.
ServisAdi: Servis adı.


16. sigortabilgileri
Amacı: Araçların sigorta bilgilerini saklamak.
SigortaID: Sigorta ID'si.
AracID: Sigortalanan araç ID'si.
SigortaTipi: Sigorta türü.
BaslangicTarihi, BitisTarihi: Sigorta dönemi.
SigortaSirketi: Sigorta şirketi adı.

17. subeler
Amacı: Şirket şubelerinin bilgilerini saklamak.
SubeID: Şube ID'si.
SubeAdi, SubeAdresi: Şube bilgileri.


18. stok
Amacı: Araç stok bilgilerini saklamak.
StokID: Stok ID'si.
SubeID: İlgili şubenin ID'si.
AracID: Stoktaki araç ID'si.
StokAdedi: Araç stok adedi.

İndeksler ve Performans
Tablolarda ilişkili alanlara yönelik indeksler tanımladım. Bu indeksler sorguların performansını artırır.

İlişkiler
Tablolar arasında primary key ve foreign key ilişkileri tanımladım. Bu ilişkiler veri bütünlüğünü sağlamakta ve sorgulama kolaylığı sunmaktadır.

