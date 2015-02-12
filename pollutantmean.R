pollutantmean <- function(directory, pollutant, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  
  i <- 1
  
  while(id[i] == FALSE){
    if(i<10){
      path<-paste(directory,"/00",i,".csv",sep="")
    }
    else if(i <100){
      path<-paste(directory,"/0",i,".csv",sep="")
    }
    else{
      path<-paste(directory,"/",i,".csv",sep="")
    }
    
    mydata<-read.csv(path)
    
  }  
  
  
}
