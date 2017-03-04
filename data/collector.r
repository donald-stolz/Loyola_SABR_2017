# Set working directory to where csv file is located
setwd("~/lucSABR")

# Read the data
pitcherData<- read.csv("~/lucSABR/Data/pitchers.csv")
attach(pitcherData)


prevPitch <- c("x", pitcherData$pitchType)

pSeqtable <- data.frame(PITCH_SEQUENCE = prevPitch+pitcherData$pitchType, start_speed = pitcherData$start_speed,
	player_name = pitcherData$player_name, hit_speed = pitcherData$hit_speed, hit_angle = pitcherData$hit_angle,
	type = pitcherData$type)
#Creates new data table that adds the previous
detach(pitcherData)

attach(pSeqtable)

sort(PITCH_SEQUENCE)

#Calculate Data for each sequence
