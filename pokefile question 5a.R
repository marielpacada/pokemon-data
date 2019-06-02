#are pokemon getting faster?



#iterates through generation number, appends average speeds to vector 
all_speeds <- c()
for (i in 1:7){
  gen_speed <- mean(subset(pokemon, gen == i)$speed)
  all_speeds <- c(all_speeds, gen_speed)
}
rm(i)
rm(gen_speed)


#creates data frame for generation number and average speed
avg_speed_data <- data.frame(
  generation = 1:7,
  avg_speed = all_speeds
)

#plots average speed against generation
ggplot(avg_speed_data, aes(x = generation, y = avg_speed), color = fill) +
  geom_point()

#returns correlation coefficient and linear model
cor(avg_speed_data$generation, avg_speed_data$avg_speed)
lm(avg_speed ~ generation, data = avg_speed_data)
#very weak negative correlation


#not really 