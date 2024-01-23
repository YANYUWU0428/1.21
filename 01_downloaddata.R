library(knitr)
library(janitor)
library(lubridate)
library(opendatatoronto)
library(tidyverse)


#### Acquire ####
toronto_poll <-
  # Each package is associated with a unique id  found in the "For 
  # Developers" tab of the relevant page from Open Data Toronto
  # ###https://open.toronto.ca/dataset/daily-shelter-overnight-service-occupancy-capacity/
  list_package_resources("7bce9bf4-be5c-4261-af01-abfbc3510309") |>
  # Within that package, we are interested in the 2024 dataset
  filter(name == 
           "Polls Data.csv") |>
  # Having reduced the dataset to one row we can get the resource
  get_resource()

write_csv(
  x = toronto_poll,
  file = "toronto_poll.csv"
)

head(toronto_poll)
