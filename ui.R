shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("FTE Calculation"),
    sidebarPanel(
      h5("If your duties include preparing a budget and your budget includes staff members then you may have heard of FTEs. An FTE or Full Time Equivalent is calculated by taking the sum of hours for all the full and part time staff members you have in your budget and dividing by 2080 hours which is the number of hours a full time person works in a year. This converts the total hours of all staff members to the number of workers you would have if they were all full time."),
      h5("In your budget preparation you will need to convert total hours budgeted for the year to the number of Full Time Equivalents or FTEs"),
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