fah_to_kelvin <- function (fah){
  
  kelv=  (((5/9) * (fah - 32)) + 273)
  return(kelv)
}


fah_to_celsius <- function (fah){
  
  cels=  ((5/9) * (fah- 32))
  return(cels)
}