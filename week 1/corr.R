corr <- function(directory, threshold = 0) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0
  
  ## Return a numeric vector of correlations
  ## NOTE: Do not round the result!
  arquivos = list.files(directory, pattern = ".csv", full.names = T)
  dados <- data.frame()
  nobs <- data.frame()
  for(i in 1:length(arquivos)){
    dados <- read.csv(arquivos[i])
    nobs <- rbind(nobs,nrow(na.omit(dados)))
    #     for(i in 1:length(id)){
    #     
    #     }
  }
  cbind(dados, nobs)
}