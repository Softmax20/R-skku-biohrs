getwd() ## 현재 디렉토리: /cloud/project
setwd("data") ## 디렉토리 설정: /cloud/project/ + data
## 동일
setwd("/cloud/project/data") # 절대경로
getwd()

ex <- read.csv("https://raw.githubusercontent.com/jinseob2kim/lecture-snuhlab/master/data/example_g1e.csv") # Public link !
head(ex)

ex.spss <- haven::read_sav("https://raw.githubusercontent.com/jinseob2kim/lecture-snuhlab/master/data/example_g1e.sav")
head(ex.spss) # tibble

write.csv(ex, "example_g1e_ex.csv", row.names = F) # /cloud/project/data/example_g1e_ex.csv

str(ex)
names(ex)
dim(ex)
nrow(ex)
ncol(ex)
class(ex)
summary(ex)
ex$EXMD_BZ_YYYY
head(ex[, c("EXMD_BZ_YYYY", "RN_INDI", "BMI")]) ## matrix syle with 
unique(ex$EXMD_BZ_YYYY)
length(unique(ex$EXMD_BZ_YYYY))
table(ex$EXMD_BZ_YYYY)

# 새로운 변수 만들기
mean(ex$BMI)
BMI_cat <- (ex$BMI >= 25)
table(BMI_cat)

rows <- which(ex$BMI >= 25)
head(rows)
ex$BMI[ex$BMI >= 25]

ex$zero <- 0
ex$BMI_cat <- (ex$BMI >= 25)
table(ex$BMI_cat)
