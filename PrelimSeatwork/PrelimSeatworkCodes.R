z<- 12
class (z)
z

z <- c(12, FALSE)
class(z)

m <- c(10,13, 15, 33)
n <- c(13, 22, 88, 110)
rbind(m, n)

z <- list(22, "a", "c", FALSE)
z[[2]]

z <- 10:40
y <- 3
z + y

x <- c(117, 114, 14, 15, 113, 112, 110) 
x[x > 14] <- 100
x
x[x == 100]<- 14
x
x[x%in% 1:6] <- 14
x
x[x > 100] <- 14
x


colnames(hw1_data)
colnames(hw1_data[[1]])

hw1_data[1:12, ]

nrow(hw1_data)
hw1_data[146:153, ]

hw1_data[112,3]
hw1_data[42, 4]
hw1_data[82, 2]

sum(is.na(hw1_data$Ozone))
sum(is.na(hw1_data$Solar.R))
sum(is.na(hw1_data$Wind))
sum(is.na(hw1_data$Temp))

mean(hw1_data$Ozone, na.rm = TRUE)
mean(hw1_data$Wind, na.rm = TRUE)
mean(hw1_data$Temp, na.rm = TRUE)

solar <- subset(hw1_data, ozone > 26 & Temp > 80 & !is.na(Solar.R))
mean(solar$Solar.R)



