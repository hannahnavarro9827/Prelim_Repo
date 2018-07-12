##Entering Input
x<- 1
print(x)
x
msg <- "hello"

##Printing
x<- 1:20
x

##Creating Vectors
x<- c(0.5, 0.6)
x<- c(TRUE, FALSE)
x<- c(T, F)
x<- 9:29
x<- c(1+0i, 2+4i)

x<-

##Missing Values
x <- c(1, 2, NA, 10, 3)
is.na(x)
is.nan(x)

x <- c(1, 2, NaN, NA, 4)
is.na(x)
is.nan(x)

##Data Frames
x<- data.frame(foo = 1:4, bar = c(T, T, F, F))
x
nrow(x)
ncol(x)

##NAmes
x<- 1:3
names(x)
names(x)<- c("foo", "bar", "norf")
x
names(x)

m<- matrix(1:4, nrow = 2, ncol = 2)
dimnames(m) <- list(c("a", "b"), c("c", "d"))
m

##dput-ting R Objects
y<- data.frame(a = 1, b = "a")
dput(y)
dput(y, file = "y.R")
new.y <- dget("y.R")
new.y

##Dumping R Objects
x<- "foo"
y<- data.frame(a = 1, b = "a")
dump(c("x", "y"), file = "data.R")
rm(x, y)
source("data.R")
y
x

##File COnnections
str(file)
function(description = "", open = "", blocking = TRUE, Encoding = getOption("encoding"))
  
  ##Connections
con<- file("foo.txt", "r")
data <- read.csv(con)
close(con)
data <- read.cvs("foot.txt")

##Reading lines of the text
con <- gzfile("words.gz")
x<- readLines(con, 10)
x

#Subsetting
x<- c("a", "b", "c", "c", "d", "a")
x[1]
x[2]
x[1:4]
x[x > "a"]
u <- x > "a"
x[u]

##Subsetting Lists
x<- list(foo = 1:4, bar = 0.6)
x[1]

x[[1]]

x$bar

x[{"bar"}]

x{"bar"}

x<- list(foo = 1:4, bar = 0.6, baz = "hello")
x[(1, 3)]

x<- list(foo = 1:4, bar = 0.6, baz = "hello")
name <- "food"
x[[name]]

x$name

s$foo

##Subsetting Nested Element
x<- list(a = list(10, 12, 14), b = c(3.14, 2.81))
x[[c(1, 3)]]

x[[1]][[3]]

x[[c(2, 1)]]

#Subsetting a MAtrix
x<- matrix(1:6, 2, 3)
x[1, 2]

x[2,1]

x[1, ]

x[, 2]

x<- matrix(1:6, 2, 3)
x[1,2]

x[1, 2, drop = FALSE]

x<- matrix(1:6, 2, 3)
x[1, ]
x[1, , drop = FALSE]

##Partial Matting
x<- list(aardvark = 1:5)
x$a
x[["a"]]
x[["a", exact = FALSE]]

##Removing NA Values
x<- c(1, 2, NA, 4, NA, 5)
bad <- is.na(x)
x[!bad]

x<- c(1, 2, NA, 4, NA, 5)
y<- C("a", "b", NA, "d", NA, "F")
good <- complete.cases(x, y)
good

x[good]

y[good]
 airquality[1:6, ]
 
 good <- complete.cases(airquality)
 airquality[good, ][1:6, ]
 
 ##Vectorized Matrix Operation
 x<- 1:4; y<- 6:9
 x + y
 x > 2
 x >= 2
 y == 8
 x * y
 x / y
 
 x<- matrix(1:4, 2, 2); y <-matrix(rep(10, 4), 2, 2)
 x / y
 x %*% y