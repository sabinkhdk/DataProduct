library(shiny)

BMIcalc <- function(w,h) {
        w * 703 / h^2
}

BMIcat <- function(B){
        if (B <= 18.5){ tmp = "Under Weight"}
        else if (B > 18.5 & B <= 24.9) {tmp = "Normal Weight"}
        else if (B > 24.9 & B <= 29.9) {tmp = "Over Weight"}
        else {tmp = "Obese"}
        tmp
}

shinyServer(
        function(input, output) {
                output$inputWt <- renderPrint({input$wt})
                output$inputHt <- renderPrint({input$ht1 * 12 + input$ht2})
                output$BMI <- renderPrint({BMIcalc(input$wt, input$ht1 *12 + input$ht2)})
                output$category <- renderPrint({BMIcat(BMIcalc(input$wt, input$ht1 *12 + input$ht2))})
        }
)