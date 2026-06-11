### ------------------------------------------------------------
### 1. CHECK WORKING DIRECTORY
### ------------------------------------------------------------
print("Working directory:")
print(getwd())

print("Does the data file exist?")
print(file.exists("data/synthetic_elisa_data.csv"))

### ------------------------------------------------------------
### 2. LOAD DATA
### ------------------------------------------------------------
data <- read.csv("data/synthetic_elisa_data.csv")

print("Data loaded successfully. Preview:")
print(head(data))
print(str(data))

### ------------------------------------------------------------
### 3. FIT MODEL
### ------------------------------------------------------------
print("Fitting model...")

model <- nls(
  Absorbance ~ a * Concentration / (b + Concentration),
  data = data,
  start = list(a = 1, b = 1)
)

print("Model fit complete:")
print(summary(model))

### ------------------------------------------------------------
### 4. PLOT FUNCTION
### ------------------------------------------------------------
options(device = "RStudioGD")
make_plot <- function() {
  plot(
    data$Concentration, data$Absorbance,
    pch = 19,
    xlab = "Concentration (ng/mL)",
    ylab = "Absorbance (450 nm)",
    main = "ELISA Standard Curve"
  )
  
  curve(
    predict(model, data.frame(Concentration = x)),
    add = TRUE,
    col = "blue",
    lwd = 2
  )
}

### ------------------------------------------------------------
### 5. SAVE PLOT TO PNG
### ------------------------------------------------------------
print("Saving PNG...")

png("figures/standard_curve_example.png", width = 800, height = 600)
make_plot()
dev.off()

print("PNG saved to figures/standard_curve_example.png")

### ------------------------------------------------------------
### 6. SHOW PLOT IN RSTUDIO
### ------------------------------------------------------------
print("Displaying plot in RStudio...")
make_plot()

print("Done!")

