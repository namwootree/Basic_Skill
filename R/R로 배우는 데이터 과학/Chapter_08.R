muffler=data.frame(discount=c(2.0, 4.0, 6.0, 8.0, 10.0),
                   profit=c(0, 0, 0, 1, 1))
plot(muffler, pch=20, cex=2, xlim=c(0, 12))

m=lm(profit~discount, data=muffler)
coef(m)
fitted(m)
residuals(m)
deviance(m)

plot(muffler, pch=20, cex=2, xlim=c(0, 12))
abline(m)

newd=data.frame(discount=c(1, 5, 12, 20, 30))
p=predict(m, newd)
print(p)

plot(muffler,
     pch=20,
     xlim=c(0, 32), ylim=c(-0.5, 4.2))
abline(m)

res=data.frame(discount=newd, profit=p)
points(res, pch=20, cex=2, col='red')
legend('bottomright',
       legend=c('train data', 'new data'),
       pch=c(20, 20),
       cex=2,
       col=c('black', 'red'),
       bg='gray')

muffler=data.frame(discount=c(2.0, 4.0, 6.0, 8.0, 10.0),
                   profit=c(0, 0, 0, 1, 1))
g=glm(profit~discount, 
      data=muffler,
      family=binomial
coef(g)
fitted(g)      
residuals(g)
deviance(g)

newd=data.frame(discount=c(1, 5, 12, 20, 30))
p=predict(g, newd, type='response')
print(p)

plot(muffler, pch=20, cex=2, xlim=c(0, 32))
abline(g, col='blue', lwd=2)
res=data.frame(discount=newd, profit=p)
points(res, pch=20, cex=2, col='red')
legend('bottomright', 
       legend=c('train data', 'new data'),
       pch=c(20, 20),
       cex=2,
       col=c('black', 'red'),
       bg='gray')
