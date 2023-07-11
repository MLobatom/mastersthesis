library('ggVennDiagram')
library('ggplot2')

# Defence genes lists 

defence_519_WT <- c("LotjaGi4g1v0337100", "LotjaGi5g1v0120400")
defence_519_NI <- c("LotjaGi1g1v0049800", "LotjaGi1g1v0079700", "LotjaGi3g1v0086300_LC",
                    "LotjaGi4g1v0337100", "LotjaGi5g1v0119900", "LotjaGi5g1v0120400")

defence_WT_NI <- "LotjaGi3g1v0086300_LC"

defence_548_NI <- "LotjaGi3g1v0086300_LC"

# To create de Venn Diagram to compare genes involved in defence in each condition

x<- list(A=defense_519_WT,
         B=defense_519_NI,
         C=defense_WT_NI,
         D=defense_548_NI)
ggVennDiagram(x, category.names = c("ttsl_WT","ttsl_NI", "WT_NI", "nolR_NI" ), label = "count")+
  scale_fill_gradient(low= '#CAE1FF', high= '#6E7B8B' )
