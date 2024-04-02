Rprof()

start <- Sys.time()

n <- 1000000
counter <- 0

for (i in 1:n) {
  #initial wins
  cubs <- 11
  brewers <- 12
  cardinals <- 15
  
  #cubs vs cards 6 games
  cubs_wins <- sum(sample(c(0,1),6, replace = T))
  cubs <- cubs + cubs_wins
  cardinals <- cardinals + 6 - cubs_wins
  
  #cubs other 3 games
  cubs <- cubs + sum(sample(c(0,1),3, replace = T))
  
  #brewers other 9 games
  brewers <- brewers + sum(sample(c(0,1),9, replace = T))
  
  counter <- counter + ifelse(cubs == cardinals & cubs == brewers,1,0)
  
}

print(counter/n)

print(Sys.time() - start)

Rprof(NULL)
summaryRprof()
