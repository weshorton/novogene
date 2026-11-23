uCellLymphoidMarkers_lsv <- list(
  T_cell_general = c("Cd3d","Cd3e","Cd3g","Trac","Cd2","Cd28"),
  CD4_T          = c("Cd4","Il7r","Ltb","Cd40lg"),
  CD8_T          = c("Cd8a","Cd8b1","Gzmk","Gzma"),
  Naive_Tcm      = c("Ccr7","Tcf7","Sell","Lef1","Il7r"),
  Tfh            = c("Cxcr5","Pdcd1","Icos","Bcl6","Cd200","Il21"),
  Th1            = c("Tbx21","Ifng","Cxcr3","Ccr5"),
  Th17           = c("Rorc","Il17a","Ccr6","Il23r","Klrb1"),
  Treg           = c("Foxp3","Il2ra","Ctla4","Ikzf2","Tigit","Tnfrsf18"),
  Cytotoxic_Teff = c("Gzmb","Gzmk","Prf1","Nkg7","Fgfbp2","Klrg1","Cx3cr1"),
  Exhausted_T    = c("Pdcd1","Lag3","Havcr2","Tigit","Tox","Layn","Cxcl13"),
  Trm_resident   = c("Cd69","Itgae","Cxcr6","Znf683","Runx3"),
  Proliferating  = c("Mki67","Top2a","Stmn1","Tyms"),
  gdT            = c("Trdc","Trdv1","Trdv2","Trgv9"),
  MAIT           = c("Slc4a10","Klrb1","Il18rap","Zbtb16"),
  NK_bright      = c("Ncam1","Xcl1","Xcl2","Gzmk","Il7r"),
  NK_dim         = c("Fcgr3a","Fgfbp2","Klrd1","Klrf1","Spon2","Sh2d1b"),
  NK_general     = c("Nkg7","Gnly","Klrf1","Klrd1","Prf1"),
  B_general      = c("Ms4a1","Cd79a","Cd79b","Cd19","Pax5","H2-Ab1"),
  B_naive        = c("Tcl1a","Il4r","Fcer2a","Bank1","Sell"),
  B_memory       = c("Cd27","Aim2","Cd80"),
  B_GC           = c("Aicda","Bcl6","Rgs13","Mki67"),
  Plasma         = c("Mzb1","Xbp1","Jchain","Sdc1","Derl3","Irf4")
)

uCellMyeloidMarkers_lsv <- list(
  Mono_classical    = c("Cd14","S100a8","S100a9","Vcan","Fcn1","Lst1"),
  Mono_intermediate = c("Cd14","Fcgr3a","Ms4a7","Cdkn1c"),
  Mono_nonclassical = c("Fcgr3a","Cx3cr1","Lst1","Ms4a7","Cdkn1c"),
  Neutrophil        = c("Ly6g","Cxcr2","Csf3r","S100a8","S100a9","Mmp9","Lcn2","Retnlg","Fpr2"),
  MDSC_like         = c("Arg1","S100a12","Anxa1","Lcn2","Olfm4"),
  TAM_general       = c("Cd68","Apoe","Apoc1","C1qa","C1qb","Lyz2","Mertk"),
  TAM_MRC1_like     = c("Mrc1","Lyve1","Folr2","Msr1","Cd163"),
  TAM_SPP1          = c("Spp1","Mmp9","Vegfa"),
  TAM_TREM2_lipid   = c("Trem2","Apoe","Lpl","Apoc1"),
  TAM_inflam        = c("Il1b","Tnf","Ccl3","Ccl4","Cxcl10"),
  TAM_ISG           = c("Isg15","Ifit1","Ifit3","Mx1","Ifitm3"),
  cDC1              = c("Clec9a","Xcr1","Wdfy4","Cadm1","Irf8"),
  cDC2              = c("Sirpa","Itgam","Clec10a","Cd1b"),
  pDC               = c("Siglech","Bst2","Irf7","Tcf4","Clec4c"),
  migDC             = c("Ccr7","Lamp3","Cd83","Fscn1","Cd274"),
  Mast              = c("Kit","Cpa3","Tpsab1","Ms4a2"),
  Eosinophil        = c("Siglecf","Prg2","Epx"),
  Proliferating     = c("Mki67","Top2a")
)



uniqueLymphoidMarkers_lsv <- list(
  T_cell_general = c("Cd3d","Cd3e","Cd3g","Trac","Cd2","Cd28"),
  CD4_T          = c("Cd4","Il7r","Ltb","Cd40lg"),
  CD8_T          = c("Cd8a","Cd8b1","Gzmk"),
  Naive_Tcm      = c("Ccr7","Tcf7","Sell","Lef1"),
  Tfh            = c("Cxcr5","Icos","Cd200","Il21"),
  Th1            = c("Tbx21","Ifng","Cxcr3","Ccr5"),
  Th17           = c("Rorc","Il17a","Ccr6","Il23r","Klrb1"),
  Treg           = c("Foxp3","Il2ra","Ctla4","Ikzf2","Tigit","Tnfrsf18"),
  Cytotoxic_Teff = c("Gzmb","Gzma","Prf1","Klrg1"),
  Exhausted_T    = c("Pdcd1","Lag3","Havcr2","Tox","Layn","Cxcl13"),
  Trm_resident   = c("Cd69","Itgae","Cxcr6","Znf683","Runx3"),
  Proliferating  = c("Mki67","Top2a","Stmn1","Tyms"),
  gdT            = c("Trdc","Trdv1","Trdv2","Trgv9"),
  MAIT           = c("Slc4a10","Klrb1","Il18rap","Zbtb16"),
  NK_bright      = c("Ncam1","Xcl1","Xcl2"),
  NK_dim         = c("Fcgr3a","Fgfbp2","Klrf1","Spon2","Sh2d1b"),
  NK_general     = c("Nkg7","Gnly","Klrd1"),
  B_general      = c("Ms4a1","Cd79a","Cd79b","Cd19","Pax5","H2-Ab1"),
  B_naive        = c("Tcl1a","Il4r","Fcer2a","Bank1"),
  B_memory       = c("Cd27","Aim2","Cd80"),
  B_GC           = c("Bcl6","Aicda","Rgs13"),
  Plasma         = c("Mzb1","Xbp1","Jchain","Sdc1","Derl3","Irf4")
)

uniqueMyeloidMarkers_lsv <- list(
  Mono_classical    = c("Cd14","Vcan","Fcn1","Lst1"),
  Mono_intermediate = c("Ms4a7"),
  Mono_nonclassical = c("Fcgr3a","Cx3cr1","Cdkn1c"),
  Neutrophil        = c("Ly6g","Cxcr2","Csf3r","S100a8","S100a9","Retnlg","Fpr2"),
  MDSC_like         = c("Arg1","S100a12","Anxa1","Olfm4"),
  TAM_general       = c("Cd68","Apoe","C1qa","C1qb","Lyz2","Mertk"),
  TAM_MRC1_like     = c("Mrc1","Lyve1","Folr2","Msr1","Cd163"),
  TAM_SPP1          = c("Spp1","Mmp9","Vegfa"),
  TAM_TREM2_lipid   = c("Trem2","Lpl","Apoc1"),
  TAM_inflam        = c("Il1b","Tnf","Ccl3","Ccl4","Cxcl10"),
  TAM_ISG           = c("Isg15","Ifit1","Ifit3","Mx1","Ifitm3"),
  cDC1              = c("Clec9a","Xcr1","Wdfy4","Cadm1","Irf8"),
  cDC2              = c("Sirpa","Itgam","Clec10a","Cd1b"),
  pDC               = c("Siglech","Bst2","Irf7","Tcf4","Clec4c"),
  migDC             = c("Ccr7","Lamp3","Cd83","Fscn1","Cd274"),
  Mast              = c("Kit","Cpa3","Tpsab1","Ms4a2"),
  Eosinophil        = c("Siglecf","Prg2","Epx"),
  Proliferating     = c("Mki67","Top2a")
)

