set.seed(42)
X <- seq(1,20, by = 1)
Y <- X*2 + rnorm(20, mean =0, sd = 3)
Y_spearman <- X^2 + rnorm(20, mean = 0, sd = 5)
#pearson ve spearman korelasyonlarını hesaplama
pearson_corr <- cor(X, Y, method= "pearson")
spearman_corr <- cor(X, Y_spearman, method = "spearman")

print(paste("pearson korelasyonu : ", round(pearson_corr, 3)))
print(paste("spearman korelasyonu: ", round(spearman_corr, 3)))

 # temel r func ile grafikleri çiz
par(mfrow = c(1,2)) #2 grafik yan yana gelsin
plot(X, Y, main = "pearson korelasyonu", col = "blue", pch = 16)
abline(lm(Y ~ X), col = "red", lwd = 2)
#SPEARMAN İÇİN ÇİZİM
plot(X,Y, main = "spearman korelasyonu", col = "purple", pch = 16)
abline(lm(Y ~ X), col = "green", lwd = 2)
par(mfrow = c(1,1))
