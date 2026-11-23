###
### MAJOR T CELL GROUPS ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
###

# T cells
tcells_v <- unique(c('Tox','Tcf7','Il7r','Cxcr3','Gzmk','Gzma','Cxcl13','Tnfrsf9','Pdcd1','Lag3',
                     'Entpd1','Mki67','Cd8a','Cd3e','Cd3d','Cd3g','Ccr7','Cd4','Cxcr5','Foxp3','Havcr2','Fasl',
                     'Ccl5','Slamf7','Nkg7','Ctsw','Cd8b1','Nr4a2','Zeb2','Ccr5','Ccl4','Ccl3','Tnfsf4','Cd70',
                     'Crtam','Hopx','S100a11','S100a4','Id2','Cst7','Rbpj','Plscr1','Tnfrsf1b','Tigit','Ucp2','Maf',
                     'Klrg1','Glrx','Ikzf4','Ikzf2','Tnfrsf18','Ctla4','Sell','Icos','Sat1','Phlda1','Satb1','S1pr1',
                     'Trat1','Cd40lg','Btg2','Gpr183','Itm2a','Cd200','Lamp1','Tox2','Tbc1d4','Anxa1','Tagap','Cd69',
                     'Fos','Fosb','Sh2d1a','Eomes','Gzmm','Dusp2','Rora','Plin2','Cdkn1a','Lmna', 'Bcl6'))

cd4_v <-  unique(c("Stat5a","Stat5b","Il17ra","Il21r","Tnfrsf10b","Tnfrsf1a","Crebbp","Foxp1","Ifngr1","Il18r1","Cxcr6",
                   "Il18rap","Klrc1","Il12rb2","Ifng","Il34","Csf1","Fcgrt","Batf","Epas1","Gata3","Il4","Tnfsf13b","Il15ra",
                   "Il9r","Irak2","Pvrf2","Tnfrsf11a","Traf2","Ptprcap","Tgfb1","Tnfsf11","Xcl1","Socs2","Il17d","Nrtn",
                   "Pdgfb","Il2ra","Ptgfrn","Tfrc","Tnfrsf13b","Il17a","Il17f","Il2","Il21","Inhba","Pgf"))

# b cells
bcells_v <-  unique(c('Cd19','Cd79b','Cd79a','Prdm1','Ms4a1','Tcl1a','Cxcr4','Dusp1','Btg1','Cd72','Tuba1a','Cotl1','Cd82',
                      'Ltb','Aim2','Bank1','Scimp','Jchain','Mzb1','Xbp1','Hsp90b1','Itm2c','Ifi27','Txndc5','Ppib','Sec11c',
                      'Cd38','Rrm2','Hmgb2', 'Fcer', 'Blk', "HLA-dpb1"))

# NK cells
nkcells_v <-  unique(c("Kir3dl1","Kir3dl2","Klrc3","Klrc2","Klrd1","Samd3","Sh2d1b1","Tbx21", "Gzmb", "Prf1"))

# Combine and name
majorTGroupMarkers_lsv <- list("Tcells" = tcells_v, "CD4" = cd4_v, "Bcells" = bcells_v, "NK" = nkcells_v)

majorTGroupMarkers_lsv <- sapply(names(majorTGroupMarkers_lsv), function(x) {
  names(majorTGroupMarkers_lsv[[x]]) <- rep(x, length(majorTGroupMarkers_lsv[[x]]))
  return(majorTGroupMarkers_lsv[[x]])
}, simplify = F, USE.NAMES = T)

majorTGroupDotMarkers_v <- unlist(majorTGroupMarkers_lsv)
names(majorTGroupDotMarkers_v) <- gsub("\\..*$", "", names(majorTGroupDotMarkers_v))


# Columns and dimensions
majorTcols_lsv <- list("Tcells" = 5, "CD4" = 4, "Bcells" = 4, "NK" = 3)
majorTheight_lsv <- list("Tcells" = 40, "CD4" = 30, "Bcells" = 25, "NK" = 12)
majorTwidth_lsv <- list("Tcells" = 20, "CD4" = 15, "Bcells" = 15, "NK" = 10)

###
### T CELL SUB GROUPS ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
###

tfh <- unique(c("Tox2","Maf","Tbc1d4","Ucp2","Coro1b","Tigit","Batf","Nr3c1","Itm2a","Tnfrsf18","Lims1",
                "Ica1","Ctsb","Sh2d1a","Ctla4","Mageh1","Sesn3","Icos","Nmb","Cxcl13","Cd200","Btla","Ptpn13", "Bcl6"))

cd8_naive <- unique(c("Ccr7", "Txk","S1pr1","Lef1","Satb1"))

cd8_teff <- unique(c("Gzma","Gzmk","Nkg7","Cd8a","Cd8b1","Ctsw","Gzmb","Ccl5","Cst7","Prf1","Abi3","Fasl",
                     "1500009L16Rik","Eomes","Chst12","Ccr5","Hcst","Hopx","Slamf7","Cxcr3","Oasl1","F2r","Cxcr6"))

cd8_earlAct <- unique(c("Fos","Cd69","Zfp36","Fosb","Gzmm","Dusp2","Lyar","Samd3","Cxcr4",
                        "Klrg1","Aoah","Tagap","Klrd1","Ier2","Itm2c","Parp8","Btg2",
                        "Apbb1ip","Gimap9","Ms4a4b2"))

th1 <- unique(c("Cd40lg","Cd4","Rora","Tnfrsf25","Anxa1","Gpr183","Cdkn1a",
                "Lmna","S100a11","S100a4","Plin2"))

cd8_pEx <- unique(c("Xcl1","Crtam","Ifng","Pdcd1","Dusp4","Zeb2","Nr4a2","Sla",
                    "Tox","Lyst","Tnfsf4","Rab27a","Cd70","Plscr1"))

cd8_tex <- unique(c("Lag3","Havcr2","Ctsd","Id2","Tnfrsf9",
                    "Ccl4","Cd63","Ccl3","Rbpj","Fam3c","Csf1"))

cd4_naive <- unique(c("Sell","Il7r","Tcf7","Klrb1","Ltb","Mal","Pask","Aqp3","Trat1"))

treg <- unique(c("Tnfrsf4","Tnfrsf1b","Il2ra","Gpx1","Foxp3","Ikzf4","Ikzf2",
                 "Sat1","Dnph1","Phlda1","Snx9","Tymp","Nampt","Syngr2","Pbxip1","Glrx","Nt5e",
                 "Cd3d","Cd3g","Cd3e"))

### Combine and name
subTGroupMarkers_lsv <- list("Tfh" = tfh, "CD8naive" = cd8_naive, "CD8Teff" = cd8_teff, "CD8earlAct" = cd8_earlAct,
                             "Th1" = th1, "CD8pEx" = cd8_pEx, "CD8tEx" = cd8_tex, "CD4naive" = cd4_naive,
                             "Treg" = treg)

subTGroupMarkers_lsv <- sapply(names(subTGroupMarkers_lsv), function(x) {
  names(subTGroupMarkers_lsv[[x]]) <- rep(x, length(subTGroupMarkers_lsv[[x]]))
  return(subTGroupMarkers_lsv[[x]])
}, simplify = F, USE.NAMES = T)


subTGroupDotMarkers_v <- unlist(subTGroupMarkers_lsv)
names(subTGroupDotMarkers_v) <- gsub("\\..*$", "", names(subTGroupDotMarkers_v))

# Columns and dimensions
subTcols_lsv <- list("Tfh" = 3, "CD8naive" = 2, "CD8Teff" = 3, "CD8earlAct" = 4, "Th1" = 3, "CD8pEx" = 3, 
                     "CD8tEx" = 3, "CD4naive" = 3, "Treg" = 4)
subTheight_lsv <- list("Tfh" = 30, "CD8naive" = 12, "CD8Teff" = 30, "CD8earlAct" = 30, "Th1" = 15, "CD8pEx" = 30, 
                       "CD8tEx" = 30, "CD4naive" = 12, "Treg" = 30)
subTwidth_lsv <- list("Tfh" = 12, "CD8naive" = 10, "CD8Teff" = 12, "CD8earlAct" = 16, "Th1" = 12, "CD8pEx" = 12, 
                      "CD8tEx" = 12, "CD4naive" = 12, "Treg" = 16)

###
### B CELL SUB GROUPS ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
###

bPan <- c("Cd19","Ms4a1","Ms4a5","Cd79a", "Cd22")
bNaive <- c("Ighd")
bIgm <- c("Cd27","Ighm")
bSwi <- c("Igha","Fcgr4","Fcgr2b")
bGerm <- c("Bcl6")
plasmablast <- c("Ki76")
plasmaCell <- c("Cd38","Sdc1","Tnfrsf17","Pwwp3a","Irf4")
bReg <- c("Il10")

gomEsc <- c("Klf2", "Ccr6", "Sell", "Hhex", "Rrgs13", "Mef2b", "Aicda", "S1pr2", "Eaf2", "Mki67", "Top2a", "Mcm3",
            "Mcm5", "Mcm7", "Fcrl5", "Cr2", "Lgals1", "Xbp1", "Jchain", "Slpi", "Parp14")

### Combine and name
bMarkers_lsv <- list("bPan" = bPan, "bNaive" = bNaive, "bIgm" = bIgm, "bSwi" = bSwi, "bGerm" = bGerm,
                     "plasmaBlast" = plasmablast, "plasmaCell" = plasmaCell, "bReg" = bReg, "gomEsc" = gomEsc)

bDotMarkers_v <- unlist(bMarkers_lsv)
names(bDotMarkers_v) <- gsub("[0-9]+", "", names(bDotMarkers_v))

# Columns and dimensions
bCols_lsv <- list("bPan" = 2, "bNaive" = 2, "bIgm" = 2, "bSwi" = 2, "bGerm" = 2, 
                  "plasmaBlast" = 2, "plasmaCell" = 2, "bReg" = 2, "gomEsc" = 3)
bHeight_lsv <- list("bPan" = 12, "bNaive" = 12, "bIgm" = 12, "bSwi" = 16, "bGerm" = 12, 
                    "plasmaBlast" = 20, "plasmaCell" = 16, "bReg" = 12, "gomEsc" = 28)
bWidth_lsv <- list("bPan" = 8, "bNaive" = 8, "bIgm" = 8, "bSwi" = 8, "bGerm" = 8, 
                   "plasmaBlast" = 8, "plasmaCell" = 8, "bReg" = 8, "gomEsc" = 12)

###
### COMBINE
###

allMarkers_lslsv <- list("Tmajor" = majorTGroupMarkers_lsv, "Tsub" = subTGroupMarkers_lsv, "Bsub" = bMarkers_lsv)
allDotMarkers_lsv <- list("Tmajor" = majorTGroupDotMarkers_v, "Tsub" = subTGroupDotMarkers_v, "Bsub" = bDotMarkers_v)

allCols_lslsv <- list("Tmajor" = majorTcols_lsv, "Tsub" = subTcols_lsv, "Bsub" = bCols_lsv)
allHeight_lslsv <- list("Tmajor" = majorTheight_lsv, "Tsub" = subTheight_lsv, "Bsub" = bHeight_lsv)
allWidth_lslsv <- list("Tmajor" = majorTwidth_lsv, "Tsub" = subTwidth_lsv, "Bsub" = bWidth_lsv)

dotWidth_lsv <- list("Tmajor" = 60, "Tsub" = 60, "Bsub" = 25)





###
### MYELOID GROUPS ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
###

subAll_v <- unique(c('Cxcl10','Cxcl9','Tagap','Cd40','Itgae','Traf2','Cxcl9','Cd22','Cx3cr1','Pdgfb','Fcgr4','Cxcl10',
                     'Ccl3','Vcam1','Tnfsf13b','Tlr1','Cd69','Tgfbr1','Cmklr1','Irf8','Trem2','Tnfrsf14','Ccl12','C1qa',
                     'Cd40','Tlr5','Fkbp5','Ccl7','Hcst','Irf7','Tlr5','Cxcl1','Cd34','Ifitm1','Il1r2','Cd3eap','Gata3',
                     'Ltf','Zbtb7b','Bcl2','Rorc','Smad5','Casp2','Ptk2','Abcb10','Il15ra','S100a8','Muc1','Cd24a','Cd3e',
                     'Cd3g','Cd3d','Rela','Il6st','Psmd7','Stat5a','Pdcd2','Ccl12','Ifngr2','Cxcl1','Clec4e','Msr1','Ifit2',
                     'Crlf2','Fcgr2b','Trem1','Ifitm1','Adamdec1','Adora3','Aoah','Arrb2','Atp8b4','Bcl2a1a','Bcl2a1b',
                     'Bcl2a1c','Bcl2a1d','BC028528','C1qa','C1qb','C2','C3ar1','C5ar1','Ccr1','Ccrl2','Cd163','Cd300a',
                     'Cd40','Cd68','Cd74','Cd86','Cxcr1','Clec7a','Clecsf12','Cmklr1','Csf1r','Ctsb','Ctss','Cybb','Cyth4',
                     'Dpyd','Adgre5','Fcer1g','Fcgr1','Fpr3','Gpnmb','Hk3','Hla-drb6','Ifi30','Igsf6','Itgam','Itgax',
                     'Itgb2','Lair1','Laptm5','Lilrb4a','Lipa','Ly96','Man2b1','Mfsd1','Mndal','Ifi204','Ifi205','Ifi207',
                     'Ms4a4a','Ms4a7','Msr1','Myo1f','Nckap1l','Npl','Nr1h3','Pla2g7','Plekho2','Scpep1','Slamf8','Slc15a3',
                     'Slc31a2','Slco2b1','Snx10','Spi1','Tbxas1','Tlr8','Tmem140','Tnfaip2','Tnfrsf1b','Tnfsf13b','Trpv2',
                     'Sco2','Tyrobp','Vsig4','Agtrap','Aif1','Vsir','Cd14','Cd300lf','Cd33','Cd93','Ctsd','Emilin2','Fcna',
                     'Fcnb','Fes','Fgr','Gns','Grn','Hck','Hmox1','5031439G07Rik','Lilra6','Lrrc25','Lst1','Nfam1','Notch2',
                     'Pilra','Plxdc2','Pram1','Psap','Pycard','Rhog','Serpina1a','Serpina1b','Serpina1c','Serpina1d',
                     'Serpina1e','Serpina1f','Slc7a7','Tgfbi','Themis2','Timp2','Tpp1','Vcan','Acsl1','Alpk1','Aqp9',
                     'Basp1','Bcl6','Cep19','Cflar','Csf3r','Cxcr2','Dennd5a','Dysf','Ripor2','Fpr1','Glt1d1','Adgrg3',
                     'Ifitm2','Il17ra','Kcnj2','Susd6','Pirb','Pira2','Limk2','Linc01002','Mgam','Mob3a','Nampt','Ncf4',
                     'Padi2','Phc2','Phf21a','Plxnc1','Prex1','Ralb','Rnf149','S100a8','S100a9','Slc25a37','Snord89',
                     'Ssh2','Stat3','Stat5b','Thbd','Tlr2','Tlr4','Tmem154','Tnfrsf1a'))


subMacs_v <- unique(c('Ccl7','Hcst','Irf7','Tlr5','Cxcl1','Cd34','Ifitm1','Il1r2','Cd3eap','Gata3','Ltf','Zbtb7b','Bcl2',
                      'Rorc','Smad5','Casp2','Ptk2','Abcb10','Il15ra','S100a8','Muc1','Cd24a','C3','Rela','Il6st','Psmd7',
                      'Stat5a','Pdcd2','Ccl12','Ifngr2','Cxcl1','Clec4e','Msr1','Ifit2','Crlf2','Fcgr2b','Trem1','Ifitm1',
                      'Cd40','Gimap6','Folr2','Tcn2','Pltp','Vsig4','Tnfaip3','Gbp4','Lap3','Tlr7','Dok2','Fcna','Fcnb','Vav1',
                      'Hcst','Siglec1','Irf8','Fgd2','Lst1','Aif1','Lair1','C1qc','C1qa','C1qb','Lilrb4a','Itgb2','Psmb9',
                      'Gbp2','Gbp2b','Gbp5','Ncf1','Cd83','Ccl4','Ccl3','Ccl2','Ccl8','Nos2','Il12b','Fcgr1','Cd80','Il23a',
                      'Cxcl9','Cxcl10','Cd86','Il1a','Il1b','Il6','Tnf','Ccl5','Irf5','Irf1','Cd40','Ido1','Kynu','Ccr7',
                      'Arg1','Arg2','Il10','Fcgr2b','Fcgr3','Cd163','Fcer2a','Cd2','Pdcd1lg2','Cd274','Marco','Csf1r','Mrc1',
                      'Il1rn','Il1r1','Il1r2','Il4ra','Ccl4','Ccl11','Ccl20','Ccl17','Ccl3','Ccl22','Ccl24','Lyve1','Vegfa',
                      'Vegfb','Vegfc','Vegfd','Egf','Ctsa','Ctsb','Ctsd','Tgfb1','Tgfb2','Tgfb3','Mmp14','Mmp19','Mmp9',
                      'Wnt7b','Fasl','Tnfsf12','Tnfsf8','Vtcn1','Msr1','Fn1','Irf4'))

subDCs_v <- unique(c('Cxcl10','Cxcl9','Tagap','Cd40','Itgae','Traf2','Cxcl9','Cd22','Cx3cr1','Pdgfb','Fcgr4','Cxcl10','Ccl3',
                     'Vcam1','Tnfsf13b','Tlr1','Cd69','Tgfbr1','Cmklr1','Irf8','Trem2','Tnfrsf14','Ccl12','C1qa','Cd40','Tlr5',
                     'Fkbp5','Itgax','Cd8a','Clec9a','Xcr1','Sirpa','Itgam','Irf7','Spib','Cx3cr1','Ly6c1','Tlr7','Tlr9','Bst2'))

subNeuMDSCs_v <- unique(c('Acsl1','Alpk1','Aqp9','Basp1','Bcl6','Adgre5','Cep19','Cflar','Csf3r','Cxcr2','Dennd5a','Dysf',
                          'Ripor2','Fcgr2b','Fpr1','Glt1d1','Adgrg3','Ifitm2','Il17ra','Kcnj2','Susd6','Pira2','Pirb','Limk2',
                          'Mgam','Mob3a','Nampt','Ncf4','Padi2','Phc2','Phf21a','Plxnc1','Prex1','Ralb','Rnf149','S100a8',
                          'S100a9','Slc25a37','She','Stat3','Stat5b','Thbd','Tlr2','Tmem154','Tnfrsf1a','Itgam','Plac8','Cd84',
                          'Ly6g','Ly6c1','Tnf'))

# Combine and name
myeloidMarkers_lsv <- list("subAll" = subAll_v, "subMacs" = subMacs_v, "subDCs" = subDCs_v, "subNeuMDSCs" = subNeuMDSCs_v)