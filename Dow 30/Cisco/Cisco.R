install.packages("magrittr")
library(plotly)

x = list("Current Share Price", "Upside", "Intrinsic Value")
measure = c("relative", "relative", "total")
text = c("45.37", "+109.24", "154.61")

y = c(45.37, 109.24, 154.61)
data = data.frame(x=factor(x,levels=x),measure,text,y)

fig <- plot_ly(
  data, name = "", type = "waterfall", measure = ~measure,
  x = ~x, textposition = "outside", y= ~y, text =~ text,
  connector = list(line = list(color = "rgb(63, 63, 63)")))
fig <- fig %>%
  layout(title = "Cisco Intrinsic Value",
         xaxis = list(title = ""),
         yaxis = list(title = "$"),
         autosize = TRUE,
         showLegend = FALSE)

fig
