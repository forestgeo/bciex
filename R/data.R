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

#' Elevation data from Barro Colorado Island, Panama, recorded over a 5x5m grid.
#'
#' Elevation data from Barro Colorado Island (BCI), Panama, recorded over a 5x5m
#' grid.
#'
#' @source Lao, Suzanne \email{LAOZ@@si.edu}.
#' @format
#' A tibble with 20301 rows and 3 variables:
#' * `x`, `y`: coordinates at every corner across the BCI plot (xxx which
#' corner?).
#' * `elev`: elevation at every corner across the plot (xxx which corner?, xxx
#' is the unit meters?).
#' @seealso [bci_mat].
"bci_elevation"

#' A matrix of elevation data from Barro Colorado Island.
#'
#' A matrix of elevation data from Barro Colorado Island (BCI). Data is recorded
#' over each 5x5m grid. Columns represent x coordinates and rows represent y
#' coordinates.
#'
#' bci_mat and [bci_elevation] contain the same information. They differ only in
#' the class: bci_mat is a matrix and [bci_elevation] is a dataframe.
#'
#' @source Lao, Suzanne \email{LAOZ@@si.edu}.
#' @format A matrix with 101 rows and 201 columns.
#' @seealso [bci_elevation].
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
#' A tibble with 16558 rows and 9 variables:
#' * `wsg`: wood specific gravity, i.e. dry wood density.
#' * `idlevel`: The taxonomic level from which the `wsg` was taken. If `genus`,
#'     `wsg` is the mean for the entire genus, if `family`, wsg is the mean for the
#'     family, etc.
#' * `site`: Plot name. Should match name in database.
#' * `sp`: The species code or mnemonic.
#' * `genus`: The taxonomic genus name.
#' * `species`: The taxonomic species name.
#' * `genwood`: Mean `wsg` for the genus.
#' * `famwood`: Mean `wsg` for the family.
#' * `spwood`: Mean `wsg` for the species.
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





#' Subset of tree data from Barro Colorado Island, Panama.
#'
#' A subset of data of 1000 randomly selected trees from Barro Colorado Island,
#' Panama (data released in 2012). For every bciYYtNmini, "YY" and "N" indicate
#' the year and census number. For example, bci12t1mini contains BCI data
#' released in 2012 from census 1.
#'
#' @source From \url{https://repository.si.edu/handle/10088/20925}, file
#'   bci.full#.rda.
#'
#' @format A dataframe with 1000 rows and 20 variables.
#' Variables are defined at: http://ctfs.si.edu/Public/DataDict/data_dict.php.
#' @aliases bci12t1mini bci12t2mini bci12t3mini bci12t4mini bci12t5mini
#'   bci12t6mini bci12t7mini
#' @name bciYYtNmini
NULL


# Tree and Stem Data ------------------------------------------------------

#' Subset of stem data from Barro Colorado Island, Panama.
#'
#' Stem data corresponding to a subset of 1000 randomly selected trees from
#' Barro Colorado Island, Panama (data released in 2012). For every bciYYsNmini,
#' "YY" and "N" indicate the year and census number. For example, bci12s1mini
#' contains BCI data released in 2012 from census 1.
#'
#' @source From \url{https://repository.si.edu/handle/10088/20925}, file
#'   bci.stem#.rda.
#'
#' @format A dataframe with 2165 rows and 20 variables.
#' Variables are defined at: http://ctfs.si.edu/Public/DataDict/data_dict.php.
#' @aliases bci12s1mini bci12s2mini bci12s3mini bci12s4mini bci12s5mini
#'   bci12s6mini bci12s7mini
#' @name bciYYsNmini
NULL
