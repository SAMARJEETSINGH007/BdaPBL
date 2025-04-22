get_train_status <- function(train_number, departure_date, api_key="7c761429b7msh3b606c9b299c6f2p1f1bf7jsn593bd25e1625")
  {
  # Build URL
  url <- paste0("https://indian-railway-irctc.p.rapidapi.com/api/trains/v1/train/status?",
                "departure_date=", departure_date,
                "&isH5=true&client=web&train_number=", train_number)
  
  # Make GET request using httr::GET
  response <- httr::GET(url, httr::add_headers(
    `x-rapid-api` = "rapid-api-database",
    `x-rapidapi-host` = "indian-railway-irctc.p.rapidapi.com",
    `x-rapidapi-key` = api_key
  ))
  
  # Check and parse response using httr + jsonlite
  if (httr::status_code(response) == 200) {
    result <- httr::content(response, as = "parsed", simplifyVector = TRUE)
    return(result)
  } else {
    warning(paste("API request failed. Status code:", httr::status_code(response)))
    return(NULL)
  }
}
today <- format(Sys.Date(), "%Y%m%d")
get_train_status("11077", today, "7c761429b7msh3b606c9b299c6f2p1f1bf7jsn593bd25e1625")
