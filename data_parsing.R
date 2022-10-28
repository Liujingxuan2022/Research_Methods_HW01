assign1 <- read.csv("assignment1-research-methods.csv")
library(stringr)

dat_parsed <- as.data.frame(str_split(assign1$candidateid.calledback.recruiteriswhite.recruiterismale.MaleCandidate.EliteSchoolCandidate.BigCompanyCandidate,
          "\t", simplify = TRUE))

colnames(dat_parsed) <- str_split(colnames(assign1), "\\.", simplify = T)

dat_parsed <- apply(dat_parsed, 2, as.numeric)

write.csv(dat_parsed, "assignment1-research-methods.csv")
