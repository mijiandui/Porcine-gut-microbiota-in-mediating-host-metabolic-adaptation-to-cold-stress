install.packages("ggpubr")
library(ggpubr)
install.packages("dplyr")
library(dplyr)
Ph_all<-read.table("Phylum.txt",header=T,check.names=FALSE,sep="\t",dec=".")
PhCeC<-filter(Ph_all, BodySite == "CeC")

theme_set(theme_bw())
scale_fill_discrete <- function(palname = "Set1", ...) {
  scale_fill_brewer(palette = palname, ...)
}

compare_means(Firmicutes~Treatment, data=Ph)

p<-ggplot(PhCeC, aes(x=Treatment, y=Firmicutes)) + 
  geom_boxplot()+
  #xlab("")+
 # geom_boxplot(outlier.colour = NA)+
  theme_classic()
p +stat_compare_means(label.y=1)

ggsave("Firmicutes_CeC.pdf",height=2, width=2.2, units='in', useDingbats=FALSE,dpi=600)


p<-ggplot(PhCeC, aes(x=Treatment, y=Bacteroidetes)) + 
  #geom_boxplot()+
  geom_boxplot(outlier.colour = NA)+
  theme_classic()

p +stat_compare_means(label.y=0.4)



ggsave("Bacteroidetes_CeC.pdf",height=2, width=2.2, units='in', useDingbats=FALSE,dpi=600)

p<-ggplot(PhCeC, aes(x=Treatment, y=Proteobacteria)) + 
  #geom_boxplot()+
  geom_boxplot(outlier.colour = NA)+
  theme_classic()

p +stat_compare_means(label.y=0.17)

ggsave("Bacteroidetes_CeC.pdf",height=2, width=2.2, units='in', useDingbats=FALSE,dpi=600)


p<-ggplot(PhCeC, aes(x=Treatment, y=Epsilonbacteraeota)) + 
  #geom_boxplot()+
  geom_boxplot(outlier.colour = NA)+
  theme_classic()

p +stat_compare_means()

ggsave("Epsilonbacteraeota_CeC.pdf",height=2, width=2.2, units='in', useDingbats=FALSE,dpi=600)

p<-ggplot(PhCeC, aes(x=Treatment, y=Spirochaetes)) + 
  geom_boxplot()+
 # geom_boxplot(outlier.colour = NA)+
  theme_classic()

p +stat_compare_means()

ggsave("Spirochaetes_CeC.pdf",height=2, width=2.2, units='in', useDingbats=FALSE,dpi=600)

p<-ggplot(PhCeC, aes(x=Treatment, y=Actinobacteria)) + 
  geom_boxplot()+
  # geom_boxplot(outlier.colour = NA)+
  theme_classic()

p +stat_compare_means()

ggsave("Actinobacteria_CeC.pdf",height=2, width=2.2, units='in', useDingbats=FALSE,dpi=600)







PhCeM<-filter(Ph_all, BodySite == "CeM")
p<-ggplot(PhCeM, aes(x=Treatment, y=Firmicutes)) + 
  geom_boxplot()+
  #xlab("")+
  # geom_boxplot(outlier.colour = NA)+
  theme_classic()
p +stat_compare_means(label.y=0.45)

ggsave("Firmicutes_CeM.pdf",height=2, width=2.2, units='in', useDingbats=FALSE,dpi=600)


p<-ggplot(PhCeM, aes(x=Treatment, y=Bacteroidetes)) + 
  #geom_boxplot()+
  geom_boxplot(outlier.colour = NA)+
  theme_classic()

p +stat_compare_means(label.y=0.65)



ggsave("Bacteroidetes_CeM.pdf",height=2, width=2.2, units='in', useDingbats=FALSE,dpi=600)

p<-ggplot(PhCeM, aes(x=Treatment, y=Proteobacteria)) + 
  #geom_boxplot()+
  geom_boxplot(outlier.colour = NA)+
  ylim(0,0.15)+
  theme_classic()

p +stat_compare_means(label.y=0.12)

ggsave("Proteobacteria_CeM.pdf",height=2, width=2.2, units='in', useDingbats=FALSE,dpi=600)


p<-ggplot(PhCeM, aes(x=Treatment, y=Epsilonbacteraeota)) + 
  #geom_boxplot()+
  geom_boxplot(outlier.colour = NA)+
  theme_classic()

p +stat_compare_means()

ggsave("Epsilonbacteraeota_CeM.pdf",height=2, width=2.2, units='in', useDingbats=FALSE,dpi=600)

p<-ggplot(PhCeM, aes(x=Treatment, y=Spirochaetes)) + 
  geom_boxplot()+
  # geom_boxplot(outlier.colour = NA)+
  theme_classic()

p +stat_compare_means()

ggsave("Spirochaetes_CeM.pdf",height=2, width=2.2, units='in', useDingbats=FALSE,dpi=600)

p<-ggplot(PhCeM, aes(x=Treatment, y=Actinobacteria)) + 
  geom_boxplot()+
  # geom_boxplot(outlier.colour = NA)+
  theme_classic()

p +stat_compare_means()

ggsave("Actinobacteria_CeM.pdf",height=2, width=2.2, units='in', useDingbats=FALSE,dpi=600)
