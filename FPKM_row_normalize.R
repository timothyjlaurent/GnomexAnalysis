install.packages("som")
library("som")
useqout.77.table <- read.delim("~/BioinfCore/useqout-77-table.txt")

FPKMtab <- useqout.77.table[,grep('FPKM_', names(useqout.77.table))]

colnames(FPKMtabNorm) <-  colnames(FPKMtab)

experimentName = 77

boxplot(FPKMtabNorm, use.cols=TRUE, ylab='normalized FPKM values', par(las=3, mar=c(20,4,4,2)))