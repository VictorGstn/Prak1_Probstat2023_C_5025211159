#5a
df <- 6
pt(-2.34,df)

#5b
df <- 6
pt(1.34,df, lower.tail = FALSE)

#5c
df <- 3
pt(-1.23,df,lower.tail = TRUE) + pt(1.23,df,lower.tail = FALSE)

#5d
df <- 14
pt(0.94,df) - pt(-0.94,df)

#5e
df <- 5
qt(0.0333, df)

#5f
df <- 25
qt(0.125, df, lower.tail = FALSE)

#5g
df <- 11
qt(0.75/2,df, lower.tail = TRUE)
qt(0.75/2,df, lower.tail = FALSE)

#5h
df <- 23
qt(0.0333/2,df, lower.tail = TRUE)
qt(0.0333/2,df, lower.tail = FALSE)

