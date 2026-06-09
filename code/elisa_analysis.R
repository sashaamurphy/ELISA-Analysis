data <- read.csv("data/synthetic_elisa_data.csv")

model <- nls(Absorbance ~ a * Concentration / (b + Concentration),
             data = data,
             start = list(a = 1, b = 1))

png("figures/standard_curve_example.png")
plot(data$Concentration, data$Absorbance, pch = 19,
     xlab = "Concentration (ng/mL)", ylab = "Absorbance (450 nm)")
curve(predict(model, data.frame(Concentration = x)), add = TRUE, col = "blue")
dev.off()
