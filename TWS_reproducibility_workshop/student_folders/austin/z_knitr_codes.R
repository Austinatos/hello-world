# Spin/Knit multiple files

## Preamble
library(knitr)
library(ezknitr)

# Activity 2a: R-Markdown
ezknit("student_folders/yournm/activity2a_intro_rmarkdown.Rmd",
                        out_dir = "student_folders/yournm/reports",
                        fig_dir = "figures",
                        keep_md = F)

# Activity 2b: R-Oxygen
ezspin("student_folders/austin/activity2b_roxygen.R",
                        out_dir = "student_folders/austin/reports",
                        fig_dir = "figures",
                        keep_md = F)

