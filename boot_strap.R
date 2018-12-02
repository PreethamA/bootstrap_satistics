set.seed(333)
x<-rnorm(30)
bootmean<-rep(NA,1000)
samplemean<-rep(NA,1000)
for(i in 1:1000)
{
  bootmean[i]<-mean(sample(x,replace=TRUE))
}
for(i in 1:1000)
{
  samplemean[i]<-mean(rnorm(30))
  
  
}
plot(density(bootmean))
lines(density(samplemean),col="red")
