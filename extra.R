setwd("/home/shubham/Downloads")


train <- read.csv('Training_Election_Extravaganza.csv')
test <- read.csv('Test_Election_Extravaganza.csv')

sample_size=floor(0.75*nrow(train))
sample_index=sample(seq_len(nrow(train)),size = sample_size)
training <- train[sample_index,]
cv <- train[-sample_index,]

model1 <- lm(Total.Expenditure ~ F1 + F2 + F3 + F4 + F5 + F6 + F7 + F8 + F9 + F10 + F11 + F12 + F13 + F14 + F15 + F16, data = training)
result<-predict(model1,newdata = cv)


#calculating rmse

rmse=sqrt(sum(cv$Total.Expenditure-result)^2)

# predicting on test
result1 <- predict(model1,newdata = test)
write.csv(result1, file = 'test_election.csv')
