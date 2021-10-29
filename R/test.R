#read in OSS
#must be on VPN/inside KC firewall
library(sf)
library(dplyr)
library(ggplot2)
#SCKPH OSS mapping effort - recency: 2018
oss_parcels<-st_read(dsn='\\\\dnrp1\\Users\\OnsiteSeptic\\Shapes\\OSS_Failures.gdb',layer='OSS_Parcels2015_20180905') %>%
    dplyr::select(PIN,OSSAge=Sys_B_Y ,Max_YO_Date=Mx_YO_D,YRBUILT=Yer_Blt,YRREN=Yr_Rnvt)

oss_parcels %>%
	ggplot()+
	geom_bar(aes(OSSAge))+
	theme_bw()
