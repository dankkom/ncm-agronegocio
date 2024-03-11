library(readxl)
library(dplyr)
library(tidyr)


filepath <- "tabela-de-agrupamentos.xls"

df <- readxl::read_xls(filepath, col_types = "text")

df2 <- df %>%
    dplyr::filter(NCM != "Subtotal", !is.na(NCM), Agrupamento == "Agronegócio") %>%
    tidyr::separate("NCM", c("CO_NCM", "NCM"), " - ", extra = "merge", convert = FALSE) %>%
    dplyr::rename(Setor = Setores, Subsetor = Subsetores, Produto = Produtos) %>%
    dplyr::select(CO_NCM, Setor, Subsetor, Produto, NCM) %>%
    dplyr::arrange(CO_NCM)

write.csv(
    df2,
    "ncm-agronegocio.csv",
    row.names = FALSE,
    quote = TRUE,
    fileEncoding = "utf-8"
)
write.csv2(
    df2,
    "ncm-agronegocio_br.csv",
    row.names = FALSE,
    quote = TRUE,
    fileEncoding = "latin1"
)
