# Author : Timothy Laurent
install.packages("som")
library("som")
install.packages("stringr")
library("stringr")
useqout.77.table <- read.delim("~/BioinfCore/useqout-77-table.txt")

FPKMtab <- useqout.77.table[,grep('FPKM_', names(useqout.77.table))]
#"FPKM_B2B77R..mm9..129SvJ_LA_P10..771"
FPKMtabNorm <- normalize(FPKMtab, byrow=TRUE)
cols <-  colnames(FPKMtab)
sampRegex <- "[[:alnum:]]+.[[:alnum:]]+\\.\\.[[:alnum:]]+\\.\\.([[:alnum:]]+[_\\.]?[[:alnum:]]+[_\\.]?[[:alnum:]]*[_\\.]*[[:alnum:]]*[_\\.]*[[:alnum:]]*[_\\.]*[[:alnum:]]*[_\\.]*)"

sampNames <- str_match(cols, as.character(sampRegex))[,2]

colnames(FPKMtabNorm) <-  sampNames

experimentName = 77

boxplot(FPKMtabNorm, use.cols=TRUE, ylab='normalized FPKM values', par(las=3, mar=c(10,4,4,2)))