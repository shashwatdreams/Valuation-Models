install.packages("magrittr")
library(plotly)

x = list("Current Share Price", "Upside", "Intrinsic Value")
measure = c("relative", "relative", "total")
text = c("", "+99.54", "246.56")
y = c(147.02, 99.54, 246.56)
data = data.frame(x=factor(x,levels=x),measure,text,y)

fig <- plot_ly(
  data, name = "", type = "waterfall", measure = ~measure,
  x = ~x, textposition = "outside", y= ~y, text =~ text,
  connector = list(line = list(color = "rgb(63, 63, 63)")))
fig <- fig %>%
  layout(title = "Apple Intrinsic Value",
         xaxis = list(title = ""),
         yaxis = list(title = "$"),
         autosize = TRUE,
         showLegend = FALSE)

fig

