getwd()
setwd("C:/Users/Priyanka/Downloads/Compressed/BlogFeedback")
file.list = list.files(pattern='*.csv')
library(data.table)
Test.data = do.call(rbind, lapply(file.list, fread))
## OR
DT = rbindlist(lapply(file.list, fread))

## The right features would be 1. Total number of comments before basetime, 2.  Number of comments in the last 24 hours before the 
# basetime, 3. The time period between T1 and T2, 4. Number of comments in the first 24 hours after the 
# publication of the blog post, but before basetime, 5. The length of time between the publication of the blog post 
# and basetime, 6. The length of the blog post, 7. Number of parent pages.


sapply(DT, function(x) sum(is.na(x)) )
