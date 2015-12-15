###

theme_set(theme_minimal())

library(ggplot2)
library(scales)

data <- read.csv("data/data.csv", header = TRUE)

p <- ggplot(data, aes(x = Employees, y = Revenue))

p + geom_smooth(method = "lm") +
    geom_point(aes(color = Mayer), size = 3) +
    theme(legend.position = "bottom") +
    labs(color = "Mayer is CEO",
         x = "Employees",
         y = "Revenue (Millions)") +
    ggtitle("Yahoo Employees vs Revenues, 2004-2014") +
    scale_y_continuous(labels = dollar) +
    scale_x_continuous(labels = comma)
credit("\nKieran Healy, http://kieranhealy.org ")




p + geom_path(color = "gray80") +
    geom_text(aes(color = Mayer, label = Year), size = 3, fontface = "bold") +
    theme(legend.position = "bottom") +
    labs(color = "Mayer is CEO",
         x = "Employees",
         y = "Revenue (Millions)") +
    ggtitle("Yahoo Employees vs Revenues, 2004-2014") +
    scale_y_continuous(labels = dollar) +
    scale_x_continuous(labels = comma)
credit("\nKieran Healy, http://kieranhealy.org ")
