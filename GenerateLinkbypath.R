generateLink <- function(path, routeNum) {
  date<-readline(prompt = "Please enter the date on which you wanna go!")
  
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~PUNE~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    if (path == "C:\\Users\\admin\\OneDrive\\Desktop\\sem vi\\Bda_Codes\\mybda_pbl\\JATPNQ.xlsx") 
  {

    print("You are going from Jammu to Pune")
    if(routeNum==1)
    {
      print("Directly...via train")
      print("Generating link...for train from Jammu to Pune")
      print(generate_mmt_link("JAT","Jammu","PUNE","Pune",date))
    }
    if(routeNum==2)
    {
      print("Via Amritsar")
      print("Generating link for bus travel from Jammu to Amritsar...")
      print(generate_mmt_bus_link("Jammu(j&k)","Amritsar",date,"MMTCC49218","MMTCC1043"))
      print("Generating link...for flight from Amritsar to Pune")
      print(generate_mmt_flight_link("ATQ","PNQ",date))
    }
    if(routeNum==3)
    {
      print("Via Delhi")
      print("Generating the link for train from Jammu to Delhi...")
      print(generate_mmt_link("JAT","Jammu","NDLS","Delhi",date))
      print("Generating the link... for Flight from Delhi to Pune")
      print(generate_mmt_flight_link("DEL","PNQ",date))
    }
    if(routeNum==4)
    {
      print("Via Mumbai")
      print("Generating the link for train travel from Jammu to Mumbai...")
      print(generate_mmt_link("JAT","Jammu","BDTS","Mumbai",date))
      print("Generating the link... for bus from Mumbai to Pune")
      print(generate_mmt_bus_link("Mumbai","Pune",date,"MMTCC1599","MMTCC1744"))
    }
  }
#  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Prayagraj~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  if (path == "C:\\Users\\admin\\OneDrive\\Desktop\\sem vi\\Bda_Codes\\mybda_pbl\\Jammu_to_Prayagraj_Routes.xlsx") 
  {
    print("Just choose 1 for routes 1 to 3, you will be redirected to the link with many a options")
    print("Heading from Jammu to Prayagraj!")
    if(routeNum==1||routeNum==2||routeNum==3)
    {
      print("Directly...via train")
      print("Generating link...for train from Jammu to Prayagraj")
      print(generate_mmt_link("JAT","Jammu","Prayagraj","PRYJ",date))
    }
    if(routeNum==4)
    {
      print("Via NewDelhi")
      print("Generating the link for flight travel from Jammu to new Delhi...")
      print(generate_mmt_linkFlight("IXJ","DEL",date))
      print("Generating the link... for flight from Delhi to Prayagraj")
      print(generate_mmt_flight_link("DEL","IXD",date))
    }
    if(routeNum==5)
    {
      print("Via Lukhnow")
      print("Generating the link for airport travel from Jammu to Luckhnow...")
      print(generate_mmt_flight_link("IXJ","LKO",date))
      print("Generating the link... for train from Luckhnow to Prayagraj")
      print(generate_mmt_bus_link("Lucknow","Allahabad (Prayagraj)",date,"MMTCC2161","MMTCC5713"))
    }
  }
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Mumbai~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  if (path == "C:\\Users\\admin\\OneDrive\\Desktop\\sem vi\\Bda_Codes\\mybda_pbl\\Mumbai.xlsx") {
    print("Mumbai vibes activated.")
    if(routeNum==1)
    {
      print("Directly...via flight")
      print("Generating link...for flight from Jammu to Mumbai")
      print(generate_mmt_flight_link("IXJ","BOM",date))
    }
    if(routeNum==2)
    {
      print("Via Delhi")
      print("Generating the link for Train travel from Jammu to Delhi...")
      print(generate_mmt_link("JAT","Jammu","NDLS","Delhi",date))
      print("Generating the link... for airport from Delhi to Mumbai")
      print(generate_mmt_flight_link("DEL","BOM",date))
    }
    if(routeNum==3)
    {
      print("Directly...via train")
      print("Generating the link for train travel from Jammu to Mumbai...")
      print(generate_mmt_link("JAT","Jammu","CSTM","Mumbai",date))
    }
    if(routeNum==4)
    {
      print("Via Delhi")
      print("Generating the link for train travel from Jammu to Delhi...")
      print(generate_mmt_link("JAT","Jammu","NDLS","Delhi",date))
      print("Generating the link for train travel from Delhi to Mumbai...")
      print(generate_mmt_link("NDLS","Delhi","CSTM","Mumbai",date))
    }
  }
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Bangalore~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  if (path == "C:\\Users\\admin\\OneDrive\\Desktop\\sem vi\\Bda_Codes\\mybda_pbl\\Bangalore.xlsx") {
    print("Off to the tech capital - Bangalore!")
    if(routeNum==1)
    {
      print("Directly...via flight")
      print("Generating the link for flight from Jammu to Bangalore...")
      print(generate_mmt_flight_link("IXJ","BLR",date))
    }
    if(routeNum==2)
    {
      print("Via Delhi")
      print("Generating the train link from Jammu to Delhi...")
      print(generate_mmt_link("IXJ","DEL",date))
      print("Generating the link for train from Delhi to Bangalore...")
      print(generate_mmt_link("NDLS","Delhi","SBC","Bangalore",date))
    }
  }
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Chitrakoot~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  if (path == "C:\\Users\\admin\\OneDrive\\Desktop\\sem vi\\Bda_Codes\\mybda_pbl\\Chitrakoot.xlsx") {
    print("Divine trip to Chitrakoot?")
    if(routeNum==1)
    {
      print("Via Kanpur")
      print("Generating the link for train from Jammu to Kanpur...")
      print(generate_mmt_link("JAT","Jammu","CNB","Kanpur",date))
      print("Generating the link for train from Kanpur to Chitrakoot ")
      print(generate_mmt_link("JAT","Jammu","CKTD","Chitrakot",date))
    }
    if(routeNum==2)
    {
      print("Directly via train")
      print("Generating the link for train from Jammu to Chitrakoot")
      print(generate_mmt_link("JAT","Jammu","CKTD","Chitrakot",date))
    }
    if(routeNum==3)
    {
      print("Via luckhnow")
      print("Genrating the link for flight from Jammu to Luckhnow")
      print(generate_mmt_flight_link("IXJ","LKO",date))
      print("Generating the link for train from lucknow to chitrakoot")
      print(generate_mmt_link("LKO","Lucknow","CKTD","Chitrakot",date))
    }
    if(routeNum==4)
    {
      print("via Gwalior")
      print("Generating the link for train from Jammu to Gwalior")
      print(generate_mmt_link("JAT","Jammu","GWL","Gwalior",date))
      print("generating the link for train from Gwalior to Chitrakoot")
      print(generate_mmt_link("GWL","Gwalior","CKTD","Chitrakot",date))
    }
  }
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Delhi~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  if (path == "C:\\Users\\admin\\OneDrive\\Desktop\\sem vi\\Bda_Codes\\mybda_pbl\\Delhi.xlsx") {
    print("Delhi detour coming up.")
    if(routeNum==1)
    {
      print("Via Srinagar")
      print("Generating the link for bus from Jammu to Srinagar")
      print(generate_mmt_bus_link("Jammu(j and k)","Srinagar","MMTCC49218","MMTCC1852",date))
      print("Generating the link for Flight from Srinagar to Delhi")
      print(generate_mmt_flight_link("SXR","DEL",date))
    }
    if(routeNum==2)
    {
      print("Directly via flight")
      print("Generating the link for flight from Jammu to Delhi")
      print(generate_mmt_flight_link("IXJ","DEL",date))
    }
    if(routeNum==3)
    {
      print("Directly via train")
      print("Generating the link for train from Jammu to Delhi")
      print(generate_mmt_link("JAT","Jammu","NDLS","Delhi",date))
    }
    if(routeNum==4)
    {
      print("Via Ludhiana")
      print("Generating the link for train from Jammu to Ludhiana")
      print(generate_mmt_link("JAT","Jammu","LDH","Ludhiana",date))
      print("Generating the link for train from Ludhiana to Delhi")
      print(generate_mmt_link("LDH","Ludhiana","NDLS","Delhi",date))
    }
  }
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Patna~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  if (path == "C:\\Users\\admin\\OneDrive\\Desktop\\sem vi\\Bda_Codes\\mybda_pbl\\patna.xlsx") {
    print("Patna, here we go.")
    if(routeNum==1)
    {
      print("Via delhi")
      print("Generating the link for flight from Jammu to Delhi...")
      print(generate_mmt_flight_link("IXJ","DEL",date))
      print("Generating the link for flight from Delhi to Patna")
      print(generate_mmt_flight_link("DEL","PAT",date))
    }
    if(routeNum==2)
    {
      print("Directly by train")
      print("Generating the link for train from Jammu to Patna...")
      print(generate_mmt_link("JAT","Jammu","PNBE","Patna",date))
    }
    if(routeNum==3)
    {
      print("Via Delhi")
      print("Generating the link for bus from Jammu to Delhi...")
      print(generate_mmt_bus_link("Jammu(j and k)","Delhi",date,"MMTCC49218","MMTCC1199"))
      print("Generating the link for bus from Delhi to Patna")
      print(generate_mmt_bus_link("Delhi","Patna",date,"MMTCC1199","MMTCC49398"))
    }
  }
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Kolkata~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  if (path == "C:\\Users\\admin\\OneDrive\\Desktop\\sem vi\\Bda_Codes\\mybda_pbl\\jammu-kolkata-DESKTOP-3VKAG0F.xlsx") {
    print("Jammu to Kolkata - let’s roll.")
    if(routeNum==1)
    {
      print("Directly by flight")
      print("Generating the link for flight from Jammu to Kolkata")
      print(generate_mmt_flight_link("IXJ","CCU",date))
    }
    if(routeNum==2)
    {
      print("Via srinagar")
      print("Generating the link for bus from Jammu to Srinagar")
      print(generate_mmt_bus_link("Jammu(j and k)","Srinagar","MMTCC49218","MMTCC1852",date))
      print("Generating the link for flight from Kolkata to Srinagar")
      print(generate_mmt_flight_link("SXR","CCU",date))
    }
    if(routeNum==3)
    {
      print("Directly by train")
      print("Generating the link for train from Jammu to Kolkata")
      print(generate_mmt_link("JAT","Jammu","HWH","Kolkata",date))
    }
    if(routeNum==4)
    {
      print("Via Amritsar")
      print("Generating the link for bus from Jammu to Amritsar")
      print(generate_mmt_bus_link("Jammu(j and k)","Amritsar",date,"MMTCC49218","MMTCC1043"))
      print("Generating the link for flight from Amritsar to Kolkata")
      print(generate_mmt_flight_link("ATQ","CCU",date))
    }
  }
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Surat~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  if (path == "C:\\Users\\admin\\OneDrive\\Desktop\\sem vi\\Bda_Codes\\mybda_pbl\\surat.xlsx") {
    print("Traveling to Surat.")
    if(routeNum==1)
    {
      print("via Delhi")
      print("Generating the link for flight from Jammu to Delhi")
      print(generate_mmt_flight_link("IXJ","DEL",date))
      print("Generating the link for flight from Delhi to Surat")
      print(generate_mmt_flight_link("DEL","STV",date))
    }
    if(routeNum==2)
    {
      print("Directly by train")
      print("generating the link for train from Jammu to Surat")
      print(generate_mmt_link("JAT","Jammu","ST","Surat",date))
    }
    if(routeNum==3)
    {
      print("Via Delhi")
      print("generating the link for bus from Jammu to Delhi")
      print(generate_mmt_bus_link("Jammu(j and k)","Delhi",date,"MMTCC49218","MMTCC1199"))
      print("generating the link for bus from Delhi to Surat")
      print(generate_mmt_bus_link("Delhi","Surat",date,"MMTCC1199","MMTCC1199"))
    }
  }
}
