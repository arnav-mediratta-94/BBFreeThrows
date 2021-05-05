

#Function to avoid writing same code again.
myPlot <- function(data,rows=1:10){
  Data<-data[rows,,drop=F]
  matplot(t(Data), type = 'b', pch = 15:18, col = c(1:4,6))
  legend('bottomleft',inset = 0.01,legend = Players[rows], pch = 15:18, col = c(1:4,6))
}

#Free throw attempts per game

myPlot(FreeThrowAttempts/Games)

#Accuracy of free throws

myPlot(FreeThrows/FreeThrowAttempts)

#Playing Style 
FieldGoals
FreeThrows
Points
FGminusFT <- (Points - FreeThrows)/FieldGoals
FGminusFT
myPlot(FGminusFT)
