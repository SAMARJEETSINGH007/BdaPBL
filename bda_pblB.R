pacman::p_load(dplyr,stringr,textclean,tidytext,tm,readxl)

print("Welcome we have the data of these stations:")
all_destinations<-getStationRoute()
names(all_destinations)

print("Please enter the station you want to go to...")
destination_user<-readline()
user_destination_route<-getDestinationRoutes(destination_user)
View(user_destination_route)


print("Please tell us as to what route you want to choose from?")
routeNum_user<-readline()
names(user_destination_route)
v1<-get_city_file_path(destination_user)
print(v1)
generateLink(v1,routeNum_user)
