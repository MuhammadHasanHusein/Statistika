library(RMySQL)
con = dbConnect(MySQL(), user = 'root', password = '', dbname = 'ps2[hasan]', host = 'localhost')
dbListTables(con) 
myQuery <- "select * from sansein;"
df <- dbGetQuery(con, myQuery)

library(dplyr)
df<-filter(df,Gender=="P")
print(df)
