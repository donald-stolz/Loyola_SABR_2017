# Set working directory to where csv file is located
setwd("~/lucSABR-master/")

# Read the data
pitcher<- read.csv("~/lucSABR-master/Data/Casey Fien.csv")

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

result.data <- data.frame(player_name = pitcher$player_name, batter = pitcher$batter, pitch_seq = seqRow, description = pitcher$description, hit_speed = pitcher$hit_speed, hit_angle = pitcher$hit_angle)

result.data <- na.omit(result.data)
#Remove non-sequential Rows

#Next step will remove unesscary levels
levels(result.data$description)

result.data$description[grep("Ball", result.data$description)] <- NA
result.data$description[grep("Ball In Dirt", result.data$description)] <- NA
result.data$description[grep("Foul (Runner Going)", result.data$description)] <- "Foul"
result.data$description[grep("Foul Bunt", result.data$description)] <- "Foul"
result.data$description[grep("Foul Tip", result.data$description)] <- "Foul"
result.data$description[grep("Intent Ball", result.data$description)] <- NA
result.data$description[grep("Swinging Strike (Blocked)", result.data$description)] <- "Swinging Strike"

result.data <- na.omit(result.data)
#Remove unused levels

#Create subsets from top 15 league sequence


#Change directory to sequencing folder
setwd("~/lucSABR-master/newSequence")

#Write file
write.csv(result.data, "AdamWarren_seq.csv")
