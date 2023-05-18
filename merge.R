rm(list = ls(all.names = TRUE)) #will clear all objects includes hidden objects.
gc() #free up memrory and report the memory usage.
nflreadr::.clear_cache()

library(tidyverse)

setwd("~/Best Ball")

#Read in the Data

#2020
bbdb_20 <- read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2020/part_00.csv")
#2021
#Post Season
bbdb_final21 <- read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2021/post_season/finals.csv")
bbdb_quarter21 <- read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2021/post_season/quarterfinals.csv")
bbdb_semi21 <- read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2021/post_season/semifinals.csv")
#Regular Season
bbdb_21_00 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2021/regular_season/part_00.csv")
bbdb_21_01 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2021/regular_season/part_01.csv")
bbdb_21_02 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2021/regular_season/part_02.csv")
bbdb_21_03 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2021/regular_season/part_03.csv")
bbdb_21_04 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2021/regular_season/part_04.csv")
bbdb_21_05 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2021/regular_season/part_05.csv")
#2022
#Post Season
bbdb_final22 <- read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/post_season/finals/part_00.csv")
bbdb_quarter22_00 <- read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/post_season/quarterfinals/part_00.csv")
bbdb_quarter22_01 <- read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/post_season/quarterfinals/part_01.csv")
bbdb_quarter22_02 <- read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/post_season/quarterfinals/part_02.csv")
bbdb_quarter22_03 <- read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/post_season/quarterfinals/part_03.csv")
bbdb_quarter22_04 <- read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/post_season/quarterfinals/part_04.csv")
bbdb_quarter22_05 <- read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/post_season/quarterfinals/part_05.csv")
bbdb_quarter22_06 <- read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/post_season/quarterfinals/part_06.csv")
bbdb_quarter22_07 <- read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/post_season/quarterfinals/part_07.csv")
bbdb_quarter22_08 <- read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/post_season/quarterfinals/part_08.csv")
bbdb_quarter22_09 <- read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/post_season/quarterfinals/part_09.csv")
bbdb_semi22 <- read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/post_season/semifinals/part_00.csv")
#Regular Season
#fast draft times
bbdb_22_00 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/regular_season/fast/part_00.csv")
bbdb_22_01 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/regular_season/fast/part_01.csv")
bbdb_22_02 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/regular_season/fast/part_02.csv")
bbdb_22_03 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/regular_season/fast/part_03.csv")
bbdb_22_04 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/regular_season/fast/part_04.csv")
bbdb_22_05 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/regular_season/fast/part_05.csv")
bbdb_22_06 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/regular_season/fast/part_06.csv")
bbdb_22_07 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/regular_season/fast/part_07.csv")
bbdb_22_08 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/regular_season/fast/part_08.csv")
bbdb_22_09 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/regular_season/fast/part_09.csv")
bbdb_22_10 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/regular_season/fast/part_10.csv")
bbdb_22_11 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/regular_season/fast/part_11.csv")
bbdb_22_12 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/regular_season/fast/part_12.csv")
bbdb_22_13 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/regular_season/fast/part_13.csv")
bbdb_22_14 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/regular_season/fast/part_14.csv")
bbdb_22_15 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/regular_season/fast/part_15.csv")
bbdb_22_16 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/regular_season/fast/part_16.csv")
bbdb_22_17 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/regular_season/fast/part_17.csv")
bbdb_22_18 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/regular_season/fast/part_18.csv")
bbdb_22_19 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/regular_season/fast/part_19.csv")
bbdb_22_20 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/regular_season/fast/part_20.csv")
bbdb_22_21 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/regular_season/fast/part_21.csv")
bbdb_22_22 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/regular_season/fast/part_22.csv")
bbdb_22_23 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/regular_season/fast/part_23.csv")
bbdb_22_24 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/regular_season/fast/part_24.csv")
bbdb_22_25 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/regular_season/fast/part_25.csv")
bbdb_22_26 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/regular_season/fast/part_26.csv")
#mixed draft times
bbdb_22_m_00 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/regular_season/mixed/part_00.csv")
bbdb_22_m_01 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/regular_season/mixed/part_01.csv")
bbdb_22_m_02 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/regular_season/mixed/part_02.csv")
bbdb_22_m_03 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/regular_season/mixed/part_03.csv")
bbdb_22_m_04 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/regular_season/mixed/part_04.csv")
bbdb_22_m_05 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/regular_season/mixed/part_05.csv")
bbdb_22_m_06 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/regular_season/mixed/part_06.csv")
bbdb_22_m_07 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/regular_season/mixed/part_07.csv")
bbdb_22_m_08 <-read.csv("https://raw.githubusercontent.com/fantasydatapros/best-ball-data-bowl/master/data/2022/regular_season/mixed/part_08.csv")

#Save 2020 Data for Reference
write.csv(bbdb_20, "Data/bbdb_20.csv", row.names = FALSE)

#Merge & Save 2021 Regular Season Data
bbdb_21 <- bbdb_21_00 |>
  rbind(bbdb_21_01) |>
  rbind(bbdb_21_02) |>
  rbind(bbdb_21_03) |>
  rbind(bbdb_21_04) |>
  rbind(bbdb_21_05)

rm(bbdb_21_00, bbdb_21_01, bbdb_21_02, bbdb_21_03, bbdb_21_04, bbdb_21_05)

write.csv(bbdb_21, "Data/bbdb_21_reg.csv", row.names = FALSE)

#Merge & Save 2021 Post Season Data
bbdb_21_post <- bbdb_quarter21 |>
  rbind(bbdb_semi21) |>
  rbind(bbdb_final21)

rm(bbdb_quarter21, bbdb_semi21, bbdb_final21)

write.csv(bbdb_21_post, "Data/bbdb_21_post.csv", row.names = FALSE)

#merge & Save 2022 Fast Draft Times (Regular Season Data)
bbdb_22_fast <- bbdb_22_00 |>
  rbind(bbdb_22_01) |>  rbind(bbdb_22_01) |>  rbind(bbdb_22_02) |>
  rbind(bbdb_22_03) |>  rbind(bbdb_22_04) |>  rbind(bbdb_22_05) |>
  rbind(bbdb_22_06) |>  rbind(bbdb_22_07) |>  rbind(bbdb_22_08) |>
  rbind(bbdb_22_09) |>  rbind(bbdb_22_10) |>  rbind(bbdb_22_11) |>
  rbind(bbdb_22_12) |>  rbind(bbdb_22_13) |>  rbind(bbdb_22_14) |>
  rbind(bbdb_22_15) |>  rbind(bbdb_22_16) |>  rbind(bbdb_22_17) |>
  rbind(bbdb_22_18) |>  rbind(bbdb_22_19) |>  rbind(bbdb_22_20) |>
  rbind(bbdb_22_21) |>  rbind(bbdb_22_22) |>  rbind(bbdb_22_23) |>
  rbind(bbdb_22_24) |>  rbind(bbdb_22_25) |>  rbind(bbdb_22_26) 

rm(bbdb_22_00, bbdb_22_01, bbdb_22_02, bbdb_22_03, bbdb_22_04, bbdb_22_05,
   bbdb_22_06, bbdb_22_07, bbdb_22_08, bbdb_22_09, bbdb_22_10, bbdb_22_11,
   bbdb_22_12, bbdb_22_13, bbdb_22_14, bbdb_22_15, bbdb_22_16, bbdb_22_17,
   bbdb_22_18, bbdb_22_19, bbdb_22_20, bbdb_22_21, bbdb_22_22, bbdb_22_23,
   bbdb_22_24, bbdb_22_25, bbdb_22_26)

write.csv(bbdb_22_fast, "Data/bbdb_22_fast.csv", row.names = FALSE)

#merge & Save 2022 Fast Draft Times (Regular Season Data)
bbdb_22_mix <- bbdb_22_m_00 |>
  rbind(bbdb_22_m_01) |>  rbind(bbdb_22_m_01) |>  rbind(bbdb_22_m_02) |>
  rbind(bbdb_22_m_03) |>  rbind(bbdb_22_m_04) |>  rbind(bbdb_22_m_05) |>
  rbind(bbdb_22_m_06) |>  rbind(bbdb_22_m_07) |>  rbind(bbdb_22_m_08)

rm(bbdb_22_m_00, bbdb_22_m_01, bbdb_22_m_02, bbdb_22_m_03, bbdb_22_m_04, bbdb_22_m_05,
   bbdb_22_m_06, bbdb_22_m_07, bbdb_22_m_08)

write.csv(bbdb_22_mix, "Data/bbdb_22_mix.csv", row.names = FALSE)

#Merge & Save 2022 Post Season Data
bbdb_22_post <- bbdb_quarter22_00 |>
  rbind(bbdb_quarter22_01) |>
  rbind(bbdb_quarter22_02) |>
  rbind(bbdb_quarter22_03) |>
  rbind(bbdb_quarter22_04) |>
  rbind(bbdb_quarter22_05) |>
  rbind(bbdb_quarter22_06) |>
  rbind(bbdb_quarter22_07) |>
  rbind(bbdb_quarter22_08) |>
  rbind(bbdb_quarter22_09) |>
  rbind(bbdb_semi22) |>
  rbind(bbdb_final22)

rm(bbdb_quarter22_00, bbdb_quarter22_01, bbdb_quarter22_02, bbdb_quarter22_03, bbdb_quarter22_04,
   bbdb_quarter22_05, bbdb_quarter22_06, bbdb_quarter22_07, bbdb_quarter22_08, bbdb_quarter22_09,
   bbdb_semi22, bbdb_final22)

write.csv(bbdb_22_post, "Data/bbdb_22_post.csv", row.names = FALSE)