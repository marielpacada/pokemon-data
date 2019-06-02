#are pokemon getting stronger (higher attack + special attack)?


#iterates through generation number, creates subsets for each generation
gen_attack <- c()
for (i in 1:7){
  m <- mean(subset(pokemon, gen == i)$attack + subset(pokemon, gen == i)$sp_attack)
  gen_attack <- c(gen_attack, m)
}
rm(i)
rm(m)
#gen_attack is numeric vector contaning avg attack for each generation

#creates data frame for generation number and average attack
avg_strength_data <- data.frame(
  generation = 1:7,
  avg_strength = gen_attack
)

#plots average speed against generation
ggplot(avg_strength_data, aes(x = generation, y = gen_attack), 
       color = fill) + geom_point()

#returns correlation coefficient and linear model
cor(avg_strength_data$generation, avg_strength_data$avg_strength)
lm(avg_strength ~ generation, data = avg_strength_data)
#strong positive correlation



#yeah!