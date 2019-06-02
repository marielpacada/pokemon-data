#do any variables predict type?
#variable: weight 
types <- levels(pokemon$type1)
type_weight <- c()
for (i in types){
  t <- mean(subset(pokemon, type1 == i)$weight_kg)
  type_weight <- c(type_weight, t)
}
rm(i)
rm(t)
avg_weight <- data.frame(
  type = types,
  weight = type_weight,
  stringsAsFactors = FALSE
)
ggplot(avg_weight, aes(x = type, y = weight)) + geom_point()
#weight does not seem to predict type

#variabe: speed
types <- levels(pokemon$type1)
type_speed <- c()
for (i in types){
  t <- mean(subset(pokemon, type1 == i)$speed)
  type_speed <- c(type_speed, t)
}
rm(i)
rm(t)

avg_speed <- data.frame(
  type = types,
  speed = type_speed,
  stringsAsFactors = FALSE
)
ggplot(avg_speed, aes(x = type, y = speed)) + geom_point()
#speed does not seem to predict type

#variable: height
types <- levels(pokemon$type1)
type_height <- c()
for (i in types){
  t <- mean(subset(pokemon, type1 == i)$height_m)
  type_height <- c(type_height, t)
}
rm(i)
rm(t)

avg_height <- data.frame(
  type = types,
  height = type_height,
  stringsAsFactors = FALSE
)
ggplot(avg_height, aes(x = type, y = height)) + geom_point()

#variable: HP
types <- levels(pokemon$type1)
type_hp <- c()
for (i in types){
  t <- mean(subset(pokemon, type1 == i)$hp)
  type_hp <- c(type_hp, t)
}
rm(i)
rm(t)

avg_hp <- data.frame(
  type = types,
  hp = type_hp,
  stringsAsFactors = FALSE
)
ggplot(avg_hp, aes(x = type, y = hp)) + geom_point()

