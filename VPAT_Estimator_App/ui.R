shinyUI(fluidPage(
  titlePanel("Physical Ability Test Estimator"),

inputPanel(
sliderInput("pushups", label = "Push Ups:",
              min = 1, max = 100, value = 29, step = 1),
sliderInput("in_75yard", label = "75Yard Obstacle Time (secs.):",
              min = 5, max = 40, value = 17, step = 1),
sliderInput("armend", label = "Arm Endurance:",
              min = 1, max = 200, value = 130, step = 1),
sliderInput("situps", label = "Sit Ups:",
              min = 1, max = 100, value = 37, step = 1),  
sliderInput("oneplushalf", label = "1.5 Mile Run Time(mins.):",
              min = 5, max = 60, value = 15, step = 0.25)
),

mainPanel(
  strong("The VPAT is a test battery comprised of a:"),
  br(),
  em("-75 Yard Obstacle Course [time to complete]"),
  br(),
  em("-1.5 Mile Run [time to complete]"),
  br(),
  em("-Push up trial [number of push ups]"),
  br(),
  em("-Arm Endurance trial [number of revolutions]"),
  br(),
  em("-Sit up trial [number of push ups]"),
  br(),
  br(),
  strong("Enter your numbers for each componenty by using the sliders for each VPAT activity above. Then, view your estimate a score (green line) and comparison to prior test-takers and the pass-point."),

  
  
      plotOutput('plot')
  )


))