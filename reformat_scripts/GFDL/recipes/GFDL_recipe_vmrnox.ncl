;;#############################################################################
;; Recipe to extract a complex variable from EMAC output
;;#############################################################################
;;
;; VARIABLE: vmrnox
;; RECIPE:   NO + NO2
;; HISTORY:  20140424-A_righ_ma: written.
;; 	     20160210-maso_er: ported to GFDL.
;;#############################################################################
load "./interface_scripts/constants.ncl"
undef("GFDL_recipe")
function GFDL_recipe(name: string)
begin

    xx = find_and_read_var("NO", True)
    xx = xx + find_and_read_var("NO2", True)
    return(xx)

end
