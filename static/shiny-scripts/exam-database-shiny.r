##source: https://github.com/daattali/shiny-server/blob/master/mimic-google-form/app.R
##source for congrats: https://deanattali.com/blog/shinyalert-package/

library(shiny)
library(shinydashboard)
library(shinyjs)
library(dplyr)
library(tidyverse)
library(digest)
library(DT)
library(googledrive)
library(googlesheets4)
library(shinyalert)
#library(audio)
#library(tuneR)

############################################## GLOBAL ##########################

# which fields get saved 
fieldsAll <- c("title", "author", "year", "course", "teacher", "keywords", "abstract", "reflection", "contact", "link")


# which fields are mandatory
fieldsMandatory <- c("title", "year", "course", "keywords", "abstract", "reflection")

# add an asterisk to an input label
labelMandatory <- function(label) {
    tagList(
        label,
        span("*", class = "mandatory_star")
    )
}


# save the results to a googlesheet

table <- "https://docs.google.com/spreadsheets/d/1iNmNrr7KXurAhcqZdPjNLwjC11UsH745PoZWe7ViTWI/edit#gid=0"


saveData <- function(data) {
    data <- data.frame(data)
    googlesheets4::sheet_append(table, data)
}

loadData <- function() {
    googlesheets4::read_sheet(table)
}

data <- data.frame(loadData())
data$year <- factor(data$year, levels=c(unique(data$year)))#levels=c(2015:as.numeric(format(Sys.Date(),"%Y"))))
data$course <- factor(data$course, levels=c(unique(data$course)))#levels=c("Cognition and Communication (Ba)",
                                            #"Applied Cognitive Science before Mind and Consciousness (Ba)",
                                            #"(Models of) Perception and Action (Ba)",
                                            #"(Introduction to) Cognitive Neuroscience (Ba)",
                                            #"Social and cultural dynamics (in cognition) (Ba)",
                                            #"Bachelor thesis",
                                            #"Natural Language Processing (Ma)",
                                            #"Decision making (Ma)",
                                            #"Human-computer interaction (Ma)",
                                            #"Data Science (Ma)",
                                            #"Master thesis",
                                            #"Other: electives, profile courses, etc."))

#styles
appCSS <-
    ".mandatory_star { color: red; }
    #error { color: red; }"

#audio <- "//uni.au.dk/Users/au536929/Desktop/2nd_sem/HCI/Exam/withcongrats/sound.wav" 

############################################ UI ################################

ui <- dashboardPage(
    dashboardHeader(title = "Exam Database"),
    
    dashboardSidebar(
        sidebarMenu(
            menuItem("Database", tabName ="DB", icon = icon("server")),
            menuItem("Upload", tabName ="UP", icon = icon("upload"))
        ) #end of menu
    ), #end of sidebar
    
    dashboardBody(
        
        tabItems(
            tabItem(tabName="DB",
                    
                    fluidRow(box(title = "Filter by year", width = 6,
                                 checkboxGroupInput("Year", "Select year(s):",
                                                    choices = unique(data$year),
                                                    selected = unique(data$year),
                                                    inline=TRUE)), #end of first filter box
                             box(title="Filter by course", width=6,
                                 checkboxGroupInput("Course", "Select course(s):",
                                                    choices = unique(data$course),
                                                    selected = unique(data$course),
                                                    inline=TRUE)) #end of second filter box
                             
                    ), #end of filter (fluidrow)
                    
                    fluidRow(box(width=12, DT::dataTableOutput("Database"))) #end of table output
                    
            ), #DB tabitem end
            
            tabItem(tabName = "UP",
                    
                    fluidPage(
                        
                        shinyjs::useShinyjs(),
                        shinyjs::inlineCSS(appCSS),
                        useShinyalert(),
                        
                        div(
                            id = "up",
                            titlePanel("Upload an exam"),
                            uiOutput("desc"),
                            tags$hr(),
                            textInput(inputId="title", label=labelMandatory("Title of the project (as appeares in the database):")),
                            textInput("author", "Author(s) (optional, you may be anonymous):"),
                            selectInput("year", labelMandatory("Year of creation:"), choices=c("",2015:as.numeric(format(Sys.Date(),"%Y")))),
                            selectInput("course", labelMandatory("Course:"), choices=c("","Cognition and Communication (Ba)",
                                                                                       "Applied Cognitive Science before Mind and Consciousness (Ba)",
                                                                                       "(Models of) Perception and Action (Ba)",
                                                                                       "(Introduction to) Cognitive Neuroscience (Ba)",
                                                                                       "Social and cultural dynamics (in cognition) (Ba)",
                                                                                       "Bachelor thesis",
                                                                                       "Natural Language Processing (Ma)",
                                                                                       "Decision making (Ma)",
                                                                                       "Human-computer interaction (Ma)",
                                                                                       "Data Science (Ma)",
                                                                                       "Master thesis",
                                                                                       "Other: electives, profile courses, etc.")),
                            textInput("teacher", "Teacher:"),
                            textInput("keywords", labelMandatory("Keywords:")),
                            textAreaInput("abstract", labelMandatory("Abstract:"), resize="both"),
                            textAreaInput("reflection", labelMandatory(uiOutput("expl")), resize="both"),
                            textInput("contact", "Contact information (e.g. email address):"),
                            textInput("link", uiOutput("template")),
                            actionButton("upload", "Upload!", icon=icon("upload"), class="btn-success"),
                            ####add link to 'paper page'
                            
                            # error message if crashing
                            shinyjs::hidden(span(id = "upload_msg", "Uploading..."),
                                            div(id = "error", div(br(), tags$b("Error: "), span(id = "error_msg")))
                            )),
                        
                        ##Thank you message and upload another paper
                        shinyjs::hidden(div(
                            id = "thankyou_msg",
                            h3("Thank you, your paper is saved in the database. Your contribution is highly valued!"),
                            actionButton("upload_another", "Upload another exam!", icon = icon("upload"), class="btn-primary")))#end of hidden feedback div
                    )#end of fluid page
                    
            ) #end of tabitem upload
            
        )#end of tabitems
        
    )#end of body
)#end of dashboardp

############################# SERVER #################################

server <- function(input, output, session) {
  
  output$desc <- renderText({
    paste("You may fill out as much of this template, as you wish. <br> Some fields are mandatory (*). <br>
          The more information you add the more others benefit from this page considering their exam topics of the corresponding course.")
  })
  
  output$expl <- renderText({
    paste("<b>Short reflection on the process:</b> <br>
<i>/Mention one good aspect, one that could be improved, what took the most time, and what could be further explored. <br>
(e.g. This was an interesting topic to explore. It could have been started earlier to include more conceptual details.
Writing the script for the experiment took the longest. Conceptual details can be further explored.)</i>")
  })  
    
  #link for the upload page to 'template'
    output$template <- renderUI({
        a("Follow this link, then paste your link here:", href="https://docs.google.com/document/d/1RUHmaI7sw7-NB9SYB6mF8rPI3On2GO_oDpxPTdcCWGM/edit")
    })
    
    # Enable the Submit button when all mandatory fields are filled out
    observe({
        mandatoryFilled <-
            vapply(fieldsMandatory,
                   function(x) {
                       !is.null(input[[x]]) && input[[x]] != ""
                   },
                   logical(1))
        mandatoryFilled <- all(mandatoryFilled)
        
        shinyjs::toggleState(id = "upload", condition = mandatoryFilled)
    })
    
    # Gather (aggregate) all the upload inputs
    examData <- reactive({
        data <- sapply(fieldsAll, function(x) input[[x]], USE.NAMES = FALSE)
        data <- t(data)
        data <- data.frame(data=unlist(data))
        data
    })
    
    
    # action to take when upload button is pressed
    observeEvent(input$upload, {
        #Uploading... if error - error message
        shinyjs::disable("upload")
        shinyjs::show("upload_msg")
        shinyjs::hide("error")
        
        shinyalert("Congratulations on your exam!", "What a journey! Am I right?", type="success", showConfirmButton=TRUE, confirmButtonText = "Dismiss", confirmButtonCol = "#008000",animation="slide-from-top", imageUrl="https://i.ytimg.com/vi/XH42KFvnXyI/hqdefault.jpg", imageWidth=400, imageHeight = 600)
        #play(audio)
        
        tryCatch({
            #save the data
            saveData(data.frame(examData()))
            shinyjs::reset("up")
            shinyjs::hide("up")
            shinyjs::show("thankyou_msg")
        },
        #if error, error message
        error = function(err) {
            shinyjs::html("error_msg", err$message)
            shinyjs::show(id = "error", anim = TRUE, animType = "fade")
        },
        #then upload and show Uploading...
        finally = {
            shinyjs::enable("upload")
            shinyjs::hide("upload_msg")
        })# end of trycatch
    })# end of observe event
    
    # action to take when upload another is pressed
    observeEvent(input$upload_another, {
        shinyjs::show("up")
        shinyjs::hide("thankyou_msg")
    })
    
    #load data again when upload is clicked
    
    observeEvent(input$upload, {
        data <- data.frame(loadData())
        data$year <- factor(data$year, levels=c(unique(data$year)))#levels=c(2015:as.numeric(format(Sys.Date(),"%Y"))))
        data$course <- factor(data$course, levels=c(unique(data$course)))
    })
    
    #function for clickable links
    shinyInput <- function(FUN, len, id, ...) {
        inputs <- character(len)
        for (i in seq_len(len)) {
            inputs[i] <- as.character(FUN(paste0(id, i), ...))
        }
        inputs
    }
    
    
    #filter by
    filtering <- reactive({
      ### FILTERING DATABASE TO SEARCH
      year <- data %>% dplyr::filter(data$year %in% input$Year, data$course %in% input$Course)
    })
    
    # Show the previous responses
    # apply input to filtering
    output$Database <- DT::renderDataTable({
        dataset <- filtering()
        dataset$abstract <- shinyInput(actionButton, nrow(dataset), 'button_', label = "Read abstract", onclick = 'Shiny.onInputChange(\"select_button\",  this.id)' )
        dataset$reflection <- shinyInput(actionButton, nrow(dataset), 'buttonR_', label = "Read reflection", onclick = 'Shiny.onInputChange(\"select_buttonR\",  this.id)' )
        dataset$link <- paste0("<a href='",dataset$link,"' target='_blank'>more details</a>")
        DT::datatable(dataset, filter='top', escape=FALSE, rownames=FALSE, selection="single")
    })
    
    #reactive value for the pop up abstract
    absVal <- reactiveValues(abs='')
    reflVal <- reactiveValues(refl='')
    
    observeEvent(input$select_button, {
        selectedRow <- as.numeric(strsplit(input$select_button, "_")[[1]][2])
        absVal$abs <<- paste(data$abstract[selectedRow])
        shinyalert("Abstract:", absVal$abs, showConfirmButton=TRUE, confirmButtonText = "Dismiss")
    })
    
    observeEvent(input$select_buttonR, {
        selectedRow <- as.numeric(strsplit(input$select_buttonR, "_")[[1]][2])
        reflVal$refl <<- paste(data$reflection[selectedRow])
        shinyalert("Reflection:", reflVal$refl, showConfirmButton=TRUE, confirmButtonText = "Dismiss")
    })
    
    
} #server end

# Run the application 
shinyApp(ui = ui, server = server)