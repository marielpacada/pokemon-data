pokemon <- read.csv(file.choose())


#plots base_total against type
ggplot(pokemon, aes(x = type1, y = base_total)) + geom_point()

#plots speed against weight
ggplot(pokemon, aes(x = weight_kg, y = speed)) + geom_point()

#plots count of each type
ggplot(pokemon, aes(x = type1)) + geom_bar()

#plots count of each type with color
ggplot(pokemon, aes(x = type1, fill = type1)) + geom_bar()

#plots base_total against type
ggplot(pokemon, aes(x = type1, y = base_total)) + geom_point()

#plots base_total against pokedex
ggplot(pokemon, aes(x = pokedex, y = base_total)) + geom_point()

#plots base_total against pokedex
ggplot(flying, aes(x = name, y = base_total)) + geom_point()