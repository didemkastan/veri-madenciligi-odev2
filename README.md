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

### Ödev 3 — Öğrenci Performans Analizi

Bu çalışmada `student-mat.csv` veri seti üzerinde R ile veri analizi uygulamaları gerçekleştirilmiştir.

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
