install.packages("magrittr")
library(plotly)

# values to change
x = list("Current Share Price", "Upside", "Intrinsic Value")
measure = c("relative", "relative", "total")
text = c("", "+91.63", "241.70")
y = c(147.07, 91.63, 241.70)
data = data.frame(x=factor(x,levels=x),measure,text,y)

fig <- plot_ly(
  data, name = "", type = "waterfall", measure = ~measure,
  x = ~x, textposition = "outside", y= ~y, text =~ text,
  connector = list(line = list(color = "rgb(63, 63, 63)")))
fig <- fig %>%
  layout(title = "Apple Intrinsic Value"
         xaxis = list(title = "")
         yaxis = list(title = "$")
         autosize = TRUE,
         showLegend = FALSE)

fig
