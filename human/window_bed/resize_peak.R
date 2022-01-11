
#rm(list = ls())

Args <- commandArgs(TRUE)
print(Args[1])
#print(Args[2])

library(GenomicRanges)
library(rtracklayer)


## load peak files
peakfiles <- list.files(Args[1], pattern = "slop.bed$")
peak <- lapply(peakfiles, function(file) import.bed(paste0(Args[1], file)))
peakname <- unlist(lapply(peakfiles, function(x) strsplit(x, split = ".slop")[[1]][1]))
names(peak) <- peakname

peaks_resized <- lapply(peak, function(p) resize(p, width = 200, fix = "center"))

## export resized peak files
for (i in seq_along(peaks_resized)) {
  export(peaks_resized[[i]], paste0(peakname[i], ".resized.bed"))}
