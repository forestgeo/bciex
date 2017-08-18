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



# Elevation Data ----------------------------------------------------------

#' Elevation data from Barro Colorado Island (BCI), Panama.
#'
#' @source Lao, Suzanne \email{LAOZ@@si.edu}.
#' @format
#' A tibble with 20301 rows and 3 variables:
#' * `x`, `y`: coordinates at every corner across the plot (xxx in meters from
#' some reference).
#' * `elev`: elevation at every corner across the plot (xxx in meters from some
#' reference).
"bci_elevation"

#' xxx Ask Suzanne.
#'
#' @source Lao, Suzanne \email{LAOZ@@si.edu}.
#' @format
#' A matrix with 101 rows and 201 columns. Row and column names are NULL.
"bci_mat"

#' Dimensions of the plot from Barro Colorado Island (BCI).
#'
#' @source Lao, Suzanne \email{LAOZ@@si.edu}.
#' @format
#' An unnamed vector of length 2.
"bci_plotdim"



# Species Data ------------------------------------------------------------

#' Species from Barro Colorado Island (BCI), Panama.
#'
#' @source Lao, Suzanne \email{LAOZ@@si.edu}.
#' @format
#' A tibble with 1414 rows and 13 variables.
#' Variable names at http://ctfs.si.edu/Public/DataDict/data_dict.php.
#'
#' * `sp`: Species code.
#' * `Latin`: Latin name.
#' * `Genus`: Genus name.
#' * `Species`: Species part of Latin name; (or may be a morphospecies name).
#' * `Family`: Family name.
#' * `SpeciesID`: Primary key, an integer automatically generated to uniquely
#' identify a    taxonomic species.
#' * `SubspeciesID`:  An integer automatically generated to uniquely identify a
#' subspecies.
#' * `Authority`: Taxonomic authority for the classification of the species.
#' * `IDLevel`: The deepest taxonomic level for which full identification is
#' known. Limited to values species, genus, family, none, or multiple. None is
#' used when family is not known. Multiple is used when the name may include a
#' mixture of more than one species.
#' * `syn`: xxx
#' * `subsp`: Subspecies portion of the Latin name, may be a subspecies or
#' variety.
#' * `wsg`: xxx
#' * `wsglevel`: xxx
"bci_species"




# Wood Density ------------------------------------------------------------

#' Wood density data from Barro Colorado Island (BCI), Panama.
#'
#' @source Lao, Suzanne \email{LAOZ@@si.edu}.
#' @format
#' A tibble with 16558 rows and 9 variables xxx:
#' * `wsg`:
#' * `idlevel`:
#' * `site`:
#' * `sp`:
#' * `genus`:
#' * `species`:
#' * `genwood`:
#' * `famwood`:
#' * `spwood`:
"bci_wood_density"



# Habitat Data ------------------------------------------------------------

#' Habitat data from Barro Colorado Island (BCI), Panama.
#'
#' Habitats from BCI per 20x20m quadrats determined by observation. Habitats can
#' also be determined by the slope, convexity, and elevation.
#'
#' @source Lao, Suzanne \email{LAOZ@@si.edu}.
#' @format
#' A tibble with 1250 rows and 3 variables:
#' * `x`, `y`: coordinates at every corner across the plot (xxx in meters from
#' some reference).
#' * `habitat`: Habitats per 20x20m quadrats determined by observation.
"bci_habitat"








#' Habitat data from Barro Colorado Island (BCI), Panama.
#'
#' Habitats from BCI determined by the slope, convexity, and elevation.
#'
#' @source Lao, Suzanne \email{LAOZ@@si.edu}.
#' @format
#' A tibble with 1250 rows and 5 variables xxx:
#' * `elev`: Elevation.
#' * `convex`: Convexity.
#' * `slope`: Slope.
#' * `hab`: Habitat. xxx I converted this from factor to integer.
#' * `quad`: xxx I converted this from factor to integer
"bci_quad_info"

