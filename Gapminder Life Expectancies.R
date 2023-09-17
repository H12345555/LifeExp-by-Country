#install.packages(c("gapminder", "patchwork", "tidyverse", "gridExtra")) #installing multiple libraries can 
#be done in just one line of code by using c().

#INSTALLING LIBRARIES (LIKE 'IMPORT' FUNCTION IN PYTHON):
library(gapminder)
library(patchwork)
library(tidyverse)
library(gridExtra)

#COUNTRIES (USED FOR "means" and  AND "medians" CALCULATIONS. These objects are used for the 
#vertical lines on the density plots, and the text on the box plot describing the mean and median lifeExp
#The pipe operator means the table gapminder is piped into the next line of code (in this case the line
#that starts with filter()).
countries <- gapminder %>%
  filter(country %in% c("United States", "Mexico", "Canada")) 

#MEANS:
means <- countries %>%
  group_by(country) %>%
  summarize(means = mean(lifeExp))

#MEDIANS:
medians <- countries %>%
  group_by(country) %>%
  summarize(medians = median(lifeExp))

#STD. DEV:
stddevs <- countries %>% 
  group_by(country) %>% 
  summarize(stddevs = sd(lifeExp))

#DENSITY PLOT:
DENSITY <- countries %>% 
  ggplot(mapping = aes(x = lifeExp, fill = country)) +
  geom_density(alpha = 0.35)+
  #setting some labels for the plot:
  labs(
    #sets title for density plot:
    title = "Life Expectancy in North America",
    #subtitle
    subtitle = "1957-2007",
    #sets x-axis label:
    x = "Life Expectancy",
    #sets y-axis label:
    y = "Probability (%/100)",
    #sets text for (line) "color" key:
    color = "",
    #sets text for "fill" key:
    fill = "KEY"
  )+
  theme_dark()+
  xlim(40, 90)+
  ylim(0, 0.10)

#BOX PLOT!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!:
BOX <- countries %>%
  ggplot(mapping = aes(x = lifeExp, y = country, fill = country))+ 
  geom_boxplot(alpha = 0.35, show.legend = F)+
  #mean point and text + median text:
  geom_text(data = means, aes(x = means, y = country,
                              label = paste("Mean:", round(means, 2))), vjust = -1, hjust = 0.5, size = 4, color = "yellow") +
  geom_text(data = medians, aes(x = medians, y = country,
                                label = paste("Median:", round(medians, 2))), vjust = -2.3, hjust = 0.5, size = 4) +
  stat_summary(fun = mean, geom = "point", shape = 18, size = 5, show.legend = F, color = "yellow") +
  #labels:
  labs(
    title = "Life Expectancy by Country",
    subtitle = "1957-2007",
    x = "Life Expectancy",
    y = "",
    color = "",
    fill = "KEY"
  ) +
  scale_x_continuous(breaks = seq(50, 85, by = 5), labels = c("50", "55", "60", "65", "70", "75", "80", "85")) +
  theme_dark()

#SCATTER!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
SCATTER <- countries %>%
  ggplot(mapping = aes(x = year, y = lifeExp, color = country)) +
  geom_smooth(method = "auto", formula = y ~ x, size = 0.7, show.legend = F) +
  geom_point(shape = 22, fill = "black", alpha = 0.55, size = 2.5, show.legend = F) +
  facet_wrap(~country, nrow = 3, ncol = 1) +
  labs(
    title = "Mean Life Expectancy in North America",
    subtitle = "1952-2007",
    x = "Year",
    y = "Life Expectancy",
    color = "",
    fill = "KEY"
  ) +
  theme_dark() +
  ylim(50, 120) +
  scale_x_continuous(breaks = seq(1952, 2007, by = 5), labels = as.character(seq(1952, 2007, by = 5))) +
  geom_text(aes(label = round(lifeExp, 2)), vjust = -1, hjust = 0.5, size = 3.8, show.legend = F)

#DENSITY 2!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
DENSITY2 <- countries %>%
  ggplot(mapping = aes(x = lifeExp,fill = country))+
  geom_density(alpha = 0.65, show.legend = F)+
  #mean and median lines + text:
  geom_vline(data = means, aes(xintercept = means), color = "yellow", linetype = "dashed", alpha = 0.55, size = 0.6) +
  geom_vline(data = medians, aes(xintercept = medians), linetype = "dashed", alpha = 0.95, size = 0.6) +
  geom_text(data = means, aes(x = means, y = 0.075, alpha = 0.95, label =paste("Mean:", round(means, 2))),  color = "yellow", show.legend = F) +
  geom_text(data = medians, aes(x = medians, y = 0.05, alpha = 0.95, label =paste("Median:", round(medians, 2))), show.legend = F) +
  #facet wrapping:
  facet_wrap(~country, nrow = 3, ncol = 1)+
  #setting some labels for the plot:
  labs(
    #sets title for density plot:
    title = "Life Expectancy by Country",
    #subtitle
    subtitle = "1957-2007 (with mean and median lines)",
    #sets x-axis label:
    x = "Life Expectancy",
    #sets y-axis label:
    y = "Probability (%/100)",
    #sets text for (line) "color" key:
    color = "",
    #sets text for "fill" key:
    fill = "KEY"
  )+
  theme_dark()+
  xlim(40, 90) +
  ylim(0, 0.10)    # Set the y-axis limits

#BAR:!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
BAR <- countries %>%
  ggplot(mapping = aes(x = year, y = lifeExp, fill = country))+
  geom_bar(stat = "identity", position = position_dodge(width = 3.0), 
           width = 3, color = "black", linewidth = 0.1, alpha = 0.7)+
  theme_dark()+
  labs(#sets title for density plot:
    title = "Mean Life Expectancy in North America",
    #subtitle
    subtitle = "1957-2007",
    #sets x-axis label:
    x = "Year",
    #sets y-axis label:
    y = "Life Expectancy",
    #sets text for (line) "color" key:
    color = "",
    #sets text for "fill" key:
    fill = "KEY"
  )+
  #Customizes x-axis ticks (known as breaks, while the labels are the text that goes on each break.)
  scale_x_continuous(breaks = seq(50, 85, by = 5), labels = c("50", "55", "60", "65", "70", "75", "80", "85"))

#DISPLAYING ALL PLOTS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
LIFE<- grid.arrange(SCATTER, DENSITY2, BAR, BOX, nrow = 2, ncol =2)
print(LIFE)
LIFE2 <-grid.arrange(DENSITY, nrow = 2, ncol = 1)
print(LIFE2)

#ANOVA!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
ANOVA <- countries %>% 
  select(country, lifeExp) %>% 
  aov(lifeExp ~ country, data = .)
summary(ANOVA)

#DETERMINING STATISTICAL SIGNIFICANCE OF DIFFERENCES IN MEANS FOR EACH COUNTRY
CONF <- countries %>% 
  aov(lifeExp ~ country, data = .) %>% 
  TukeyHSD()
print(CONF)
plot(CONF)

#SAVING PLOTS AS .png FILES
ggsave("LIFE.png", plot = LIFE, width = 14, height = 8, units = "in")
ggsave("LIFE2.png", plot = LIFE2, width = 8, height = 6, units = "in")
