setwd("C:/Users/raven/Desktop/biocomputing/exercise9/Biocomp-Fall2018-181102-Exercise9") 
library(ggplot2)
library(grid)
library(gridExtra)

#Task1
#Get cancer incidence data table from here: https://seer.cancer.gov/faststats/selections.php?series=cancer
#Cancer Incidence Rates recorded by SEER by Year 1975-2015
SEER=read.table("SEER.csv",header=TRUE,sep=",",stringsAsFactors=FALSE)
task1=ggplot(SEER,aes(x=Year,y=Rate))+theme_bw()+geom_point()+stat_smooth(method="auto")
task1

#Task2
data=read.table("data.txt",header=TRUE,sep=",",stringsAsFactors=FALSE)
task2a=ggplot(data)+geom_bar(aes(x=as.factor(region),y=observations),stat="summary",fun.y="mean",fill="black",color="black")+xlab("region")+theme_classic()
task2a
task2b=ggplot(data,aes(x=region,y=observations))+geom_jitter()
task2b
