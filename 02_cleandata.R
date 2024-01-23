#处理数据
toronto_poll_clean <-
  clean_names(toronto_poll) |>
  mutate(occupancy_date = ymd(occupancy_date)) |> 
  select(occupancy_date, occupied_beds)

head(toronto_poll_clean)

write_csv(
  x = toronto_poll_clean,
  file = "cleaned_toronto_poll.csv"
)
    