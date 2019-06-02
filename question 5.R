#is one type more likely to be a legendary than another?



types <- c(levels(pokemon$type1)) #types in alphabetical order
legend_types <- c() #creates empty vector
for (i in pokemon$pokedex){ #iterates through all pokemon
  if (pokemon$is_legend[i] == 1){ #checks if legendary 
    legend_types <- c(legend_types, types[pokemon$type1[i]]) #type1 returns integer
  } #uses type1 as index for types in order to return character vector
} 
rm(i)

setdiff(types, unique(legend_types)) #there are no fighting or poison legendaries
legend_counts <- as.data.frame(lapply(as.data.frame(legend_types), count),
                               stringsAsFactors = FALSE)
colnames(legend_counts) <- c("type", "freq") #rename column names
legend_counts$type <- as.character(legend_counts$type) #un-factorize type
legend_counts[nrow(legend_counts) + 1,] <- c("fighting", 0) #add new row with 0 frequency
legend_counts[nrow(legend_counts) + 1,] <- c("poison", 0)
legend_counts$type <- as.factor(legend_counts$type) #re-factorize type
legend_counts$freq <- as.integer(legend_counts$freq) #make frequency vector an integer vector

#plots types that are legends against count
ggplot(legend_counts, aes(x = type, y = freq)) + geom_point()
#finds which legendary type is most abundant and its frequency
legend_counts[legend_counts$freq == max(legend_counts$freq),]
#finds what part of the total legendary pokemon is the most abundant (pyschic)
legend_counts[13, "freq"] / sum(legend_counts$freq)



#yes! almost a fourth of the legendary pokemon are psychic!