#do any variables predict type?


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


#weight does not seem to