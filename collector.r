# Set working directory to where csv file is located
setwd("~/lucSABR")

# Read the data
pitcher<- read.csv("~/lucSABR/Data/Adam Warren.csv")
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

CUCU <- subset(result.data, result.data$pitch_seq == "CU|CU")

#Create subsets from top 15 league sequence


#Change directory to sequencing folder
setwd("~/lucSABR/Sequenced")

#Write file
write.csv(result.data, "AdamWarren_seq.csv")
