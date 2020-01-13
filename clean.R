## clean up data vari

library(readr)
library(janitor)
library(dplyr)
arrests_for_clean <- read_csv('data/raw_arrests_data_2017_2018.csv')
#use clean_names from janitor to clean up variables names
arrests <- clean_names(arrests)
names(arrests)
arrests <- arrests %>% 
  select(report_id, arrest_date, arrest_time, arrest_type, age, sex, 
         race_cat, chg_grp_desc, latitude, longitude, zipcode, city_council_rep, patrol_div)
write_csv(arrests, "data/arrests_2017_2018.csv")
