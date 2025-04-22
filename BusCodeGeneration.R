generate_mmt_bus_link <- function(fromCity, toCity, date, fromCode, toCode) {
  base_url <- "https://www.makemytrip.com/bus/search"
  formatted_date <- format(as.Date(date), "%d-%m-%Y")
  url <- paste0(base_url, "/",
                URLencode(fromCity, reserved = TRUE), "/", 
                URLencode(toCity, reserved = TRUE), "/", 
                formatted_date,
                "?from_code=", fromCode,
                "&to_code=", toCode)
  return(url)
}

generate_mmt_linkBus<-function(routeNum,df,flag)
{
  date<-readLine()
  df2<-readxl::read_excel("C:/Users/admin/OneDrive/Desktop/sem vi/Bda_Codes/mybda_pbl/BusDestinationCode-DESKTOP-3VKAG0F.xlsx")
  if(flag==0)
  {
    fromCity<-"Jammu(j&k)"
    fromCode<-"MMTCC49218"
    toCity<-df$Destination[routeNum]
    toCode<-df2$toCity[2]
    link<-generate_mmt_bus_link(fromCity, toCity, date, fromCode, toCode)
  }
  if(flag==1)
  {
    fromCity<-"Jammu(j&k)"
    fromCOde<-"MMTCC49218"
    toCity<-df$`connecting station 1`[routeNum]
    toCode<-df2$toCity[2]
    link<-generate_mmt_bus_link(fromCity, toCity, date, fromCode, toCode)
  }
  if(flag==2)
  {
    fromCity<-df$`connecting station 1`[routeNum]
    fromCode<-df2$fromCity[2]
    toCity<-df$Destination[routeNum]
    toCode<-df2$toCity[2]
    link<-generate_mmt_bus_link(fromCity, toCity, date, fromCode, toCode)
  }
  return (link)
}