Rprof()

start <- Sys.time()

n <- 1000000

# Store game outcomes in matrix and sum across rows
cubs_wins_vs_cards <- rowSums(matrix(sample(c(0, 1), 6 * n, replace = TRUE), ncol = 6))
cubs_other_games <- rowSums(matrix(sample(c(0, 1), 3 * n, replace = TRUE), ncol = 3))
brewers_other_games <- rowSums(matrix(sample(c(0, 1), 9 * n, replace = TRUE), ncol = 9))

# Calculate total wins for each team
cubs_total_wins <- 11 + cubs_wins_vs_cards + cubs_other_games
brewers_total_wins <- 12 + brewers_other_games
cardinals_total_wins <- 21 - cubs_wins_vs_cards  # 15 wins + (6 - cubs wins over cards)

# Counting up equal cases
counter <- sum(cubs_total_wins == brewers_total_wins & cubs_total_wins == cardinals_total_wins)

print(counter/n)

print(Sys.time() - start)

Rprof(NULL)
summaryRprof()
