library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Body-Mass Index Calculator"),
        sidebarPanel(
                numericInput('wt', 'Enter your weight in pounds(lbs)', 100, min = 0, max = 400, step= 1),
                numericInput('ht1', 'Enter your height in feet(ft.)', 5, min = 2, max = 10, step= 1),
                numericInput('ht2', 'Enter your height in inches(in.)', 2, min = 0, max = 12, step= 0.5),
                submitButton('Submit')
        ),
#         mainPanel(
#                 h3('Calculator'),
#                 h4('Your weight in pounds'),
#                 verbatimTextOutput("inputWt"),
#                 h4('Your height in inches'),
#                 verbatimTextOutput("inputHt"),
#                 h4('Your Body Mass Index'),
#                 verbatimTextOutput("BMI"),
#                 h4('According to your BMI you are'),
#                 verbatimTextOutput("category")
#         )
        mainPanel(
                tabsetPanel(type="tabs",
                            tabPanel("Results",
                                        h4('Your weight in pounds'),
                                        verbatimTextOutput("inputWt"),
                                        h4('Your height in inches'),
                                        verbatimTextOutput("inputHt"),
                                        h4('Your Body Mass Index'),
                                        verbatimTextOutput("BMI"),
                                        h4('According to your BMI you are'),
                                        verbatimTextOutput("category")),
                            tabPanel("Help Documents",
                                        h3('Your Body Mass Index Calculator'),
                                        h4('Formulae: BMI = weight in pounds * 703/ height in inches^2'),
                                        h3('Indicators'),
                                        h4('BMI <= 18.5 : Underweight'),
                                        h4('18.5 < BMI <=24.9 : Normal Weight'),
                                        h4('25 < BMI <= 29.9 : Overweight'),
                                        h4('BMI > 29.9 : Obese'))))
))