# NCMs do agronegócio brasileiro

Download the Excel file from the following link:

https://mapa-indicadores.agricultura.gov.br/publico/extensions/Agrostat/Agrostat.html

## Run the R script to generate the CSV files

Required packages:

- dplyr
- readxl
- tidyr

Run the following command to install the required packages:

```r
install.packages(c("dplyr", "readxl", "tidyr"))
```

Run the following command to generate the CSV files:

```sh
Rscript etl.R
```

## ncm-agronegocio.csv

Delimiter: ","

Encoding: UTF-8

Quoting: QUOTE_ALL

```r
write.csv(d, "ncm-agronegocio.csv", row.names = FALSE, quote = TRUE, fileEncoding = "ISO-8859-1")
```

## ncm-agronegocio_br.csv

Delimiter: ";"

Encoding: ISO-8859-1

Quoting: QUOTE_ALL

```r
write.csv2(d, "ncm-agronegocio_br.csv", row.names = FALSE, quote = TRUE, fileEncoding = "ISO-8859-1")
```

---

Atualizado em: 2024-11-24

Fonte: [AGROSTAT](https://mapa-indicadores.agricultura.gov.br/publico/extensions/Agrostat/Agrostat.html)
