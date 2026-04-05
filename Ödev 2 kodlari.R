# Calisma dizinini kontrol et
getwd()
#setwd("C:/Users/Deniz/Desktop/odev")

# CSV veri setini calisma klasorunden oku
veri <- read.csv("C:/Users/Deniz/Desktop/odev/Youth_Tobacco_Survey_YTS_Data (1).csv")

# Veri setini tablo seklinde goruntule
View(veri)

# Veri setinin ilk 6 satirini goruntule
head(veri)

# Veri setinin satir ve sütun sayisini birlikte goster
dim(veri)

# Veri setinin satir sayisini goster
nrow(veri)

# Veri setinin sütun sayisini goster
ncol(veri)

# Veri setindeki degisken isimlerini goster
names(veri)

# Veri nesnesinin sinifini goster
class(veri)

# Veri setinin yapisini goster
str(veri)

# Veri setinin genel özet istatistiklerini goster
summary(veri)


# Her sütunda kaç tane eksik deger oldugunu hesapla
colSums(is.na(veri))

# Data_Value degiskeninde toplam kac gozlem oldugunu goster
length(veri$Data_Value)

# Data_Value degiskeninde kac eksik deger oldugunu goster
sum(is.na(veri$Data_Value))

# Bu veri setinde temel sayisal degiskenlere uygun sayisal degiskenler Data_Value ve Sample_Size'dir

# Data_Value degiskeninin ortalamasini hesapla
mean(veri$Data_Value, na.rm = TRUE)

# Data_Value degiskeninin ortancasini hesapla
median(veri$Data_Value, na.rm = TRUE)

# Data_Value degiskeninin çeyrekliklerini hesapla
quantile(veri$Data_Value, na.rm = TRUE)

# Sample_Size degiskeninin ortalamasini hesapla
mean(veri$Sample_Size, na.rm = TRUE)

# Sample_Size degiskeninin ortancasini hesapla
median(veri$Sample_Size, na.rm = TRUE)

# Sample_Size degiskeninin çeyrekliklerini hesapla
quantile(veri$Sample_Size, na.rm = TRUE)

# Data_Value minimum ve maksimum değerleri
min(veri$Data_Value, na.rm = TRUE)
max(veri$Data_Value, na.rm = TRUE)

# Data_Value degerlerini sırala
sort(veri$Data_Value)

# Sadece konsola yazdırmak yerine sirali_degerler adında bir vektöre ata
sirali_degerler <- sort(veri$Data_Value, decreasing = FALSE)

# Sıralanmis listenin ilk 10 değerini kontrol et
head(sirali_degerler, 10)


# dplyr paketini yükle
library(dplyr)

# YEAR degiskeninin adini year olarak degistir
veri_rename <- rename(veri, year = YEAR)

# Yeni degisken isimlerini kontrol et
names(veri_rename)

# Veri setinden secilen sütunlari al
select(veri_rename, year, LocationDesc, TopicDesc, MeasureDesc, Data_Value, Sample_Size, Gender, Age)

# Data_Value degeri 20'den büyük olan gözlemleri filtrele
filter(veri_rename, Data_Value > 20)

# Sadece Female gözlemlerini filtrele
filter(veri_rename, Gender == "Female")

# Yil 2015 olan gözlemleri filtrele
filter(veri_rename, year == 2015)

# Gender degiskeninin frekans tablosunu göster
table(veri$Gender)

# Gender degiskeninde bulunan farklı degerleri goster
unique(veri$Gender)

# Gender degiskeninin yüzde dagilimini göster
prop.table(table(veri$Gender)) * 100

# Age degiskeninin frekans tablosunu göster
table(veri$Age)

# Age degiskeninin yüzde dagilimini göster
prop.table(table(veri$Age)) * 100

#Grafik
# Data_Value degiskeninin dagilimini histogram ile göster
hist(veri$Data_Value,
     main = "Data_Value Dagilimi",
     xlab = "Deger")

# Data_Value degiskeninin dagilimini kutu grafigi ile göster
boxplot(veri$Data_Value)


# Sample_Size ve Data_Value arasindaki iliskiyi göster
plot(veri$Sample_Size, veri$Data_Value)


# Data_Value degiskeninin normal dagilima uygunlugunu kontrol et
qqnorm(veri$Data_Value)
qqline(veri$Data_Value)