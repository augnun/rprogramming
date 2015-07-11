complete <- function(directory, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  arquivos = list.files(directory, pattern = ".csv", full.names = T)
  dados <- data.frame()
  nobs <- data.frame()
  for(i in id){
    dados <- read.csv(arquivos[i])
    nobs <- rbind(nobs,nrow(na.omit(dados)))
#     for(i in 1:length(id)){
#     
#     }
  }
  
  
ret <-  cbind(id,nobs)
colnames(ret) <- c("id", "nobs")
ret
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
}