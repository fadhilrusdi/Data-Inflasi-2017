library(ggplot2)

#Membaca data csv dan dimasukkan ke variable inflasi.indo.sing
inflasi.indo.sing <- read.csv("D:/FILE/DATA ANALYST/DATA SET/Data_set_inflasi.csv",sep=",")

#Mengubah  jenis data bulan ke Factor
inflasi.indo.sing$Bulan <- factor(inflasi.indo.sing$Bulan, levels = c("Jan-2017", 
                                                                      "Feb-2017",
                                                                      "Mar-2017",
                                                                      "Apr-2017", 
                                                                      "May-2017", 
                                                                      "Jun-2017",
                                                                      "Jul-2017",
                                                                      "Aug-2017", 
                                                                      "Sep-2017", 
                                                                      "Oct-2017"))
#mengecek st
str(inflasi.indo.sing)

#Menambahkan data dan aesthetic mapping
plot.inflasi <- ggplot(data=inflasi.indo.sing, aes(x = Bulan,  
                                                   y=Inflasi, 
                                                   color=Negara, 
                                                   group=Negara))
#Menambahkan layer dan label
plot.inflasi + geom_line() + geom_text(aes(label=Inflasi),hjust=-0.2, vjust=-0.5)






