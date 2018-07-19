z <- list(22,"a","c", FALSE)
z[[2]]

x <- c(117, 114, 14, 15, 113, 112, 110)
x[x>=101]<- 14
x

sw = read.csv('hw1_data.csv')
sub = subset(sw, Month == 1 & !is.na(Ozone), select = Ozone)
apply(sub, 2, max)
sub = subset(sw, Month == 2 & !is.na(Ozone), select = Ozone)
apply(sub, 2, max)
sub = subset(sw, Month == 3 & !is.na(Ozone), select = Ozone)
apply(sub, 2, max)
sub = subset(sw, Month == 4 & !is.na(Ozone), select = Ozone)
apply(sub, 2, max)
sub = subset(sw, Month == 5 & !is.na(Ozone), select = Ozone)
apply(sub, 2, max)
sub = subset(sw, Month == 6 & !is.na(Ozone), select = Ozone)
apply(sub, 2, max)
sub = subset(sw, Month == 7 & !is.na(Ozone), select = Ozone)
apply(sub, 2, max)
sub = subset(sw, Month == 8 & !is.na(Ozone), select = Ozone)
apply(sub, 2, max)
sub = subset(sw, Month == 9 & !is.na(Ozone), select = Ozone)
apply(sub, 2, max)
sub = subset(sw, Month == 10 & !is.na(Ozone), select = Ozone)
apply(sub, 2, max)
sub = subset(sw, Month == 11 & !is.na(Ozone), select = Ozone)
apply(sub, 2, max)
sub = subset(sw, Month == 12 & !is.na(Ozone), select = Ozone)
apply(sub, 2, max)


