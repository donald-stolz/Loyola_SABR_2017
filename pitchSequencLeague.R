# Set working directory to where csv file is located
setwd("~/lucSABR")

# Read the data
pitcher<- read.csv("~/lucSABR/Data/all_pitchers.csv")
attach(pitcher)


result.data <- data.frame(player_name = NULL, pitch_type1 = NULL, pitch_type2 = NULL, pitch_seq = NULL,batter = NULL, description = NULL, hit_speed = NULL, hit_angle = NULL)

numPitchSeason <- length(row(pitcher[1]))
q <- 2
seqRow <- NA
#Mark initial pitch as not part of a sequence

while(q <= numPitchSeason)
{
  if(pitcher$batter[q] == pitcher$batter[q-1])
  {
    seqPitch <- paste(pitcher$pitch_type[q -1], pitcher$pitch_type[q], sep = "|")
    seqRow <- c(seqRow, seqPitch)
    #Sequence the pitches. Combine
  }
  else
  {
    seqRow <- c(seqRow, NA)
    #Mark pitches that are not part of a sequence
  }
  
  q <- q + 1
}

result.data <- rbind(result.data, data.frame(player_name = pitcher$player_name, batter = pitcher$batter, pitch_seq = seqRow, description = pitcher$description, hit_speed = pitcher$hit_speed, hit_angle = pitcher$hit_angle))

result.data <- na.omit(result.data)
#Remove non-sequential Rows

#Next step will remove unesscary levels
levels(result.data$description)

levels(result.data$description) <- c(NA, NA, "Strike", "Foul", "Foul", "Foul", "Foul", NA, "Hit","Hit", "Hit", NA, NA, "Swinging Strike", "Swinging Strike")
#Distinguish useful letters

result.data <- na.omit(result.data)
#Remove unused levels
result.Sum <- summary(result.data$pitch_seq)
#Create Summary

#Write file
setwd("~/lucSABR/Sequenced")
write.csv(result.Sum, "pitchSequenceSetSummary.csv")
