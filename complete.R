complete <- function(directory, id = 1:332) {
  
  for(i in 1:332) {
    
    if(i<10){
      path<-paste(directory,"/00",i,".csv",sep="")
    }
    else if(i <100){
      path<-paste(directory,"/0",i,".csv",sep="")
    }
    else{
      path<-paste(directory,"/",i,".csv",sep="")
    }
    
    #path<-paste(directory,"/",id[i],".csv",sep="")
    mydata<-read.csv(path)
    nobs<-nrow(na.omit(mydata))
    nobs<-sum(complete.cases(mydata))
    i<-i+1
  }
  
  completedata<-c(id,nobs)
  print(completedata)
}

complete("specdata", 1)
