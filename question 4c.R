pokemon <- read.csv(file.choose())
#are pokemon getting more resistant (higher defense + special defense)?



#iterates through generation number, creates subsets for each generation
gen_resist <- c()
for (i in 1:7){
  m <- mean(subset(pokemon, gen == i)$defense + subset(pokemon, gen == i)$sp_defense)
  gen_resist <- c(gen_resist, m)
}
rm(i)
rm(m)
#gen_resist is numeric vector contaning avg defense for each generation

#creates data frame for generation number and average defense
avg_resist_data <- data.frame(
  generation = 1:7,
  avg_resistance = gen_resist
)

#plots average speed against generation
ggplot(avg_resist_data, aes(x = generation, y = gen_resist), 
       color = fill) + geom_point()

#returns correlation coefficient and linear model
cor(avg_resist_data$generation, avg_resist_data$avg_resistance)
lm(avg_resistance ~ generation, data = avg_resist_data)
#moderately strong correlation



#kind of