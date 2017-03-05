# Set working directory to where csv file is located
setwd("~/lucSABR")

# Read the data
pitcher<- read.csv("~/lucSABR/Data/First 20 Pitchers.csv")
attach(pitcher)


result.data <- data.frame(player_name = NULL, pitch_seq = NULL)

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

result.data <- rbind(result.data, data.frame(player_name = pitcher$player_name, pitch_seq = seqRow))

result.data <- na.omit(result.data)
#Remove non-sequential Rows

result.Sum <- summary(result.data$pitch_seq)
#Create Summary

#Write file
setwd("~/lucSABR/Sequenced")
write.csv(result.Sum, "pitchSequenceSetSummary20_1.csv")
