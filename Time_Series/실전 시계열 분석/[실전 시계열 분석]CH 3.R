head(EuStockMarkets)

plot(EuStockMarkets)

class(EuStockMarkets)

frequency(EuStockMarkets)

start(EuStockMarkets)
end(EuStockMarkets)

window(EuStockMarkets, start=1997, end=1998)

hist(EuStockMarkets[, 'SMI'], 30)
hist(diff(EuStockMarkets[, 'SMI'], 30))

plot(EuStockMarkets[, 'SMI'], EuStockMarkets[, 'DAX'])
plot(diff(EuStockMarkets[, 'SMI']), diff(EuStockMarkets[, 'DAX']))
plot(lag(diff(EuStockMarkets[, 'SMI']), 1), diff(EuStockMarkets[, 'DAX']))

plot(AirPassengers)

x <- rnorm(n=100, mean=0, sd=10) + 1:100
mn <- function(n) rep(1/n, n)

plot(x, type='l', lwd=1)
lines(filter(x, mn(5)), col=2, lwd=3, lty=2)
lines(filter(x, mn(50)), col=3, lwd=3, lty=3)

require(zoo)

f1 <- rollapply(zoo(x), 20, function(w) min(w), align='left', partial=TRUE)
f2 <- rollapply(zoo(x), 20, function(w) min(w), align='right', partial=TRUE)

plot(x, lwd=1, type='l')
lines(f1, col=2, lwd=3, lty=2)
lines(f2, col=3, lwd=3, lty=3)

plot(x, type= 'l', lwd=1)
lines(cummax(x), col=2, lwd=3, lty=2)
lines(cumsum(x)/1:length(x), col=3, lwd=3, lty=3)

x <- 1:100
y <- sin(x * pi/3)
plot(y, type='b')
acf(y)

y <- sin(x * pi/3)
plot(y[1:30], type='b')
pacf

y1 <- sin(x *pi/3)
plot(y1, type='b')
acf(y1)
pacf(y1)

y2 <- sin(x * pi/10)
plot(y2, type='b')
acf(y2)
pacf(y2)

noise1 <- rnorm(100, sd=0.05)
noise2 <- rnorm(100, sd=0.05)

y1 <- y1 + noise1
y2 <- y2 + noise2
y <- y1 + y2

plot(y1, type='b')
acf(y1)
pacf(y1)

plot(y2, type='b')
acf(y2)
pacf(y2)

plot(y, type='b')
acf(y)
pacf(y)

