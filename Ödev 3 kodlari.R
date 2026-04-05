# =========================================================
# VERI MADENCILIGI ODEV 3
# Iki farkli veri seti icin kesifsel veri analizi
# 1. veri seti: veri ureterek
# 2. veri seti: veriyi cekerek
# =========================================================


# -------------------------------
# Veri seti 1: Veri uretme
# -------------------------------

# Rastgelelik sabitle
set.seed(123)

# Gozlem sayisi belirle
n <- 100

# Sayisal degiskenler uret
yas <- round(rnorm(n, mean = 20, sd = 2))
calisma_suresi <- round(rnorm(n, mean = 3, sd = 1), 1)
devamsizlik <- sample(0:10, n, replace = TRUE)

# Kategorik degisken uret
cinsiyet <- sample(c("Erkek", "Kadin"), n, replace = TRUE)

# Not degiskeni uret
not <- round(50 + 5 * calisma_suresi - 2 * devamsizlik + rnorm(n, 0, 5))

# Veri seti olustur
veri1 <- data.frame(yas, calisma_suresi, devamsizlik, cinsiyet, not)


# -------------------------------
# Veri seti 1: EDA
# -------------------------------

# Veri setinin boyutlarini goruntule
dim(veri1)

# Veri setindeki degisken isimlerini goruntule
names(veri1)

# Veri setinin yapisini incele
str(veri1)

# Veri setinin genel ozet istatistiklerini goruntule
summary(veri1)

# Eksik veri kontrolu yap
colSums(is.na(veri1))

# Not degiskeninin ortalamasini hesapla
mean(veri1$not)

# Not degiskeninin ortancasini hesapla
median(veri1$not)

# Not degiskeninin ceyrekliklerini hesapla
quantile(veri1$not)

# Not degiskeninin minimum ve maksimum degerlerini bul
min(veri1$not)
max(veri1$not)

# Cinsiyet degiskeninin frekans tablosunu olustur
table(veri1$cinsiyet)

# Cinsiyet degiskeninin yuzde dagilimini hesapla
prop.table(table(veri1$cinsiyet)) * 100

# Not degiskeninin histogramini ciz
hist(veri1$not,
     main = "Not Dagilimi",
     xlab = "Not")

# Not degiskeninin kutu grafigini ciz
boxplot(veri1$not)

# Calisma suresi ile not arasindaki iliski grafigini ciz
plot(veri1$calisma_suresi, veri1$not)

# Not degiskeninin normal dagilima uygunlugunu QQ plot ile incele
qqnorm(veri1$not)
qqline(veri1$not)


# -------------------------------
# Veri seti 2: Veriyi cek
# -------------------------------

# Calisma dizinini kontrol et
getwd()

# Kaggle'dan indirilen veri setini diskten oku
veri2 <- read.csv("C:/Users/Deniz/Desktop/odev/student-mat.csv", sep = ";")


# -------------------------------
# Veri seti 2: EDA
# -------------------------------

# Veri setinin ilk 6 satirini goruntule
head(veri2)

# Veri setinin boyutlarini goruntule
dim(veri2)

# Veri setindeki degisken isimlerini goruntule
names(veri2)

# Veri setinin yapisini incele
str(veri2)

# Veri setinin genel ozet istatistiklerini goruntule
summary(veri2)

# Eksik veri kontrolunu yap
colSums(is.na(veri2))

# G3 degiskeninin ortalamasini hesapla
mean(veri2$G3)

# G3 degiskeninin ortancasini hesapla
median(veri2$G3)

# G3 degiskeninin ceyrekliklerini hesapla
quantile(veri2$G3)

# G3 degiskeninin minimum ve maksimum degerlerini bul
min(veri2$G3)
max(veri2$G3)

# Sex degiskeninin frekans tablosunu olustur
table(veri2$sex)

# Sex degiskeninin yuzde dagilimini hesapla
prop.table(table(veri2$sex)) * 100

# School degiskeninin frekans tablosunu olustur
table(veri2$school)

# School degiskenindeki farkli degerleri goruntule
unique(veri2$school)

# G3 degiskeninin histogramini ciz
hist(veri2$G3,
     main = "G3 Not Dagilimi",
     xlab = "G3")

# G3 degiskeninin kutu grafigini ciz
boxplot(veri2$G3)

# G1 ile G3 arasindaki iliski grafigini ciz
plot(veri2$G1, veri2$G3)

# G3 degiskeninin normal dagilima uygunlugunu QQ plot ile incele
qqnorm(veri2$G3)
qqline(veri2$G3)