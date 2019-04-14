#which type is the strongest overall? which is the weakest?



#appends 18 unique types in a vector
all_types <- c()
for (type in pokemon$type1){
  all_types <- c(all_types, type)
}
all_types <- unique(all_types)
rm(type)

#appends all base total averages in a vector (in order of all_types)
avgs <- c()
for (i in all_types){
  t <- mean(subset(pokemon, type1 == i)$base_total)
  avgs <- c(avgs, t)
}
rm(i)
rm(t)

#create data frame for type and base total average
type_avgs <- data.frame(
  type = all_types,
  base_total = avgs,
  stringsAsFactors = FALSE
)

#plots base_total against type
ggplot(type_avgs, aes(x = type, y = base_total)) + geom_point()



#dragon is the strongest, bug is the weakest