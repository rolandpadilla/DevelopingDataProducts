library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Real Estate Investment Return"),
  sidebarPanel(
    h4('Real estate'),
    textInput('text', 'Property details', value=''),
    numericInput('price', 'Amount (AU$)', 350000),
    numericInput('weeklyRent', 'Rental in AU$/fortnight', 700),
    h5('Expenses'),
    numericInput('weeklyRepayments', 'Repayments in AU$/fortnight', 600),
    numericInput('strataPerQuarter', 'Strata in AU$/sixth month', 2000),
    numericInput('councilPerQuarter', 'Council payments in AU$/sixth month', 300),
    numericInput('waterPerQuarter', 'Electrical utility in AU$/sixth month', 600),
    numericInput('managementFees', 'Administrative fees in AU$/sixth month', 500)
  ),
  mainPanel(
    h4('Yield (%)'),
    textOutput("rentalYield"),
    h4('Cash flow/week in AU$'),
    textOutput("cashflowPerWeek"),
    h4('Cash flow/year  in AU$'),
    textOutput("cashflowPerYear"),
    br(),
    h4('Note:'),
    helpText("Property developers and investors might be able to obtain some insights through the use of this online calculator."),
    code("Yield"),
    helpText("In order to generate the yield, please provide the estate price and fortnightly rental."),
    code("Cashflow"),
    helpText("In order to generate the cashflow, please provide the expenses.")
  )
))