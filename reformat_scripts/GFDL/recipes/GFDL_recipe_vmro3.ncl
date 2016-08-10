;;########################################################################
;; Recipe to extract a complex variable from GFDL output
;;########################################################################
;;
;; VARIABLE: vmro3
;; RECIPE: O3 -> units to plev
;; HISTORY: 20160112-maso_er: written.
;;
;;########################################################################

load "./interface_scripts/constants.ncl"
undef("GFDL_recipe")
function GFDL_recipe(name: string)
local vmro3
begin

  ;; Read in the data
  vmro3 = find_and_read_var("O3", True)

  ;; Rename the units for pfull
  vmro3!1 = "plev"

  ;; Return the vmro3 values
  return(vmro3)

end