generate_mmt_link <- function(srcStn, srcCity, destStn, destCity, date, classCode="3A") {
  base_url <- "https://www.makemytrip.com/railways/listing"
  
  # Construct query parameters
  query_params <- paste0("?date=", gsub("-", "", date),  # Remove dashes from date
                         "&srcStn=", srcStn,
                         "&srcCity=", srcCity,
                         "&destStn=", destStn,
                         "&destCity=", destCity,
                         "&classCode=", classCode)
  # Complete URL
  full_url <- paste0(base_url, query_params)
  return(full_url)
}
generate_link<-function(digit,date)
{
  l1<-generate_mmt_link("JAT","Jammu","PUNE","Pune","2025-05-09","3A")
  return (l1)
}

print(l1)
df<-generate_mmt_linkTrain(1,"C:/Users/admin/OneDrive/Desktop/sem vi/Bda_Codes/mybda_pbl/JATPNQ.xlsx",0)

generate_mmt_linkTrain<-function(routeNum,df,flag)
{
  date<-readline()
  dest_codes<-readxl::read_excel("C:/Users/admin/OneDrive/Desktop/sem vi/Bda_Codes/mybda_pbl/TrainDestinationCode.xlsx")
  #Determine from srcStn and srcCity
  if(flag==0)
  {
    srcCity<-"Jammmu"
    destCity<-df$Destination[routeNum]
    srcStn<-"JAT"
  }
  else if(flag==1)
  {
    srcCity<-"Jammu"
    destCity<-df$`connecting station 1`[routeNum]
  }
  else if(flag==2)
  {
    srcCity<-df$`connecting station 1`[routeNum]
    destCity<-df$Destination[routeNum]
  }
  srcStn<-getTrainCode(srcCity)
  destStn<-getTrainCode(destCity)
  link<-generate_mmt_link(srcStn,srcCity,destStn,destCity,date,"3A")
}
getTrainCode<-function(cityName)
{
  df4<-readxl::read_excel("C:/Users/admin/OneDrive/Desktop/sem vi/Bda_Codes/mybda_pbl/TrainDestinationCode.xlsx")
  cityName<-tolower(cityName)
  colNames<-names(df3)
  matchedCol<-colNames[which(toLower(colNames)==cityName)]
  if(length(matchedCol==1))
  {
    cityCode<-df3[[matchedCol]][1]
  }
  else
  {
    print("!!!Please check the flightCode!!!")
  }
  return (cityCode)
}
