setwd("/home/shubham/Downloads")

train <- read.csv('training_Hunt4Gold.csv')
test <- read.csv('test_Hunt4Gold.csv')
#train$lead  <-  (train$lead-min(train$lead))/(max(train$lead)-min(train$lead))
train$mica  <- (train$mica-min(train$mica))/(max(train$mica)-min(train$mica))
sample_size=floor(0.75*nrow(train))
sample_index=sample(seq_len(nrow(train)),size = sample_size)
training <- train[sample_index,]
cv <- train[-sample_index,]

model2 <- lm(Gold.mine ~ CuFeS + ferric.minerals + mica + lead + magnesium + silica  + sulphides.minerals   + magnetite.black.cubes.,data=training)

result<-predict(model2,newdata = cv)
result[result >= 0.2] <- 1
result[result < 0.2] <- 0
#calculating rmse

rmse=sqrt(sum(cv$Gold.mine-result)^2)
#### imbalance data treatment
install.packages('ROSE')
library(ROSE)
library(rpart)
data.rose <- ROSE(Gold.mine ~ ., data = train, seed = 1)$data
tree.rose <- rpart(Gold.mine ~ ., data = data.rose)
pred.tree.rose <- predict(tree.rose, newdata = test)
pred.tree.rose[pred.tree.rose >= 0.5] <- 1
pred.tree.rose[pred.tree.rose < 0.5] <- 0

rmse=sqrt(sum(cv$Gold.mine-pred.tree.rose)^2)
# predicting on test
result1 <- predict(model2,newdata = test)
result1[result1 >= 0.15] <- 1
result1[result1 < 0.15] <- 0
write.csv(result1, file = 'test_gold.csv')
