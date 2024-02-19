ratings <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2022/2022-01-25/ratings.csv')
details <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2022/2022-01-25/details.csv')

game.data <- merge(ratings[,-1], details[-1])
keep <- c(1, 2, 3, 4, 5, 6, 7, 13, 14, 16, 17, 19, 20, 24)
game.data <- game.data[, keep]
write.csv(x = game.data, file = "data/games.csv")
