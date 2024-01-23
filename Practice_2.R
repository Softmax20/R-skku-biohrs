x <- c(1,2,3,4,5,6)
y <- c(7,8,9,10,11,12)
x>=4
sum(x>=4)
x[x>=4]
sum(x[x>=4])
x %in% c(1)

v1 <- seq(-5, 5, by=.2); v1
v2 <- rep(1, 3); v2
v3 <- rep(c(1,2,3), 2); v3
v4 <- rep(c(1,2,3), each=2); v4

for (i in 1:3){
  print(i)
}

i <- 0
for (j in c(1,2,4,5,7)){
  i <- i + j
}
i

x <- 5
if (x >=3){
  x <- x+3
}
x

x <- 5
if (x >= 10){
  print("High")
} else if (x >= 5){
  print("Medium")
} else {
  print("Low")
}

x <- 1:6
y <- ifelse(x >= 4, "Yes", "No")
y

x <- c(1:10, 12, 13, NA, NA, 15, 17) ## 결측치가 포함되어 있다면..
mean0 <- function(x){
  mean(x, na.rm = T)
}
mean0(x)

mat <- matrix(1:20, nrow = 4, byrow = T)   ## 4행 5열, byrow = T : 행부터 채운다. 
mat
mean(mat[2,])
out <- NULL
for (i in 1:nrow(mat)){
  out <- c(out, mean(mat[i,]))
}
out

sapply(1:nrow(mat), function(x){mean(mat[x,])})
apply(mat, 2, mean)
rowMeans(mat)
rowSums(mat)
colMeans(mat)
colSums(mat)

## sapply나 lappy를 이용하여, 아래 두 벡터의 최대값을 구해라
x <- 1:6
y <- 7:12

sapply(list(x,y), max)
