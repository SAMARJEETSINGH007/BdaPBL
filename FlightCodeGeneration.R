df3<-readxl::read_excel("C:/Users/admin/OneDrive/Desktop/sem vi/Bda_Codes/mybda_pbl/FlightDestinationCode.xlsx")
View(df3)
generate_mmt_flight_link <- function(fromCode, toCode, date, 
                                     adults = 1, children = 0, infants = 0,
                                     classCode = "E") {
  
  base_url <- "https://www.makemytrip.com/flight/search"
  formatted_date <- format(as.Date(date), "%d/%m/%Y")
  itinerary <- paste0(fromCode, "-", toCode, "-", formatted_date)
  paxType <- paste0("A-", adults, "_C-", children, "_I-", infants)
  query <- paste0("?itinerary=", itinerary,
                  "&tripType=O",
                  "&paxType=", paxType,
                  "&intl=false",
                  "&cabinClass=", classCode,
                  "&lang=eng")
  
  return(paste0(base_url, query))
}
generate_mmt_linkFlight <- function(routeNum, df, flag) 
  {
  date <- readline(prompt = "Enter the date (e.g. 2025-04-09): ")
  # Determine fromCity and toCity based on flag
  if (flag == 0) {
    fromCity <- "jammu"
    toCity <- df$Destination[routeNum]
  } 
  else if (flag == 1)
  {
    fromCity <- "jammu"
    toCity <- df$`connecting station 1`[routeNum]
  }
  else if (flag == 2) 
  {
    fromCity <- df$`connecting station 1`[routeNum]
    toCity <- df$Destination[routeNum]
  }
  else 
  {
    stop("Invalid flag value. Must be 0, 1, or 2.")
  }
  fromCode <- df3[[fromCity]][1]
  toCode <- df3[[toCity]][1]
  
  # Generate the flight link
  fromCode<-getFlightCode(fromCity)
  toCode<-getFlightCode(toCity)
  link <- generate_mmt_flight_link(fromCode, toCode, date)
  return(link)
}
getFlightCode<-function(cityName)
{
  df3<-readxl::read_excel("C:/Users/admin/OneDrive/Desktop/sem vi/Bda_Codes/mybda_pbl/FlightDestinationCode.xlsx")
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