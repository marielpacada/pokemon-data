#which pokemon type is the most abundant?



#plots count of each type
ggplot(pokemon, aes(x = type1)) + geom_bar()

#plots count of each type with color
ggplot(pokemon, aes(x = type1, fill = type1)) + geom_bar()



#water pokemon are most abundant