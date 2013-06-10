useqout.77.table <- read.delim("~/BioinfCore/useqout-77-table.txt")

FPKMtab <- useqout.77.table[,grep('FPKM_', names(useqout.77.table))]