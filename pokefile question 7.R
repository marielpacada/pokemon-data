#is one type more likely to be a legendary than another?

types <- c(levels(pokemon$type1)) #types in alphabetical order
legend_types <- c() #creates empty vector
for (i in pokemon$pokedex){ #iterates through all pokemon
  if (pokemon$is_legend[i] == 1){ #checks if legendary 
    legend_types <- c(legend_types, types[pokemon$type1[i]])
  } #type1 returns integer
} #uses type1 as index for types in order to return character vector
rm(i)
counts <- as.data.frame(legend_types) #makes vector into dataframe

#plots tyoes that are legends against count
ggplot(counts, aes(x = legend_types, fill = legend_types)) + geom_bar()

x <- unique(legend_types)
setdiff(types, x)
#there are no fighting or poison legendaries