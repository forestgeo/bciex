
# Data Source -------------------------------------------------------------

# Original files sent By Suzanne Lao. (Mauro's private email
# https://goo.gl/WhFNqd).

# From: Lao, Suzanne <LAOZ@si.edu>
# Date: Thu, Jul 27, 2017 at 1:33 PM
# Subject: RE: Data from BCI for examples
# To: Mauro Lepore <maurolepore@gmail.com>
# Cc: "Davies, Stuart J." <DaviesS@si.edu>
#
# I have shared a folder with you via dropbox ***[bcifiles]***. It includes:
#
# -          BCI elevation data
#
# -          BCI 2005 and 2010 stem data
#
# -          BCI 2005 and 2010 tree data
#
# -          BCI species file
#
# -          wood density file, which contains some errors, and will be updated
# soon. However the values for BCI should be fine.
#
# -          a text file with the habitats per 20x20m quadrats, which were
# determined by observation.
#
# However, habitats can also be determined by the slope, convexity, and
# elevation. I am attaching a file I made ***[bci.quad.info.rdata]***, which is
# quite old. You may want to redo this file, or maybe someone else has a better
# one.
#
# The tree and stem data are the most updated ones that we have from Rick.
# Please use a subset of this data only.
#
# Let me know if you have any questions.
#
# Cheers,
# Suzanne




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
  purrr::map_chr(~all(assertive::is_whole_number(.)))

bci_quad_info <- bci.quad.info %>%
  dplyr::mutate(
    hab = as.integer(hab),
    quad = as.integer(as.character(quad))
  ) %>%
  as_tibble()
use_data(bci_quad_info)
