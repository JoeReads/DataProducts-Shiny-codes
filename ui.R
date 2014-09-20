shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("FTE Calculation"),
    sidebarPanel(
      h4("In your budget preparation you will need to convert total hours budgeted for the year to the number of Full Time Equivalents or FTEs"),
      h4("Enter the total hours budgeted for the year to calculate the number of Full Time Equivalent (FTE) Staff Members"),
      numericInput('hours', '1 FTE=2080 Hours', 2080, min = 1, max = 2080, step = 1),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of calculation'),
      h4('Total annual hours you entered'),
      verbatimTextOutput("inputValue"),
      h4('The number of FTEs budgeted for the year'),
      verbatimTextOutput("prediction")
    )
  )
)