# ST558_Project2
This repository holds all material related to the ST558 Project 2. It also will hold the final analyses for the Bike Rental Data for each day.

# Analyses

[Sunday Bike Rental Analysis](SundayAnalysis.md)
[Monday Bike Rental Analysis](MondayAnalysis.md)
[Tuesday Bike Rental Analysis](TuesdayAnalysis.md)
[Wednesday Bike Rental Analysis](WednesdayAnalysis.md)
[Thursday Bike Rental Analysis](ThursdayAnalysis.md)
[Friday Bike Rental Analysis](FridayAnalysis.md)
[Saturday Bike Rental Analysis](SaturdayAnalysis.md)

# Packages Used

`tidyverse` : Data manipulation and plotting
`caret` : Model building
`knitr` : Knitting formats and options
`gbm` : Boosted tree models
`rattle` : Nicer looking tree plots

# Render Code  

```{r}
fileNames <- c("SundayAnalysis.md","MondayAnalysis.md","TuesdayAnalysis.md","WednesdayAnalysis.md","ThursdayAnalysis.md","FridayAnalysis.md","SaturdayAnalysis.md")
weekday <- c(0,1,2,3,4,5,6)
params <- lapply(weekday, FUN = function(x){list(weekday = x)})
fileDF <- tibble(fileNames,params)

apply(fileDF, MARGIN = 1,
      FUN = function(x){
        render("ST558_Project2.rmd", output_file = x[[1]],
               params = x[[2]])
      })
```
