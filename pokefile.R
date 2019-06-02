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

#creates subsets for each type (18 types)
bug <- subset(pokemon, type1 == "bug")
dark <- subset(pokemon, type1 == "dark")
dragon <- subset(pokemon, type1 == "dragon")
electric <- subset(pokemon, type1 == "electric")
fairy <- subset(pokemon, type1 == "fairy")
fighting <- subset(pokemon, type1 == "fighting")
fire <- subset(pokemon, type1 == "fire")
flying <- subset(pokemon, type1 == "flying")
ghost <- subset(pokemon, type1 == "ghost")
grass <- subset(pokemon, type1 == "grass")
ground <- subset(pokemon, type1 == "ground")
ice <- subset(pokemon, type1 == "ice")
normal <- subset(pokemon, type1 == "normal")
poison <- subset(pokemon, type1 == "poison")
psychic <- subset(pokemon, type1 == "psychic")
rock <- subset(pokemon, type1 == "rock")
steel <- subset(pokemon, type1 == "steel")
water <- subset(pokemon, type1 == "water")

#finds average base_total for each type
bug_avg <- mean(bug$base_total)
dark_avg <- mean(dark$base_total)
dragon_avg <- mean(dragon$base_total)
electric_avg <- mean(electric$base_total)
fairy_avg <- mean(fairy$base_total)
fighting_avg <- mean(fighting$base_total)
fire_avg <- mean(fire$base_total)
flying_avg <- mean(flying$base_total)
ghost_avg <- mean(ghost$base_total)
grass_avg <- mean(grass$base_total)
ground_avg <- mean(ground$base_total)
ice_avg <- mean(ice$base_total)
normal_avg <- mean(normal$base_total)
poison_avg <- mean(poison$base_total)
psychic_avg <- mean(psychic$base_total)
rock_avg <- mean(rock$base_total)
steel_avg <- mean(steel$base_total)
water_avg <- mean(water$base_total)
