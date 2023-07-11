library(clusterProfiler)
library(org.At.tair.db)

#KEGG enrichment of genes involved in activated cellular process in mutant nolR

nolR_activated <- c("AT5G50260", "AT3G61680", "AT1G43800", "AT1G49740", "AT2G13810",
          "AT3G27060", "AT4G31320", "AT5G60920", "AT4G26590", "AT4G16370")

nolR_activated_kegg <- enrichKEGG(gene  = nolR_activated,
                                         organism = "ath",
                                         pAdjustMethod = "BH",
                                         pvalueCutoff  = 0.1)
dotplot(nolR_activated_kegg,              
        showCategory=10,             
        font.size=8,                 
        title="Enriched KEGG Pathways nolR")  



#KEGG enrichment of genes involved in activated cellular process in mutant ttsl

ttsl_activated <- c("AT3G13226", "AT5G60190", "AT3G54940", "AT1G24020", "AT1G70890", 
                    "AT5G22400", "AT1G01470", "AT5G06760", "AT4G09990")

ttsl_activated_kegg <- enrichKEGG(gene  = ttsl_activated,
                                  organism = "ath",
                                  pAdjustMethod = "BH",
                                  pvalueCutoff  = 0.1)
dotplot(ttsl_activated_kegg,              
        showCategory=10,             
        font.size=8,                 
        title="Enriched KEGG Pathways ttsl")
