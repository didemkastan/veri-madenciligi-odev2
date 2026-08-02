# R ile Veri Madenciliği ve Veri Analizi Uygulamaları

Bu repository, R programlama dili kullanılarak hazırlanan temel veri inceleme, veri dönüştürme, betimsel istatistik ve görselleştirme çalışmalarını içermektedir.

Çalışmalarda farklı veri setleri üzerinde veri yapısını tanıma, eksik değerleri inceleme, değişken seçme, filtreleme, özet istatistik hesaplama ve grafik oluşturma işlemleri uygulanmıştır.

## Çalışmalar

### Ödev 2 — Youth Tobacco Survey Analizi

Bu çalışmada Youth Tobacco Survey veri seti kullanılarak temel veri analizi işlemleri gerçekleştirilmiştir.

Uygulanan işlemler:

- Çalışma dizininin kontrol edilmesi
- CSV veri setinin R ortamına aktarılması
- Veri setinin satır ve sütun yapısının incelenmesi
- Değişken adlarının ve veri tiplerinin kontrol edilmesi
- Eksik değerlerin incelenmesi
- Betimsel istatistiklerin hesaplanması
- Ortalama, medyan ve çeyrekliklerin bulunması
- Minimum ve maksimum değerlerin belirlenmesi
- Verilerin sıralanması
- `dplyr` ile değişken adlarının değiştirilmesi
- Değişken seçme ve gözlem filtreleme
- Kategorik değişkenler için frekans ve yüzde tabloları
- Histogram ve kutu grafiği oluşturma
- Dağılım grafiği ile değişkenler arasındaki ilişkinin incelenmesi
- Q-Q grafiği ile normal dağılımın görsel olarak değerlendirilmesi

#### İncelenen temel değişkenler

- `Data_Value`
- `Sample_Size`
- `Gender`
- `Age`
- `YEAR`
- `LocationDesc`
- `TopicDesc`
- `MeasureDesc`

#### Kullanılan R fonksiyonları ve paketler

`read.csv()` · `View()` · `head()` · `dim()` · `str()` · `summary()` · `is.na()` · `mean()` · `median()` · `quantile()` · `sort()` · `table()` · `prop.table()` · `hist()` · `boxplot()` · `plot()` · `qqnorm()` · `qqline()` · `dplyr`

### Ödev 3 — İki Farklı Veri Seti ile Keşifsel Veri Analizi

Bu çalışmada R programlama dili kullanılarak iki farklı veri seti üzerinde keşifsel veri analizi uygulanmıştır.

Çalışmanın ilk bölümünde yapay bir öğrenci veri seti üretilmiş, ikinci bölümünde ise `student-mat.csv` veri seti kullanılmıştır.

#### Veri Seti 1 — R ile Üretilen Öğrenci Verisi

İlk veri seti, `set.seed()` kullanılarak tekrarlanabilir şekilde oluşturulmuştur.

Üretilen değişkenler:

- `yas` — Öğrencinin yaşı
- `calisma_suresi` — Günlük çalışma süresi
- `devamsizlik` — Devamsızlık sayısı
- `cinsiyet` — Öğrencinin cinsiyeti
- `not` — Çalışma süresi, devamsızlık ve rassal hata kullanılarak oluşturulan başarı notu

Not değişkeni aşağıdaki değişkenlere bağlı olarak üretilmiştir:

- Çalışma süresi arttıkça notun artması
- Devamsızlık arttıkça notun azalması
- Gerçek hayattaki değişkenliği temsil etmek için rassal hata eklenmesi

Bu veri seti üzerinde gerçekleştirilen işlemler:

- Veri setinin boyutlarının incelenmesi
- Değişken adlarının kontrol edilmesi
- Veri yapısının incelenmesi
- Özet istatistiklerin hesaplanması
- Eksik veri kontrolü
- Ortalama, medyan ve çeyrekliklerin hesaplanması
- Minimum ve maksimum değerlerin belirlenmesi
- Cinsiyet değişkeninin frekans ve yüzde dağılımının incelenmesi
- Histogram oluşturulması
- Kutu grafiği oluşturulması
- Çalışma süresi ile not arasındaki ilişkinin incelenmesi
- Q-Q grafiği ile normal dağılımın görsel olarak değerlendirilmesi

#### Veri Seti 2 — Student Performance Veri Seti

İkinci bölümde `student-mat.csv` dosyası kullanılarak öğrenci performans verileri analiz edilmiştir.

## Repository İçeriği

| Dosya | Açıklama |
|---|---|
| `Youth_Tobacco_Survey_YTS_Odev_2-Kodlari.R` | Youth Tobacco Survey veri seti üzerinde temel R veri analizi |
| `Student-Performance-Odev-3-Kodlari.R` | Öğrenci performans verisi üzerinde analiz uygulamaları |
| `Youth_Tobacco_Survey_YTS_Data.csv` | Ödev 2 çalışmasında kullanılan veri seti |
| `student-mat.csv` | Ödev 3 çalışmasında kullanılan öğrenci performans veri seti |

## Çalıştırma

1. Repository dosyalarını bilgisayarınıza indirin.
2. R veya RStudio ile ilgili `.R` dosyasını açın.
3. Kullanılacak veri setini R koduyla aynı klasöre yerleştirin.
4. Gerekli paketi yükleyin:

```r
install.packages("dplyr")
```

5. Paketi çalışma ortamına dahil edin:

```r
library(dplyr)
```

6. Youth Tobacco Survey veri setini okumak için:

```r
veri <- read.csv("Youth_Tobacco_Survey_YTS_Data.csv")
```

7. Student Performance veri setini noktalı virgül ayırıcıyla okumak için:

```r
veri2 <- read.csv("student-mat.csv", sep = ";")
```
