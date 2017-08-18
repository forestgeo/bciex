# Sample a few trees and stems randomly
# Issue: https://github.com/forestgeo/bciex/issues/5
# Data source: https://repository.si.edu/handle/10088/20925
# via bci https://github.com/forestgeo/bci



# Setup -------------------------------------------------------------------

library(tidyverse)
library(bci)



# Explore trees -----------------------------------------------------------

# Do all censuces have the same number of rows?
paste0("bci12full", 1:7) %>% map(~get(.) %>% nrow) %>% unlist() %>% unique()
# Yes.

# Given one tag, may the status of the tree change through time?
paste0("bci12full", 1:7) %>%
  map_df(
    ~get(.) %>%
      filter(as.numeric(tag) == 849457)
  ) %>%
  select(tag, status, DFstatus, everything())
# Yes.

# Are all tags unique?
rows_n <- paste0("bci12full", 1:7) %>%
  map_dbl(~get(.) %>% nrow) %>%
  unique()
unique_tag_n <- paste0("bci12full", 1:7) %>%
  map_dbl(~get(.) %>% select(tag) %>% unique() %>% nrow()) %>%
  unique()
all.equal(rows_n, unique_tag_n)
# Yes.


# So my task is to select 20k tags randomly, and use the same tags to filter
# all censuses.



# Explore stems -----------------------------------------------------------

# Do all censuces have the same number of rows?
paste0("bci12stem", 1:7) %>% map(~get(.) %>% nrow) %>% unlist() %>% unique()
# Yes.

# Given one tag, may the status of the tree change through time?
paste0("bci12stem", 1:7) %>%
  map_df(
    ~get(.) %>%
      filter(as.numeric(tag) == 849457)
  ) %>%
  select(tag, status, DFstatus, everything())
# Yes.

# Are all tags unique?
rows_n <- paste0("bci12stem", 1:7) %>%
  map_dbl(~get(.) %>% nrow) %>%
  unique()
unique_tag_n <- paste0("bci12stem", 1:7) %>%
  map_dbl(~get(.) %>% select(tag) %>% unique() %>% nrow()) %>%
  unique()
all.equal(rows_n, unique_tag_n)
# No

# What do duplicated tags look like?
paste0("bci12stem", 1:7) %>%
  map(
    ~get(.) %>%
      filter(duplicated(tag)) %>%
      select(tag, status, DFstatus, everything()) %>%
      head(10)
  )

# Ok, so there is no unique identifyer of stem. But I can make a unique
# identifyer as tag_stemID.

# Are all tag-stemID unique?
rows_n <- paste0("bci12stem", 1:7) %>%
  map_dbl(~get(.) %>% nrow) %>%
  unique()
unique_tag_stemID_n <- paste0("bci12stem", 1:7) %>%
  map_dbl(
    ~get(.) %>%
      mutate(tag_stemID = paste(tag, stemID, "-")) %>%
      select(tag_stemID) %>%
      unique() %>%
      nrow()
  ) %>%
  unique()
all.equal(rows_n, unique_tag_stemID_n)
# Yes.



# Check that the occurrence of negative tags is not a mistake.
# (Data source: https://repository.si.edu/handle/10088/20925)
all.equal(bci.full1$tag, bci12full1$tag)
# Compared to tags in the original dataset, thoes in bci12full1 are the same,
# (and contain negative tags). I can safely use bci::* data.



# Subset and use `mini` data ----------------------------------------------

# Subset a few tags randomly, and use the same tags to filter
# all datasets, including tree and stem datasets.

tag_mini <- bci12full1 %>%
  as_tibble() %>%
  select(tag) %>%
  sample_n(1000) %>%
  pull()

# Tree

bci12t1mini <- bci12full1 %>% filter(tag %in% tag_mini)
use_data(bci12t1mini)

bci12t2mini <- bci12full2 %>% filter(tag %in% tag_mini)
use_data(bci12t2mini)

bci12t3mini <- bci12full3 %>% filter(tag %in% tag_mini)
use_data(bci12t3mini)

bci12t4mini <- bci12full4 %>% filter(tag %in% tag_mini)
use_data(bci12t4mini)

bci12t5mini <- bci12full5 %>% filter(tag %in% tag_mini)
use_data(bci12t5mini)

bci12t6mini <- bci12full6 %>% filter(tag %in% tag_mini)
use_data(bci12t6mini)

bci12t7mini <- bci12full7 %>% filter(tag %in% tag_mini)
use_data(bci12t7mini)

# Stem

bci12s1mini <- bci12stem1 %>% filter(tag %in% tag_mini)
use_data(bci12s1mini)

bci12s2mini <- bci12stem2 %>% filter(tag %in% tag_mini)
use_data(bci12s2mini)

bci12s3mini <- bci12stem3 %>% filter(tag %in% tag_mini)
use_data(bci12s3mini)

bci12s4mini <- bci12stem4 %>% filter(tag %in% tag_mini)
use_data(bci12s4mini)

bci12s5mini <- bci12stem5 %>% filter(tag %in% tag_mini)
use_data(bci12s5mini)

bci12s6mini <- bci12stem6 %>% filter(tag %in% tag_mini)
use_data(bci12s6mini)

bci12s7mini <- bci12stem7 %>% filter(tag %in% tag_mini)
use_data(bci12s7mini)



# Subset 20k --------------------------------------------------------------

# Sean suggested subsetting 20k individuals from each dataset. The code below
# does that, but is dissabled because 20k individuals might be too much for
# examples and tests. Datasets of that size may be usable in other scenarios,
# but I won't build them until they are necessary. In any case, the complete
# datasets can be accessed via the __bci__ package.

# tag_sample <- bci12full1 %>%
#   as_tibble() %>%
#   select(tag) %>%
#   sample_n(20000) %>%
#   pull()
#
# # Tree
#
# bci12t1ex <- bci12full1 %>% filter(tag %in% tag_sample)
# use_data(bci12t1ex)
#
# bci12t2ex <- bci12full2 %>% filter(tag %in% tag_sample)
# use_data(bci12t2ex)
#
# bci12t3ex <- bci12full3 %>% filter(tag %in% tag_sample)
# use_data(bci12t3ex)
#
# bci12t4ex <- bci12full4 %>% filter(tag %in% tag_sample)
# use_data(bci12t4ex)
#
# bci12t5ex <- bci12full5 %>% filter(tag %in% tag_sample)
# use_data(bci12t5ex)
#
# bci12t6ex <- bci12full6 %>% filter(tag %in% tag_sample)
# use_data(bci12t6ex)
#
# bci12t7ex <- bci12full7 %>% filter(tag %in% tag_sample)
# use_data(bci12t7ex)
#
# # Stem
#
# bci12s1ex <- bci12stem1 %>% filter(tag %in% tag_sample)
# use_data(bci12s1ex)
#
# bci12s2ex <- bci12stem2 %>% filter(tag %in% tag_sample)
# use_data(bci12s2ex)
#
# bci12s3ex <- bci12stem3 %>% filter(tag %in% tag_sample)
# use_data(bci12s3ex)
#
# bci12s4ex <- bci12stem4 %>% filter(tag %in% tag_sample)
# use_data(bci12s4ex)
#
# bci12s5ex <- bci12stem5 %>% filter(tag %in% tag_sample)
# use_data(bci12s5ex)
#
# bci12s6ex <- bci12stem6 %>% filter(tag %in% tag_sample)
# use_data(bci12s6ex)
#
# bci12s7ex <- bci12stem7 %>% filter(tag %in% tag_sample)
# use_data(bci12s7ex)
