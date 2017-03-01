# ----------------------------------------
# ranking some cars (from original article on UTA by Siskos and Lagreze, 1982)
# the separation threshold
epsilon <-0.01
# the performance table
performanceTable <- rbind(
  c(10, 11.5, 419),
  c(22, 3.9, 149.99),
  c(24, 5.5, 159.99),
  c(24, 3.9, 299),
  c(29, 4.1, 349),
  c(37, 7.1, 449),
  c(27, 4.4, 249),
  c(22, 3.7, 229),
  c(30, 4.8, 269),
  c(26, 5.5, 279),
  c(25, 4.3, 239),
  c(42, 19.8, 2649),
  c(33, 18.2, 2299),
  c(32, 2.9, 419),
  c(21, 2.83, 189),
  c(32, 2.9, 399),
  c(41, 7.52, 489),
  c(20, 4.1, 369),
  c(30, 4.7, 319),
  c(21, 3, 219)
)

rownames(performanceTable) <- c(
  "Ezetil Coolcan 10 12/230V",
  "Ezetil Coca-cola E24 IML 12V",
  "Ravanson CS-24S",
  "Ezetil E26M",
  "Ezetil E32M",
  "Ezetil E40M",
  "Continental T30 Electra Neve Dual Power",
  "Continental T25 Electra Neve Dual Power",
  "HB PC 1030",
  "Ezetil E28M",
  "Eldom TL100N",
  "Ezetil EZC45",
  "Ezetil EZC35",
  "Sencor SCM 3033BL",
  "Gio'Style Bravo 25",
  "Sencor SCM 3033RD",
  "Gio'Style Shiver 40",
  "Sencor SCM 2025",
  "Gio'Style GS3+ 30",
  "Gio'Style Bravo 25 12V/230V")

colnames(performanceTable) <- c(
  "Pojemnoœæ",
  "Waga",
  "Cena")

# ranks of the alternatives
alternativesRanks <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)
names(alternativesRanks) <- row.names(performanceTable)

# criteria to minimize or maximize
criteriaMinMax <- c("max","min","min")
names(criteriaMinMax) <- colnames(performanceTable)
x<-additiveValueFunctionElicitation(performanceTable,
                                    criteriaMinMax, epsilon,
                                    alternativesRanks = alternativesRanks)
