setwd("C:/Users/raven/Desktop/biocomputing/exercise9/Biocomp-Fall2018-181102-Exercise9") 
library(ggplot2)
library(grid)
library(gridExtra)

#Task1
#Get cancer incidence data table from here: https://seer.cancer.gov/faststats/selections.php?series=cancer
#Cancer Incidence recorded by SEER by Year 1975-2015
SEER=read.table("SEER.csv",header=TRUE,sep=",",stringsAsFactors=FALSE)
task1=ggplot(SEER,aes(x=Year,y=Rate))+theme_bw()+geom_point()+stat_smooth(method="auto")+ggtitle("Cancer Incidence recorded by SEER by Year (1975-2015)")+ theme(plot.title = element_text(hjust = 0.5))
task1

#Task2
data=read.table("data.txt",header=TRUE,sep=",",stringsAsFactors=FALSE)
task2a=ggplot(data)+geom_bar(aes(x=as.factor(region),y=observations),stat="summary",fun.y="mean",fill="black",color="black")+xlab("region")+ggtitle("Mean Observations by Region")+theme_classic()+theme(plot.title=element_text(hjust=0.5))
task2a
task2b=ggplot(data,aes(x=region,y=observations))+geom_jitter()+ggtitle("Scatterplot of Observations by Region")+theme_classic()+theme(plot.title=element_text(hjust=0.5))
task2b
print("The means on the bar grpah are similar among the regions. Only the east has a slightly higher mean observation number. However, from the scatter plot it is evident that the distribution of observations is very different among regions. For example, all observations in north are clustered around 15, while observations spread out and range from 0-30 in west. The difference in data shows that the mean alone is not enough to summarize a set of data")
