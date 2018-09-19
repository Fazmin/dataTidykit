library(shiny)
library(shinydashboard)


dashboardPage(skin = "blue",
  dashboardHeader(title = "Data Organize & Stats 1.12v"),
  dashboardSidebar(
    sidebarMenu(
        menuItem("Data Upload", tabName = "dashboard", icon = icon("dashboard")),
        menuItem("Tidy up", tabName = "widgettydy", icon = icon("th")),
        
        fileInput("file","Upload the file", multiple = TRUE), # fileinput() function is used to get the file upload contorl option
        # helpText("Max file size is 5MB"),
        helpText("Select read parameters"),
        checkboxInput(inputId = 'header', label = 'Header', value = TRUE),
        checkboxInput(inputId = "stringAsFactors", "stringAsFactors", FALSE),
        radioButtons(inputId = 'sep', label = 'Separator', choices = c(Comma=',',Semicolon=';',Tab='\t', Space=''), selected = ',')
        
      )

    ),
  dashboardBody(
    tabItems(
      tabItem(tabName = "dashboard",
        h2("Upload data files."),
        uiOutput("selectfile"),
        uiOutput("tb")
      ),

      tabItem(tabName = "widgettydy",
        h2("Tidy the data")
        
      )
    )
    
    
    )
)
