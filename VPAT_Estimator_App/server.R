shinyServer(function(input, output) {


output$plot<- renderPlot({
  pushupsz <- (as.numeric(input$pushups)-29.679)/17.438
  onstaclez<- (as.numeric(input$in_75yard) - 17.634)/-1.629
  armendz <- (as.numeric(input$armend)-130.463)/20.525
  situpsz <- (as.numeric(input$situps)-36.44)/10.824
  onehalfz<- ((as.numeric(input$oneplushalf))-14.689)/-2.647
  score <-  (pushupsz + armendz + situpsz) + (onstaclez*3) + (onehalfz*6)
  if (score>=-6.17) status<- "Pass" else  status<- "Fail"
  
  
  x <- seq(-110, 110, length.out = 500)
  y  <- dnorm(x, mean = -.07, sd = 10.7)
  
  # normal curve plot
  op = par(font.axis = 2) 
  plot(x, y, type = 'l', col = '#ff7633', lwd = 3, main="VPAT Results Estimator", xlab = paste("Status: ", status,"|", "Score: ", round(score,1)),xlim=c(-110, 110))
  mtext("Passpoint", at = -6.17, line = -10)
  abline(v=-6.17)
  abline(v=score,col=3,lty=3, size = 4)
  

  
})
  
})