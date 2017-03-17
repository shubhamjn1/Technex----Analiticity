# reading csv file
train1 <- read.csv('AirQuality.csv')

# linear regression model
model <- lm(T ~ O3 + CO + C6H6 + SO2 + NO2 + NOx.GT. + Pb + PM.2.5. + PM.10. + RH + AH, data = train1)

#calculating
floor(sum(model$coefficients[model$coefficients > 0]) - 10.681456434)

