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

#' Elevation data from BCI recorded over a 5x5m grid.
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



# Generic tree and stem tables --------------------------------------------

#' General description of census tables: tree and stem.
#'
#' Tree and stem tables are dataframes that store data from one specific census
#' of one specific census plot. For any given plot one tree table stores data
#' recorded during one specific census, and each row records the data from one
#' specific tree. Similarly, for any given plot one stem table stores data
#' recorded during one specific census , and each row records the data from one
#' specific stem. For example, if plot X was censused twice, then it has two
#' tree tables and two stem tables.
#'
#' Each tree (or stem) table of a census plot has two remarkable properties:
#' * The number of rows equals the number of trees (or stems) that were ever
#' found in the plot (in any census). This implies that the number of rows is
#' identical to that of any other tree (or stem) table of the same plot; also,
#' that trees (or stems) appear in tree (or stem) tables before they recruit,
#' while they are alive, and after they die.
#' * The order of the rows is identical to that of any other tree (or stem)
#' table of the same plot. This implies that you can compare data accross
#' censuses even if the row order is important for your analyses. Also, you can
#' easily repeat analyses with different censuses with minimal effort. For
#' example, this structure makes helps to calculate demographic rates between
#' any pair of censuses.
#'
#' @section Definition of Variables in tree tables:
#'
#' * `treeID`: The unique tree identifier in CTFS database. Useful to be certain
#' in matching trees.
#'
#' * `stemID`: The unique stem identifier in CTFS database. Useful to be certain
#'   in matching stems.
#'
#' * `tag`: Tag number used in the field.
#'
#' * `StemTag`: Tag number on the individual stem, if present.
#'
#' * `sp`: The species mnemonic. To get full species names, the taxonomy table
#'   must be downloaded from the CTFS database:
#'   http://ctfs.arnarb.harvard.edu/CTFSReports
#'
#' * `quadrat`: Quadrat designation.
#'
#' * `gx`: The x coordinate within the plot, relative to one edge of the plot.
#'
#' * `gy`: The y plot coordinate.
#'
#' * `MeasureID`: The unique identifier of a single measurement in the CTFS
#'   database.
#'
#' * `CensusID`: The numeric identifier of the census.
#'
#' * `dbh`: Diameter of one stem on the tree, the stem whose stemID is given.
#'
#' * `pom`: The point-of-measure, where the diameter was taken, identical to hom,
#'   but a character variable with only 2 decimal places.
#'
#' * `hom`: The height-of-measure, identical to pom but a numeric variable with
#'   full precision.
#'
#' * `ExactDate`: The date on which a tree was measured.
#'
#' * `DFstatus`: The codes for the measurement as recorded in the field.
#'     * `A`: Alive.
#'     * `D`: Dead.
#'     * `lost_stem` (deprecated): Lost stem. It usually means the stem was broken
#'     in the given census, while the tree had no other stem.  This status is
#'     deprecated;  it is safer to check `stemID` to determine whether a tree's
#'     measurement changed stems between censuses.
#'     * `M`: Missing. It is used where there is no record of the corresponding
#'     value of `dbh`, so it is not certain whether the tree was alive or dead.
#'     `P`: Prior. It indicates a tree had not yet recruited at this census.
#'
#' * `nostems`: The number of living stems on the date of measurement.
#'
#' * `status`: Indicates the status of the entire tree. For example, if any stem
#'   is alive, the tree is alive; if every stem is dead, the tree is dead:
#'     * `A`: Aalive.
#'     * `D`: Dead.
#'     * `M`: Missing.
#'     * `P`: Prior. It indicates a tree had not yet recruited at this census.
#'     * `G`: Gone. xxx to complete.
#'
#' * `date`: The julian date, for date arithmetic.
#'
#' * `agb`: Above-ground-biomass of all stems on the tree, in Mg (equal to
#'   metric tons or 106 g). Note that `agb = 0` for dead trees.
#'
#' @section Definition of Variables in stem tables:
#' Compared to tree tables, the the variables are and mean the same. But notice
#' some differences in `DFstatus` and `agb`; also notice the additional
#' variables `codes` and `countPOM` and that the variable `nostems` does not
#' exist for stem tables.
#'
#' * `treeID`: See tree table.
#'
#' * `stemID`: See tree table.
#'
#' * `tag`: See tree table.
#'
#' * `StemTag`: See tree table.
#'
#' * `sp`: See tree table.
#'
#' * `quadrat`: See tree table.
#'
#' * `gx`: See tree table.
#'
#' * `gy`: See tree table.
#'
#' * `MeasureID`: See tree table.
#'
#' * `CensusID`: See tree table.
#'
#' * `dbh`: Diameter of the stem.
#'
#' * `pom`: See tree table.
#'
#' * `hom`: See tree table.
#'
#' * `ExactDate`: See tree table.
#'
#' * `DFstatus`: The codes are the same as in tree tables except that stems may
#' have the additional status `G` (gone). `G` applies when a tree is alive and a
#' stem which formerly had a measurement does not in this census. This happens
#' in some plots, where individual stems do not have tags and cannot be tracked.
#'
#' * `codes`: The codes for the measurement as recorded in the field.
#'
#' * `countPOM`: The number of POMs (HOMs) for the same stem in this census.
#'
#' * `status`: See tree table.
#'
#' * `date`: See tree table.
#'
#' * `agb`: Same, but notice that some may be NA.
#'
#' @source \url{http://ctfs.si.edu/Public/CTFSRPackage/index.php/web/data_format}
#' @family census tables.
#' @name census
NULL



# Specific tree and stem tables from BCI ----------------------------------

#' A randomly selected subset of tree tables from Barro Colorado Island, Panama.
#'
#' For every bciYYsNmini "YY" and "N" indicate the year and census number. For
#' example, bci12t1mini contains data released in 2012 from census 1.
#'
#' @aliases bci12t1mini bci12t2mini bci12t3mini bci12t4mini bci12t5mini
#'   bci12t6mini bci12t7mini
#'
#' @seealso census
#'
#' @source Files bci.full#.rdata from
#'   \url{https://repository.si.edu/handle/10088/20925}.
#' @family census tables.
#' @format A dataframe with 1,000 rows and 20 variables.
#' @name bciYYtNmini
NULL



#' A randomly selected subset of stem tables from Barro Colorado Island, Panama.
#'
#' For every bciYYsNmini "YY" and "N" indicate the year and census number. For
#' example, bci12s1mini contains data released in 2012 from census 1.
#'
#' @aliases bci12s1mini bci12s2mini bci12s3mini bci12s4mini bci12s5mini
#'   bci12s6mini bci12s7mini
#'
#' @seealso census
#'
#' @source Files bci.stem#.rdata from
#'   \url{https://repository.si.edu/handle/10088/20925}.
#' @family census tables.
#' @format A dataframe with 2,165 rows and 20 variables.
#' @name bciYYsNmini
NULL






# Generic ViewFull table --------------------------------------------------

# xxx cont.

# On Tue, Jan 9, 2018 at 5:39 AM, Suzanne Lao <laosuz@gmail.com> wrote:
#   Hi Mauro,
#
# I just checked the structure of the Tree and Stem tables in our databases, and they are correctly defined in the data dictionary. What has changed are the variables in the ViewFullTable and especially the ViewTaxonomy tables.

#' @source https://repository.si.edu/bitstream/handle/10088/20863/CTFSDataModelDocumentation.pdf?sequence=2&isAllowed=y
#'
#' Merges all the relevant variables from the corresponding tables in the
#' database back into a flat file. Each record represents one measurement and/or
#' attribute of one stem of one tree of one plot from one census. Because
#' buttresses can grow, for trees with buttresses, a stem may be measured at
#' more than one height. So some stems may have more than one measurement in a
#' census, but at different hom
#'



# ViewFullTable -----------------------------------------------------------

#' An example ViewFullTable data set.
#'
#' ViewFullTable with data of a only 10 quadrats of the censuses 6 and 7 of the
#' 50 hectare plot of Barro Colorado Island downloaded from:
#' https://doi.org/10.5479/data.bci.20130603. Explanation by Suzanne Lao
#' https://goo.gl/fg2nqh.
#'
#' @source https://doi.org/10.5479/data.bci.20130603.
#' @format A tibble with 4,374 rows and 28 variables.
"bci12vft_mini"
