install.packages('sportyR')
library(sportyR)
library(dplyr)
pacman::p_load(showtext, jpeg, png)
library(ggplot2)
wk10 = read.csv('week10.csv')
plays = read.csv('plays.csv')
games = read.csv('games.csv')
wk8 = read.csv('week8.csv')
unique(plays$playType)
str(plays$playType)
wk8teams = left_join(wk8,
                      games %>% select(gameId,homeTeamAbbr,visitorTeamAbbr),
                      by = 'gameId')

wk8teams =wk8teams %>% 
  mutate(homeTeamAbbr = as.character(homeTeamAbbr), visitorTeamAbbr = as.character(visitorTeamAbbr),
         tmplay =ifelse(wk8teams$team == "home", wk8teams$homeTeamAbbr, wk8teams$visitorTeamAbbr))


ZErtz= wk8teams %>% 
  filter(displayName == "Zach Ertz")

wr1 =geom_football(league= "NFL")+
  annotation_raster(readPNG("NFL Logo.png"),
                    xmin = 55, xmax = 65, 
                    ymin = 22, ymax = 32, interpolate = T)+
  geom_density_2d_filled(ZErtz, mapping = aes(x,y),alpha=.80,contour_var = "ndensity")+
  theme(legend.position = "none")
wr1

NAgholor = wk8teams %>% 
  filter(displayName == "Nelson Agholor")

wr2 =geom_football(league= "NFL")+
  annotation_raster(readPNG("NFL Logo.png"),
                    xmin = 55, xmax = 65, 
                    ymin = 22, ymax = 32, interpolate = T)+
  geom_density_2d_filled(NAgholor, mapping = aes(x,y),alpha=.80,contour_var = "ndensity")+
  theme(legend.position = "none")
wr2

AJeffery = wk8teams %>% 
  filter(displayName == "Alshon Jeffery")

wr3 =geom_football(league= "NFL")+
  annotation_raster(readPNG("NFL Logo.png"),
                    xmin = 55, xmax = 65, 
                    ymin = 22, ymax = 32, interpolate = T)+
  geom_density_2d_filled(AJeffery, mapping = aes(x,y),alpha=.80,contour_var = "ndensity")+
  theme(legend.position = "none")
wr3

JMatthews = wk8teams %>% 
  filter(displayName == "Jordan Matthews")

wr4 =geom_football(league= "NFL")+
  annotation_raster(readPNG("NFL Logo.png"),
                    xmin = 55, xmax = 65, 
                    ymin = 22, ymax = 32, interpolate = T)+
  geom_density_2d_filled(JMatthews, mapping = aes(x,y),alpha=.80,contour_var = "ndensity")+
  theme(legend.position = "none")
wr4

WSmallwood = wk8teams %>% 
  filter(displayName == "Wendell Smallwood")

rb1 =geom_football(league= "NFL")+
  annotation_raster(readPNG("NFL Logo.png"),
                    xmin = 55, xmax = 65, 
                    ymin = 22, ymax = 32, interpolate = T)+
  geom_density_2d_filled(WSmallwood, mapping = aes(x,y),alpha=.80,contour_var = "ndensity")+
  theme(legend.position = "none")
rb1

#Jay Ajayi was injured Week 8 and didn't play
JAjayi = wk8teams %>% 
  filter(displayName == "Jay Ajayi")

rb2 =geom_football(league= "NFL")+
  annotation_raster(readPNG("NFL Logo.png"),
                    xmin = 55, xmax = 65, 
                    ymin = 22, ymax = 32, interpolate = T)+
  geom_density_2d_filled(JAjayi, mapping = aes(x,y),alpha=.80,contour_var = "ndensity")+
  theme(legend.position = "none")
rb2

CCLement = wk8teams %>% 
  filter(displayName == "Corey Clement")

rb3 =geom_football(league= "NFL")+
  annotation_raster(readPNG("NFL Logo.png"),
                    xmin = 55, xmax = 65, 
                    ymin = 22, ymax = 32, interpolate = T)+
  geom_density_2d_filled(CCLement, mapping = aes(x,y),alpha=.80,contour_var = "ndensity")+
  theme(legend.position = "none")
rb3

JAdams = wk8teams %>% 
  filter(displayName == "Josh Adams")


rb4 =geom_football(league= "NFL")+
  annotation_raster(readPNG("NFL Logo.png"),
                    xmin = 55, xmax = 65, 
                    ymin = 22, ymax = 32, interpolate = T)+
  geom_density_2d_filled(JAdams, mapping = aes(x,y),alpha=.80,contour_var = "ndensity")+
  theme(legend.position = "none")
rb4
