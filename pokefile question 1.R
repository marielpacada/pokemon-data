#pokemon BMI
pokemon_stats <- data.frame(
  name = pokemon$name, 
  height = pokemon$height_m,
  weight = pokemon$weight_kg
)
pokemon_stats <- pokemon_stats[-c(790),]
pokemon_stats$bmi <- pokemon_stats$weight / pokemon_stats$height**2
ggplot(pokemon_stats, aes(x = name, y = bmi))+ geom_point()



