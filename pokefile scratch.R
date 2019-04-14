#creates subsets for each type
for (i in all_types){
  assign(i, subset(pokemon, type1 == i))
}
rm(i)
rm(t)

#computes and assigns average to each type (without creating subset first)
for (i in types){
  t <- mean((assign(i, subset(pokemon, type1 == i)))$base_total)
  assign(i, t)
}
rm(i)
rm(t)

#creates empty vectors for each generation speed
for (n in 1:7){
  assign(paste("speed", n, sep = ""), c())
}






#appends average speeds (for each generation) to a vector 
all_speeds <- c()
for (i in 1:7){
  gen_speed <- mean(assign(paste(toString(i), sep = ""), 
               subset(pokemon, gen == i, select = speed))$speed)
  all_speeds <- c(all_speeds, gen_speed)
}
rm(i)
rm(gen_speed)

avg_speed_data <- data.frame(
  generation = 1:7,
  average_speed = all_speeds
)

#plots average speed against generation
ggplot(avg_speed_data, aes(x = generation, y = average_speed), color = fill) + 
  geom_point()




lm(avg_resistance ~ generation, data = avg_resist_data)
cor(avg_resist_data$generation, avg_resist_data$avg_resistance)






for (i in 1:7){
  assign(paste("gen", i, sep = ""), subset(pokemon, gen == i,
                                           select = speed))
}


     