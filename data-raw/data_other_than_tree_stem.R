# Data Source -------------------------------------------------------------

# Original files sent By Suzanne Lao. (Mauro's private email
# https://goo.gl/WhFNqd).



# Setup -------------------------------------------------------------------

library(dplyr)
library(tibble)



# Elevation Data ----------------------------------------------------------

bci_elevation <- as_tibble(CTFSElev_bci$col)
use_data(bci_elevation)

bci_mat <- CTFSElev_bci$mat
use_data(bci_mat)

bci_plotdim <- c(CTFSElev_bci$xdim, CTFSElev_bci$ydim)
use_data(bci_plotdim)



# Species Data ------------------------------------------------------------

bci_species <- as_tibble(bci.spptable)
use_data(bci_species)



# Wood Density ------------------------------------------------------------

bci_wood_density <- as_tibble(wsg.ctfs3)
use_data(bci_wood_density)



# Habitat Data ------------------------------------------------------------
path <- "./data-raw/from_suzanne_lao/bcifiles/habitat.txt"
bci_habitat <- as_tibble(readr::read_delim(path, delim = "\t"))
use_data(bci_habitat)



# Check class
tibble::as_tibble(bci.quad.info)
# Can I coerce to integer? Yes because all are whole numbers
bci.quad.info %>%
  dplyr::select(hab, quad) %>%
  purrr::map_chr(~ all(assertive::is_whole_number(.)))

bci_quad_info <- bci.quad.info %>%
  dplyr::mutate(
    hab = as.integer(hab),
    quad = as.integer(as.character(quad))
  ) %>%
  as_tibble()
use_data(bci_quad_info)
