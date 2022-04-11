data <- read.csv(("income_internet.csv") , stringsAsFactors = T)
head(data)
str(data)
summary(data)
income_levels <-levels(data$Income.Group)
a <- c("a", "b")
levels(a)
result <- NULL
nrow(data[data$Income.Group=="Low income",]) / nrow(data)

result <-rbind(seq(1,4))
result <-rbind(result, rep(0,4))

pos <-1
for (level in income_levels) {
  result[2, pos] =nrow(data[data$Income.Group==level,]) / nrow(data)
  pos <- pos + 1
}

result[1,] <- income_levels
result

#ejercicio3
qplot(income_levels)

#ejercicio 4 y 6
data[data$Internet.users == max(data$Internet.users),]

#ejercicio 5
data[data$Birth.rate == max(data$Birth.rate),]

#ejercicio 7
cor(data$Birth.rate, data$Internet.users)

#ejercicio 8
qplot(data= data, y=Birth.rate, x=Internet.users, color=Income.Group)

# ejercicio 9
data[data$Internet.users ==min(data$Internet.users),]

#Countries region

