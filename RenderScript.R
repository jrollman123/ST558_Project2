

fileNames <- c("SundayAnalysis.md","MondayAnalysis.md","TuesdayAnalysis.md","WednesdayAnalysis.md","ThursdayAnalysis.md","FridayAnalysis.md","SaturdayAnalysis.md")
#c("SundayAnalysis.pdf","MondayAnalysis.pdf","TuesdayAnalysis.pdf","WednesdayAnalysis.pdf","ThursdayAnalysis.pdf","FridayAnalysis.pdf","SaturdayAnalysis.pdf")
#c("SundayAnalysis.md","MondayAnalysis.md","TuesdayAnalysis.md","WednesdayAnalysis.md","ThursdayAnalysis.md","FridayAnalysis.md","SaturdayAnalysis.md")
weekday <- c(0,1,2,3,4,5,6)
params <- lapply(weekday, FUN = function(x){list(weekday = x)})
fileDF <- tibble(fileNames,params)

apply(fileDF, MARGIN = 1,
      FUN = function(x){
        render("ST558_Project2.rmd", output_file = x[[1]],
               params = x[[2]])
      })

