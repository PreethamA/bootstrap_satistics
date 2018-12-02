x <- c(94,197,16,38,99,141,23,200,300,432,454,500)
#Function for simulating from parametric distribution
gen.data <- function(x,mle)
  rnorm(length(x),mle$mu,mle$sd)
boot.mean <- boot(x,mean,6000,sim="parametric",
                  ran.gen=gen.data,mle=list(mu=mean(x),sd=sd(x)))


