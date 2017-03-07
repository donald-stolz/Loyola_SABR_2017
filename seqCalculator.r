setwd("~/lucSABR-master")
pitcher <- read.csv("~/lucSABR-master/newSequence/Casey Fien_seq.csv",stringsAsFactors = F)

pitcher$description[grep("Swinging Strike", pitcher$description)] <- "ss"

pitcher<-pitcher[!(as.character(pitcher$description)=="Strike"),]

#Gathering data for first sequence
FFFF.pitcher.pair <- subset(pitcher,pitcher$pitch_seq=="FF|FF")

	hit.speed <- mean(as.numeric(as.character(FFFF.pitcher.pair$hit_speed)),na.rm = T)

	hit.angle <- mean(as.numeric(as.character(FFFF.pitcher.pair$hit_angle)),na.rm = T)

	angle <- na.omit(as.numeric(FFFF.pitcher.pair$hit_angle))

	ground <- length(which(angle <10))/length(angle)

	line.drive <- length(which(angle>= 10 & angle<= 25))/length(angle)

	fly.ball <- length(which(angle> 25 & angle<= 60.0))/length(angle)

	pop.up <- length(which(angle> 60.0))/length(angle)

	swinging.strike <- length(which(FFFF.pitcher.pair$description == "ss"))/nrow(FFFF.pitcher.pair)

	FFFF.pitcher.pair$description[grep("Foul",FFFF.pitcher.pair$description)] <- "ss"

	strike.rate <- length(which(FFFF.pitcher.pair$description=="ss"))/nrow(FFFF.pitcher.pair)

	#Initial column sets
	col.pitch.seq <- c("FF|FF")
	col.hit.speed <- c(hit.speed)
	col.hit.angle <- c(hit.angle)
	col.ground <- c(ground)
	col.line.drive <- c(line.drive)
	col.fly.ball <- c(fly.ball)
	col.pop.up <- c(pop.up)
	col.swinging.strike <- c(swinging.strike)
	col.strike.rate <- c(strike.rate)

	#Since we will be using 26 different pitch sequences, we will need to remove them as we go in order to save space
	remove(FFFF.pitcher.pair)

CHCH.pitcher.pair <- subset(pitcher,pitcher$pitch_seq=="CH|CH")

	hit.speed <- mean(as.numeric(as.character(CHCH.pitcher.pair$hit_speed)),na.rm = T)

	hit.angle <- mean(as.numeric(as.character(CHCH.pitcher.pair$hit_angle)),na.rm = T)

	angle <- na.omit(as.numeric(CHCH.pitcher.pair$hit_angle))

	ground <- length(which(angle <10))/length(angle)

	line.drive <- length(which(angle>= 10 & angle<= 25))/length(angle)

	fly.ball <- length(which(angle> 25 & angle<= 60.0))/length(angle)

	pop.up <- length(which(angle> 60.0))/length(angle)

	swinging.strike <- length(which(CHCH.pitcher.pair$description == "ss"))/nrow(CHCH.pitcher.pair)

	CHCH.pitcher.pair$description[grep("Foul",CHCH.pitcher.pair$description)] <- "ss"

	strike.rate <- length(which(CHCH.pitcher.pair$description=="ss"))/nrow(CHCH.pitcher.pair)

	#All subsets after initial column sets
	col.pitch.seq <- c(col.pitch.seq, "CH|CH")
	col.hit.speed <- c(col.hit.speed, hit.speed)
	col.hit.angle <- c(col.hit.angle, hit.angle)
	col.ground <- c(col.ground, ground)
	col.line.drive <- c(col.line.drive, line.drive)
	col.fly.ball <- c(col.fly.ball, fly.ball)
	col.pop.up <- c(col.pop.up, pop.up)
	col.swinging.strike <- c(col.swinging.strike, swinging.strike)
	col.strike.rate <- c(col.strike.rate, strike.rate)

#Since we will be using 26 different pitch sequences, we will need to remove them as we go in order to save space
remove(CHCH.pitcher.pair)

#CUFF Sequence
CUFF.pitcher.pair <- subset(pitcher,pitcher$pitch_seq=="CU|FF")

	hit.speed <- mean(as.numeric(as.character(CUFF.pitcher.pair$hit_speed)),na.rm = T)

	hit.angle <- mean(as.numeric(as.character(CUFF.pitcher.pair$hit_angle)),na.rm = T)

	angle <- na.omit(as.numeric(CUFF.pitcher.pair$hit_angle))

	ground <- length(which(angle <10))/length(angle)

	line.drive <- length(which(angle>= 10 & angle<= 25))/length(angle)

	fly.ball <- length(which(angle> 25 & angle<= 60.0))/length(angle)

	pop.up <- length(which(angle> 60.0))/length(angle)

	swinging.strike <- length(which(CUFF.pitcher.pair$description == "ss"))/nrow(CUFF.pitcher.pair)

	CUFF.pitcher.pair$description[grep("Foul",CUFF.pitcher.pair$description)] <- "ss"

	strike.rate <- length(which(CUFF.pitcher.pair$description=="ss"))/nrow(CUFF.pitcher.pair)

	#All subsets after initial column sets
	col.pitch.seq <- c(col.pitch.seq, "CU|FF")
	col.hit.speed <- c(col.hit.speed, hit.speed)
	col.hit.angle <- c(col.hit.angle, hit.angle)
	col.ground <- c(col.ground, ground)
	col.line.drive <- c(col.line.drive, line.drive)
	col.fly.ball <- c(col.fly.ball, fly.ball)
	col.pop.up <- c(col.pop.up, pop.up)
	col.swinging.strike <- c(col.swinging.strike, swinging.strike)
	col.strike.rate <- c(col.strike.rate, strike.rate)

#Since we will be using 26 different pitch sequences, we will need to remove them as we go in order to save space
remove(CUFF.pitcher.pair)

#CUFT sequence
CUFT.pitcher.pair <- subset(pitcher,pitcher$pitch_seq=="CU|FT")

	hit.speed <- mean(as.numeric(as.character(CUFT.pitcher.pair$hit_speed)),na.rm = T)

	hit.angle <- mean(as.numeric(as.character(CUFT.pitcher.pair$hit_angle)),na.rm = T)

	angle <- na.omit(as.numeric(CUFT.pitcher.pair$hit_angle))

	ground <- length(which(angle <10))/length(angle)

	line.drive <- length(which(angle>= 10 & angle<= 25))/length(angle)

	fly.ball <- length(which(angle> 25 & angle<= 60.0))/length(angle)

	pop.up <- length(which(angle> 60.0))/length(angle)

	swinging.strike <- length(which(CUFT.pitcher.pair$description == "ss"))/nrow(CUFT.pitcher.pair)

	CUFT.pitcher.pair$description[grep("Foul",CUFT.pitcher.pair$description)] <- "ss"

	strike.rate <- length(which(CUFT.pitcher.pair$description=="ss"))/nrow(CUFT.pitcher.pair)

	#All subsets after initial column sets
	col.pitch.seq <- c(col.pitch.seq, "CU|FT")
	col.hit.speed <- c(col.hit.speed, hit.speed)
	col.hit.angle <- c(col.hit.angle, hit.angle)
	col.ground <- c(col.ground, ground)
	col.line.drive <- c(col.line.drive, line.drive)
	col.fly.ball <- c(col.fly.ball, fly.ball)
	col.pop.up <- c(col.pop.up, pop.up)
	col.swinging.strike <- c(col.swinging.strike, swinging.strike)
	col.strike.rate <- c(col.strike.rate, strike.rate)

#Since we will be using 26 different pitch sequences, we will need to remove them as we go in order to save space
remove(CUFT.pitcher.pair)

#FFCH sequence
FFCH.pitcher.pair <- subset(pitcher,pitcher$pitch_seq=="FF|CH")

	hit.speed <- mean(as.numeric(as.character(FFCH.pitcher.pair$hit_speed)),na.rm = T)

	hit.angle <- mean(as.numeric(as.character(FFCH.pitcher.pair$hit_angle)),na.rm = T)

	angle <- na.omit(as.numeric(FFCH.pitcher.pair$hit_angle))

	ground <- length(which(angle <10))/length(angle)

	line.drive <- length(which(angle>= 10 & angle<= 25))/length(angle)

	fly.ball <- length(which(angle> 25 & angle<= 60.0))/length(angle)

	pop.up <- length(which(angle> 60.0))/length(angle)

	swinging.strike <- length(which(FFCH.pitcher.pair$description == "ss"))/nrow(FFCH.pitcher.pair)

	FFCH.pitcher.pair$description[grep("Foul",FFCH.pitcher.pair$description)] <- "ss"

	strike.rate <- length(which(FFCH.pitcher.pair$description=="ss"))/nrow(FFCH.pitcher.pair)

	#All subsets after initial column sets
	col.pitch.seq <- c(col.pitch.seq, "FF|CH")
	col.hit.speed <- c(col.hit.speed, hit.speed)
	col.hit.angle <- c(col.hit.angle, hit.angle)
	col.ground <- c(col.ground, ground)
	col.line.drive <- c(col.line.drive, line.drive)
	col.fly.ball <- c(col.fly.ball, fly.ball)
	col.pop.up <- c(col.pop.up, pop.up)
	col.swinging.strike <- c(col.swinging.strike, swinging.strike)
	col.strike.rate <- c(col.strike.rate, strike.rate)

#Since we will be using 26 different pitch sequences, we will need to remove them as we go in order to save space
remove(FFCH.pitcher.pair)

#FFCU sequence
FFCU.pitcher.pair <- subset(pitcher,pitcher$pitch_seq=="FF|CU")

	hit.speed <- mean(as.numeric(as.character(FFCU.pitcher.pair$hit_speed)),na.rm = T)

	hit.angle <- mean(as.numeric(as.character(FFCU.pitcher.pair$hit_angle)),na.rm = T)

	angle <- na.omit(as.numeric(FFCU.pitcher.pair$hit_angle))

	ground <- length(which(angle <10))/length(angle)

	line.drive <- length(which(angle>= 10 & angle<= 25))/length(angle)

	fly.ball <- length(which(angle> 25 & angle<= 60.0))/length(angle)

	pop.up <- length(which(angle> 60.0))/length(angle)

	swinging.strike <- length(which(FFCU.pitcher.pair$description == "ss"))/nrow(FFCU.pitcher.pair)

	FFCU.pitcher.pair$description[grep("Foul",FFCU.pitcher.pair$description)] <- "ss"

	strike.rate <- length(which(FFCU.pitcher.pair$description=="ss"))/nrow(FFCU.pitcher.pair)

	#All subsets after initial column sets
	col.pitch.seq <- c(col.pitch.seq, "FF|CU")
	col.hit.speed <- c(col.hit.speed, hit.speed)
	col.hit.angle <- c(col.hit.angle, hit.angle)
	col.ground <- c(col.ground, ground)
	col.line.drive <- c(col.line.drive, line.drive)
	col.fly.ball <- c(col.fly.ball, fly.ball)
	col.pop.up <- c(col.pop.up, pop.up)
	col.swinging.strike <- c(col.swinging.strike, swinging.strike)
	col.strike.rate <- c(col.strike.rate, strike.rate)

#Since we will be using 26 different pitch sequences, we will need to remove them as we go in order to save space
remove(FFCU.pitcher.pair)

#SQ: CH|FF
CHFF.pitcher.pair <- subset(pitcher,pitcher$pitch_seq=="CH|FF") 

	hit.speed <- mean(as.numeric(as.character(CHFF.pitcher.pair$hit_speed)),na.rm = T)

	hit.angle <- mean(as.numeric(as.character(CHFF.pitcher.pair$hit_angle)),na.rm = T)

	angle <- na.omit(as.numeric(CHFF.pitcher.pair$hit_angle))

	ground <- length(which(angle <10))/length(angle)

	line.drive <- length(which(angle>= 10 & angle<= 25))/length(angle)

	fly.ball <- length(which(angle> 25 & angle<= 60.0))/length(angle)

	pop.up <- length(which(angle> 60.0))/length(angle)

	swinging.strike <- length(which(CHFF.pitcher.pair$description == "ss"))/nrow(CHFF.pitcher.pair)

	CHFF.pitcher.pair$description[grep("Foul",CHFF.pitcher.pair$description)] <- "ss"

	strike.rate <- length(which(CHFF.pitcher.pair$description=="ss"))/nrow(CHFF.pitcher.pair)

	#All subsets after initial column sets
	col.pitch.seq <- c(col.pitch.seq, "CH|FF") 
	col.hit.speed <- c(col.hit.speed, hit.speed)
	col.hit.angle <- c(col.hit.angle, hit.angle)
	col.ground <- c(col.ground, ground)
	col.line.drive <- c(col.line.drive, line.drive)
	col.fly.ball <- c(col.fly.ball, fly.ball)
	col.pop.up <- c(col.pop.up, pop.up)
	col.swinging.strike <- c(col.swinging.strike, swinging.strike)
	col.strike.rate <- c(col.strike.rate, strike.rate)

	#Since we will be using 26 different pitch sequences, we will need to remove them as we go in order to save space
remove(CHFF.pitcher.pair)

#SQ: CH|FT
CHFT.pitcher.pair <- subset(pitcher,pitcher$pitch_seq=="CH|FT")

	hit.speed <- mean(as.numeric(as.character(CHFT.pitcher.pair$hit_speed)),na.rm = T)

	hit.angle <- mean(as.numeric(as.character(CHFT.pitcher.pair$hit_angle)),na.rm = T)

	angle <- na.omit(as.numeric(CHFT.pitcher.pair$hit_angle))

	ground <- length(which(angle <10))/length(angle)

	line.drive <- length(which(angle>= 10 & angle<= 25))/length(angle)

	fly.ball <- length(which(angle> 25 & angle<= 60.0))/length(angle)

	pop.up <- length(which(angle> 60.0))/length(angle)

	swinging.strike <- length(which(CHFT.pitcher.pair$description == "ss"))/nrow(CHFT.pitcher.pair)

	CHFT.pitcher.pair$description[grep("Foul",CHFT.pitcher.pair$description)] <- "ss"

	strike.rate <- length(which(CHFT.pitcher.pair$description=="ss"))/nrow(CHFT.pitcher.pair)

	#All subsets after initial column sets
	col.pitch.seq <- c(col.pitch.seq, "CH|FT") 
	col.hit.speed <- c(col.hit.speed, hit.speed)
	col.hit.angle <- c(col.hit.angle, hit.angle)
	col.ground <- c(col.ground, ground)
	col.line.drive <- c(col.line.drive, line.drive)
	col.fly.ball <- c(col.fly.ball, fly.ball)
	col.pop.up <- c(col.pop.up, pop.up)
	col.swinging.strike <- c(col.swinging.strike, swinging.strike)
	col.strike.rate <- c(col.strike.rate, strike.rate)

	#Since we will be using 26 different pitch sequences, we will need to remove them as we go in order to save space
remove(CHFT.pitcher.pair)

#SQ: CU|CH  
CUCH.pitcher.pair <- subset(pitcher,pitcher$pitch_seq=="CU|CH")

	hit.speed <- mean(as.numeric(as.character(CUCH.pitcher.pair$hit_speed)),na.rm = T)

	hit.angle <- mean(as.numeric(as.character(CUCH.pitcher.pair$hit_angle)),na.rm = T)

	angle <- na.omit(as.numeric(CUCH.pitcher.pair$hit_angle))

	ground <- length(which(angle <10))/length(angle)

	line.drive <- length(which(angle>= 10 & angle<= 25))/length(angle)

	fly.ball <- length(which(angle> 25 & angle<= 60.0))/length(angle)

	pop.up <- length(which(angle> 60.0))/length(angle)

	swinging.strike <- length(which(CUCH.pitcher.pair$description == "ss"))/nrow(CUCH.pitcher.pair)

	CUCH.pitcher.pair$description[grep("Foul",CUCH.pitcher.pair$description)] <- "ss"

	strike.rate <- length(which(CUCH.pitcher.pair$description=="ss"))/nrow(CUCH.pitcher.pair)

	#All subsets after initial column sets
	col.pitch.seq <- c(col.pitch.seq, "CU|CH") 
	col.hit.speed <- c(col.hit.speed, hit.speed)
	col.hit.angle <- c(col.hit.angle, hit.angle)
	col.ground <- c(col.ground, ground)
	col.line.drive <- c(col.line.drive, line.drive)
	col.fly.ball <- c(col.fly.ball, fly.ball)
	col.pop.up <- c(col.pop.up, pop.up)
	col.swinging.strike <- c(col.swinging.strike, swinging.strike)
	col.strike.rate <- c(col.strike.rate, strike.rate)

#Since we will be using 26 different pitch sequences, we will need to remove them as we go in order to save space
remove(CUCH.pitcher.pair)

#SQ: CU|CU

CUCU.pitcher.pair <- subset(pitcher,pitcher$pitch_seq=="CU|CU")

	hit.speed <- mean(as.numeric(as.character(CUCU.pitcher.pair$hit_speed)),na.rm = T)

	hit.angle <- mean(as.numeric(as.character(CUCU.pitcher.pair$hit_angle)),na.rm = T)

	angle <- na.omit(as.numeric(CUCU.pitcher.pair$hit_angle))

	ground <- length(which(angle <10))/length(angle)

	line.drive <- length(which(angle>= 10 & angle<= 25))/length(angle)

	fly.ball <- length(which(angle> 25 & angle<= 60.0))/length(angle)

	pop.up <- length(which(angle> 60.0))/length(angle)

	swinging.strike <- length(which(CUCU.pitcher.pair$description == "ss"))/nrow(CUCU.pitcher.pair)

	CUCU.pitcher.pair$description[grep("Foul",CUCU.pitcher.pair$description)] <- "ss"

	strike.rate <- length(which(CUCU.pitcher.pair$description=="ss"))/nrow(CUCU.pitcher.pair)

	#All subsets after initial column sets
	col.pitch.seq <- c(col.pitch.seq, "CU|CU") 
	col.hit.speed <- c(col.hit.speed, hit.speed)
	col.hit.angle <- c(col.hit.angle, hit.angle)
	col.ground <- c(col.ground, ground)
	col.line.drive <- c(col.line.drive, line.drive)
	col.fly.ball <- c(col.fly.ball, fly.ball)
	col.pop.up <- c(col.pop.up, pop.up)
	col.swinging.strike <- c(col.swinging.strike, swinging.strike)
	col.strike.rate <- c(col.strike.rate, strike.rate)

#Since we will be using 26 different pitch sequences, we will need to remove them as we go in order to save space
remove(CUCU.pitcher.pair)

FFFC.pitcher.pair <- subset(pitcher,pitcher$pitch_seq=="FF|FC")

	hit.speed <- mean(as.numeric(as.character(FFFC.pitcher.pair$hit_speed)),na.rm = T)

	hit.angle <- mean(as.numeric(as.character(FFFC.pitcher.pair$hit_angle)),na.rm = T)

	angle <- na.omit(as.numeric(FFFC.pitcher.pair$hit_angle))

	ground <- length(which(angle <10))/length(angle)

	line.drive <- length(which(angle>= 10 & angle<= 25))/length(angle)

	fly.ball <- length(which(angle> 25 & angle<= 60.0))/length(angle)

	pop.up <- length(which(angle> 60.0))/length(angle)

	swinging.strike <- length(which(FFFC.pitcher.pair$description == "ss"))/nrow(FFFC.pitcher.pair)

	FFFC.pitcher.pair$description[grep("Foul",FFFC.pitcher.pair$description)] <- "ss"

	strike.rate <- length(which(FFFC.pitcher.pair$description=="ss"))/nrow(FFFC.pitcher.pair)

	#All subsets after initial column sets
	col.pitch.seq <- c(col.pitch.seq, "FF|FC") 
	col.hit.speed <- c(col.hit.speed, hit.speed)
	col.hit.angle <- c(col.hit.angle, hit.angle)
	col.ground <- c(col.ground, ground)
	col.line.drive <- c(col.line.drive, line.drive)
	col.fly.ball <- c(col.fly.ball, fly.ball)
	col.pop.up <- c(col.pop.up, pop.up)
	col.swinging.strike <- c(col.swinging.strike, swinging.strike)
	col.strike.rate <- c(col.strike.rate, strike.rate)

#Since we will be using 26 different pitch sequences, we will need to remove them as we go in order to save space
remove(FFFC.pitcher.pair)

#Sequence FFSI
FFSI.pitcher.pair <- subset(pitcher,pitcher$pitch_seq=="FF|SI")

	hit.speed <- mean(as.numeric(as.character(FFSI.pitcher.pair$hit_speed)),na.rm = T)

	hit.angle <- mean(as.numeric(as.character(FFSI.pitcher.pair$hit_angle)),na.rm = T)

	angle <- na.omit(as.numeric(FFSI.pitcher.pair$hit_angle))

	ground <- length(which(angle <10))/length(angle)

	line.drive <- length(which(angle>= 10 & angle<= 25))/length(angle)

	fly.ball <- length(which(angle> 25 & angle<= 60.0))/length(angle)

	pop.up <- length(which(angle> 60.0))/length(angle)

	swinging.strike <- length(which(FFSI.pitcher.pair$description == "ss"))/nrow(FFSI.pitcher.pair)

	FFSI.pitcher.pair$description[grep("Foul",FFSI.pitcher.pair$description)] <- "ss"

	strike.rate <- length(which(FFSI.pitcher.pair$description=="ss"))/nrow(FFSI.pitcher.pair)

	#All subsets after initial column sets
	col.pitch.seq <- c(col.pitch.seq, "FF|SI")
	col.hit.speed <- c(col.hit.speed, hit.speed)
	col.hit.angle <- c(col.hit.angle, hit.angle)
	col.ground <- c(col.ground, ground)
	col.line.drive <- c(col.line.drive, line.drive)
	col.fly.ball <- c(col.fly.ball, fly.ball)
	col.pop.up <- c(col.pop.up, pop.up)
	col.swinging.strike <- c(col.swinging.strike, swinging.strike)
	col.strike.rate <- c(col.strike.rate, strike.rate)

#Since we will be using 26 different pitch sequences, we will need to remove them as we go in order to save space
remove(FFSI.pitcher.pair)

FFSL.pitcher.pair <- subset(pitcher,pitcher$pitch_seq=="FF|SL")

	hit.speed <- mean(as.numeric(as.character(FFSL.pitcher.pair$hit_speed)),na.rm = T)

	hit.angle <- mean(as.numeric(as.character(FFSL.pitcher.pair$hit_angle)),na.rm = T)

	angle <- na.omit(as.numeric(FFSL.pitcher.pair$hit_angle))

	ground <- length(which(angle <10))/length(angle)

	line.drive <- length(which(angle>= 10 & angle<= 25))/length(angle)

	fly.ball <- length(which(angle> 25 & angle<= 60.0))/length(angle)

	pop.up <- length(which(angle> 60.0))/length(angle)

	swinging.strike <- length(which(FFSL.pitcher.pair$description == "ss"))/nrow(FFSL.pitcher.pair)

	FFSL.pitcher.pair$description[grep("Foul",FFSL.pitcher.pair$description)] <- "ss"

	strike.rate <- length(which(FFSL.pitcher.pair$description=="ss"))/nrow(FFSL.pitcher.pair)

	#All subsets after initial column sets
	col.pitch.seq <- c(col.pitch.seq, "FF|SL")
	col.hit.speed <- c(col.hit.speed, hit.speed)
	col.hit.angle <- c(col.hit.angle, hit.angle)
	col.ground <- c(col.ground, ground)
	col.line.drive <- c(col.line.drive, line.drive)
	col.fly.ball <- c(col.fly.ball, fly.ball)
	col.pop.up <- c(col.pop.up, pop.up)
	col.swinging.strike <- c(col.swinging.strike, swinging.strike)
	col.strike.rate <- c(col.strike.rate, strike.rate)

#Since we will be using 26 different pitch sequences, we will need to remove them as we go in order to save space
remove(FFSL.pitcher.pair)

FCFF.pitcher.pair <- subset(pitcher,pitcher$pitch_seq=="FC|FF")

	hit.speed <- mean(as.numeric(as.character(FCFF.pitcher.pair$hit_speed)),na.rm = T)

	hit.angle <- mean(as.numeric(as.character(FCFF.pitcher.pair$hit_angle)),na.rm = T)

	angle <- na.omit(as.numeric(FCFF.pitcher.pair$hit_angle))

	ground <- length(which(angle <10))/length(angle)

	line.drive <- length(which(angle>= 10 & angle<= 25))/length(angle)

	fly.ball <- length(which(angle> 25 & angle<= 60.0))/length(angle)

	pop.up <- length(which(angle> 60.0))/length(angle)

	swinging.strike <- length(which(FCFF.pitcher.pair$description == "ss"))/nrow(FCFF.pitcher.pair)

	FCFF.pitcher.pair$description[grep("Foul",FCFF.pitcher.pair$description)] <- "ss"

	strike.rate <- length(which(FCFF.pitcher.pair$description=="ss"))/nrow(FCFF.pitcher.pair)

	#All subsets after initial column sets
	col.pitch.seq <- c(col.pitch.seq, "FC|FF")
	col.hit.speed <- c(col.hit.speed, hit.speed)
	col.hit.angle <- c(col.hit.angle, hit.angle)
	col.ground <- c(col.ground, ground)
	col.line.drive <- c(col.line.drive, line.drive)
	col.fly.ball <- c(col.fly.ball, fly.ball)
	col.pop.up <- c(col.pop.up, pop.up)
	col.swinging.strike <- c(col.swinging.strike, swinging.strike)
	col.strike.rate <- c(col.strike.rate, strike.rate)

#Since we will be using 26 different pitch sequences, we will need to remove them as we go in order to save space
remove(FCFF.pitcher.pair)

FCFC.pitcher.pair <- subset(pitcher,pitcher$pitch_seq=="FC|FC")

	hit.speed <- mean(as.numeric(as.character(FCFC.pitcher.pair$hit_speed)),na.rm = T)

	hit.angle <- mean(as.numeric(as.character(FCFC.pitcher.pair$hit_angle)),na.rm = T)

	angle <- na.omit(as.numeric(FCFC.pitcher.pair$hit_angle))

	ground <- length(which(angle <10))/length(angle)

	line.drive <- length(which(angle>= 10 & angle<= 25))/length(angle)

	fly.ball <- length(which(angle> 25 & angle<= 60.0))/length(angle)

	pop.up <- length(which(angle> 60.0))/length(angle)

	swinging.strike <- length(which(FCFC.pitcher.pair$description == "ss"))/nrow(FCFC.pitcher.pair)

	FCFC.pitcher.pair$description[grep("Foul",FCFC.pitcher.pair$description)] <- "ss"

	strike.rate <- length(which(FCFC.pitcher.pair$description=="ss"))/nrow(FCFC.pitcher.pair)

	#All subsets after initial column sets
	col.pitch.seq <- c(col.pitch.seq, "FC|FC")
	col.hit.speed <- c(col.hit.speed, hit.speed)
	col.hit.angle <- c(col.hit.angle, hit.angle)
	col.ground <- c(col.ground, ground)
	col.line.drive <- c(col.line.drive, line.drive)
	col.fly.ball <- c(col.fly.ball, fly.ball)
	col.pop.up <- c(col.pop.up, pop.up)
	col.swinging.strike <- c(col.swinging.strike, swinging.strike)
	col.strike.rate <- c(col.strike.rate, strike.rate)

#Since we will be using 26 different pitch sequences, we will need to remove them as we go in order to save space
remove(FCFC.pitcher.pair)


FCFT.pitcher.pair <- subset(pitcher,pitcher$pitch_seq=="FC|FT")

	hit.speed <- mean(as.numeric(as.character(FCFT.pitcher.pair$hit_speed)),na.rm = T)

	hit.angle <- mean(as.numeric(as.character(FCFT.pitcher.pair$hit_angle)),na.rm = T)

	angle <- na.omit(as.numeric(FCFT.pitcher.pair$hit_angle))

	ground <- length(which(angle <10))/length(angle)

	line.drive <- length(which(angle>= 10 & angle<= 25))/length(angle)

	fly.ball <- length(which(angle> 25 & angle<= 60.0))/length(angle)

	pop.up <- length(which(angle> 60.0))/length(angle)

	swinging.strike <- length(which(FCFT.pitcher.pair$description == "ss"))/nrow(FCFT.pitcher.pair)

	FCFT.pitcher.pair$description[grep("Foul",FCFT.pitcher.pair$description)] <- "ss"

	strike.rate <- length(which(FCFT.pitcher.pair$description=="ss"))/nrow(FCFT.pitcher.pair)

	#All subsets after initial column sets
	col.pitch.seq <- c(col.pitch.seq, "FC|FT")
	col.hit.speed <- c(col.hit.speed, hit.speed)
	col.hit.angle <- c(col.hit.angle, hit.angle)
	col.ground <- c(col.ground, ground)
	col.line.drive <- c(col.line.drive, line.drive)
	col.fly.ball <- c(col.fly.ball, fly.ball)
	col.pop.up <- c(col.pop.up, pop.up)
	col.swinging.strike <- c(col.swinging.strike, swinging.strike)
	col.strike.rate <- c(col.strike.rate, strike.rate)

#Since we will be using 26 different pitch sequences, we will need to remove them as we go in order to save space
remove(FCFT.pitcher.pair)

FTCH.pitcher.pair <- subset(pitcher,pitcher$pitch_seq=="FT|CH")

	hit.speed <- mean(as.numeric(as.character(FTCH.pitcher.pair$hit_speed)),na.rm = T)

	hit.angle <- mean(as.numeric(as.character(FTCH.pitcher.pair$hit_angle)),na.rm = T)

	angle <- na.omit(as.numeric(FTCH.pitcher.pair$hit_angle))

	ground <- length(which(angle <10))/length(angle)

	line.drive <- length(which(angle>= 10 & angle<= 25))/length(angle)

	fly.ball <- length(which(angle> 25 & angle<= 60.0))/length(angle)

	pop.up <- length(which(angle> 60.0))/length(angle)

	swinging.strike <- length(which(FTCH.pitcher.pair$description == "ss"))/nrow(FTCH.pitcher.pair)

	FTCH.pitcher.pair$description[grep("Foul",FTCH.pitcher.pair$description)] <- "ss"

	strike.rate <- length(which(FTCH.pitcher.pair$description=="ss"))/nrow(FTCH.pitcher.pair)

	#All subsets after initial column sets
	col.pitch.seq <- c(col.pitch.seq, "FT|CH")
	col.hit.speed <- c(col.hit.speed, hit.speed)
	col.hit.angle <- c(col.hit.angle, hit.angle)
	col.ground <- c(col.ground, ground)
	col.line.drive <- c(col.line.drive, line.drive)
	col.fly.ball <- c(col.fly.ball, fly.ball)
	col.pop.up <- c(col.pop.up, pop.up)
	col.swinging.strike <- c(col.swinging.strike, swinging.strike)
	col.strike.rate <- c(col.strike.rate, strike.rate)

#Since we will be using 26 different pitch sequences, we will need to remove them as we go in order to save space
remove(FTCH.pitcher.pair)

FTCU.pitcher.pair <- subset(pitcher,pitcher$pitch_seq=="FT|CU")

	hit.speed <- mean(as.numeric(as.character(FTCU.pitcher.pair$hit_speed)),na.rm = T)

	hit.angle <- mean(as.numeric(as.character(FTCU.pitcher.pair$hit_angle)),na.rm = T)

	angle <- na.omit(as.numeric(FTCU.pitcher.pair$hit_angle))

	ground <- length(which(angle <10))/length(angle)

	line.drive <- length(which(angle>= 10 & angle<= 25))/length(angle)

	fly.ball <- length(which(angle> 25 & angle<= 60.0))/length(angle)

	pop.up <- length(which(angle> 60.0))/length(angle)

	swinging.strike <- length(which(FTCU.pitcher.pair$description == "ss"))/nrow(FTCU.pitcher.pair)

	FTCU.pitcher.pair$description[grep("Foul",FTCU.pitcher.pair$description)] <- "ss"

	strike.rate <- length(which(FTCU.pitcher.pair$description=="ss"))/nrow(FTCU.pitcher.pair)

	#All subsets after initial column sets
	col.pitch.seq <- c(col.pitch.seq, "FT|CU")
	col.hit.speed <- c(col.hit.speed, hit.speed)
	col.hit.angle <- c(col.hit.angle, hit.angle)
	col.ground <- c(col.ground, ground)
	col.line.drive <- c(col.line.drive, line.drive)
	col.fly.ball <- c(col.fly.ball, fly.ball)
	col.pop.up <- c(col.pop.up, pop.up)
	col.swinging.strike <- c(col.swinging.strike, swinging.strike)
	col.strike.rate <- c(col.strike.rate, strike.rate)

#Since we will be using 26 different pitch sequences, we will need to remove them as we go in order to save space
remove(FTCU.pitcher.pair)

FTFF.pitcher.pair <- subset(pitcher,pitcher$pitch_seq=="FT|FF")

	hit.speed <- mean(as.numeric(as.character(FTFF.pitcher.pair$hit_speed)),na.rm = T)

	hit.angle <- mean(as.numeric(as.character(FTFF.pitcher.pair$hit_angle)),na.rm = T)

	angle <- na.omit(as.numeric(FTFF.pitcher.pair$hit_angle))

	ground <- length(which(angle <10))/length(angle)

	line.drive <- length(which(angle>= 10 & angle<= 25))/length(angle)

	fly.ball <- length(which(angle> 25 & angle<= 60.0))/length(angle)

	pop.up <- length(which(angle> 60.0))/length(angle)

	swinging.strike <- length(which(FTFF.pitcher.pair$description == "ss"))/nrow(FTFF.pitcher.pair)

	FTFF.pitcher.pair$description[grep("Foul",FTFF.pitcher.pair$description)] <- "ss"

	strike.rate <- length(which(FTFF.pitcher.pair$description=="ss"))/nrow(FTFF.pitcher.pair)

	#All subsets after initial column sets
	col.pitch.seq <- c(col.pitch.seq, "FT|FF")
	col.hit.speed <- c(col.hit.speed, hit.speed)
	col.hit.angle <- c(col.hit.angle, hit.angle)
	col.ground <- c(col.ground, ground)
	col.line.drive <- c(col.line.drive, line.drive)
	col.fly.ball <- c(col.fly.ball, fly.ball)
	col.pop.up <- c(col.pop.up, pop.up)
	col.swinging.strike <- c(col.swinging.strike, swinging.strike)
	col.strike.rate <- c(col.strike.rate, strike.rate)

#Since we will be using 26 different pitch sequences, we will need to remove them as we go in order to save space
remove(FTFF.pitcher.pair)

FTFC.pitcher.pair <- subset(pitcher,pitcher$pitch_seq=="FT|FC")

	hit.speed <- mean(as.numeric(as.character(FTFC.pitcher.pair$hit_speed)),na.rm = T)

	hit.angle <- mean(as.numeric(as.character(FTFC.pitcher.pair$hit_angle)),na.rm = T)

	angle <- na.omit(as.numeric(FTFC.pitcher.pair$hit_angle))

	ground <- length(which(angle <10))/length(angle)

	line.drive <- length(which(angle>= 10 & angle<= 25))/length(angle)

	fly.ball <- length(which(angle> 25 & angle<= 60.0))/length(angle)

	pop.up <- length(which(angle> 60.0))/length(angle)

	swinging.strike <- length(which(FTFC.pitcher.pair$description == "ss"))/nrow(FTFC.pitcher.pair)

	FTFC.pitcher.pair$description[grep("Foul",FTFC.pitcher.pair$description)] <- "ss"

	strike.rate <- length(which(FTFC.pitcher.pair$description=="ss"))/nrow(FTFC.pitcher.pair)

	#All subsets after initial column sets
	col.pitch.seq <- c(col.pitch.seq, "FT|FC")
	col.hit.speed <- c(col.hit.speed, hit.speed)
	col.hit.angle <- c(col.hit.angle, hit.angle)
	col.ground <- c(col.ground, ground)
	col.line.drive <- c(col.line.drive, line.drive)
	col.fly.ball <- c(col.fly.ball, fly.ball)
	col.pop.up <- c(col.pop.up, pop.up)
	col.swinging.strike <- c(col.swinging.strike, swinging.strike)
	col.strike.rate <- c(col.strike.rate, strike.rate)

#Since we will be using 26 different pitch sequences, we will need to remove them as we go in order to save space
remove(FTFC.pitcher.pair)

FTFT.pitcher.pair <- subset(pitcher,pitcher$pitch_seq=="FT|FT")

	hit.speed <- mean(as.numeric(as.character(FTFT.pitcher.pair$hit_speed)),na.rm = T)

	hit.angle <- mean(as.numeric(as.character(FTFT.pitcher.pair$hit_angle)),na.rm = T)

	angle <- na.omit(as.numeric(FTFT.pitcher.pair$hit_angle))

	ground <- length(which(angle <10))/length(angle)

	line.drive <- length(which(angle>= 10 & angle<= 25))/length(angle)

	fly.ball <- length(which(angle> 25 & angle<= 60.0))/length(angle)

	pop.up <- length(which(angle> 60.0))/length(angle)

	swinging.strike <- length(which(FTFT.pitcher.pair$description == "ss"))/nrow(FTFT.pitcher.pair)

	FTFT.pitcher.pair$description[grep("Foul",FTFT.pitcher.pair$description)] <- "ss"

	strike.rate <- length(which(FTFT.pitcher.pair$description=="ss"))/nrow(FTFT.pitcher.pair)

	#All subsets after initial column sets
	col.pitch.seq <- c(col.pitch.seq, "FT|FT")
	col.hit.speed <- c(col.hit.speed, hit.speed)
	col.hit.angle <- c(col.hit.angle, hit.angle)
	col.ground <- c(col.ground, ground)
	col.line.drive <- c(col.line.drive, line.drive)
	col.fly.ball <- c(col.fly.ball, fly.ball)
	col.pop.up <- c(col.pop.up, pop.up)
	col.swinging.strike <- c(col.swinging.strike, swinging.strike)
	col.strike.rate <- c(col.strike.rate, strike.rate)

#Since we will be using 26 different pitch sequences, we will need to remove them as we go in order to save space
remove(FTFT.pitcher.pair)

FTSL.pitcher.pair <- subset(pitcher,pitcher$pitch_seq=="FT|SL")

	hit.speed <- mean(as.numeric(as.character(FTSL.pitcher.pair$hit_speed)),na.rm = T)

	hit.angle <- mean(as.numeric(as.character(FTSL.pitcher.pair$hit_angle)),na.rm = T)

	angle <- na.omit(as.numeric(FTSL.pitcher.pair$hit_angle))

	ground <- length(which(angle <10))/length(angle)

	line.drive <- length(which(angle>= 10 & angle<= 25))/length(angle)

	fly.ball <- length(which(angle> 25 & angle<= 60.0))/length(angle)

	pop.up <- length(which(angle> 60.0))/length(angle)

	swinging.strike <- length(which(FTSL.pitcher.pair$description == "ss"))/nrow(FTSL.pitcher.pair)

	FTSL.pitcher.pair$description[grep("Foul",FTSL.pitcher.pair$description)] <- "ss"

	strike.rate <- length(which(FTSL.pitcher.pair$description=="ss"))/nrow(FTSL.pitcher.pair)

	#All subsets after initial column sets
	col.pitch.seq <- c(col.pitch.seq, "FT|SL")
	col.hit.speed <- c(col.hit.speed, hit.speed)
	col.hit.angle <- c(col.hit.angle, hit.angle)
	col.ground <- c(col.ground, ground)
	col.line.drive <- c(col.line.drive, line.drive)
	col.fly.ball <- c(col.fly.ball, fly.ball)
	col.pop.up <- c(col.pop.up, pop.up)
	col.swinging.strike <- c(col.swinging.strike, swinging.strike)
	col.strike.rate <- c(col.strike.rate, strike.rate)

#Since we will be using 26 different pitch sequences, we will need to remove them as we go in order to save space
remove(FTSL.pitcher.pair)

SLFF.pitcher.pair <- subset(pitcher,pitcher$pitch_seq=="SL|FF")

	hit.speed <- mean(as.numeric(as.character(SLFF.pitcher.pair$hit_speed)),na.rm = T)

	hit.angle <- mean(as.numeric(as.character(SLFF.pitcher.pair$hit_angle)),na.rm = T)

	angle <- na.omit(as.numeric(SLFF.pitcher.pair$hit_angle))

	ground <- length(which(angle <10))/length(angle)

	line.drive <- length(which(angle>= 10 & angle<= 25))/length(angle)

	fly.ball <- length(which(angle> 25 & angle<= 60.0))/length(angle)

	pop.up <- length(which(angle> 60.0))/length(angle)

	swinging.strike <- length(which(SLFF.pitcher.pair$description == "ss"))/nrow(SLFF.pitcher.pair)

	SLFF.pitcher.pair$description[grep("Foul",SLFF.pitcher.pair$description)] <- "ss"

	strike.rate <- length(which(SLFF.pitcher.pair$description=="ss"))/nrow(SLFF.pitcher.pair)

	#All subsets after initial column sets
	col.pitch.seq <- c(col.pitch.seq, "SL|FF")
	col.hit.speed <- c(col.hit.speed, hit.speed)
	col.hit.angle <- c(col.hit.angle, hit.angle)
	col.ground <- c(col.ground, ground)
	col.line.drive <- c(col.line.drive, line.drive)
	col.fly.ball <- c(col.fly.ball, fly.ball)
	col.pop.up <- c(col.pop.up, pop.up)
	col.swinging.strike <- c(col.swinging.strike, swinging.strike)
	col.strike.rate <- c(col.strike.rate, strike.rate)

#Since we will be using 26 different pitch sequences, we will need to remove them as we go in order to save space
remove(SLFF.pitcher.pair)

SLFT.pitcher.pair <- subset(pitcher,pitcher$pitch_seq=="SL|FT")

	hit.speed <- mean(as.numeric(as.character(SLFT.pitcher.pair$hit_speed)),na.rm = T)

	hit.angle <- mean(as.numeric(as.character(SLFT.pitcher.pair$hit_angle)),na.rm = T)

	angle <- na.omit(as.numeric(SLFT.pitcher.pair$hit_angle))

	ground <- length(which(angle <10))/length(angle)

	line.drive <- length(which(angle>= 10 & angle<= 25))/length(angle)

	fly.ball <- length(which(angle> 25 & angle<= 60.0))/length(angle)

	pop.up <- length(which(angle> 60.0))/length(angle)

	swinging.strike <- length(which(SLFT.pitcher.pair$description == "ss"))/nrow(SLFT.pitcher.pair)

	SLFT.pitcher.pair$description[grep("Foul",SLFT.pitcher.pair$description)] <- "ss"

	strike.rate <- length(which(SLFT.pitcher.pair$description=="ss"))/nrow(SLFT.pitcher.pair)

	#All subsets after initial column sets
	col.pitch.seq <- c(col.pitch.seq, "SL|FT")
	col.hit.speed <- c(col.hit.speed, hit.speed)
	col.hit.angle <- c(col.hit.angle, hit.angle)
	col.ground <- c(col.ground, ground)
	col.line.drive <- c(col.line.drive, line.drive)
	col.fly.ball <- c(col.fly.ball, fly.ball)
	col.pop.up <- c(col.pop.up, pop.up)
	col.swinging.strike <- c(col.swinging.strike, swinging.strike)
	col.strike.rate <- c(col.strike.rate, strike.rate)

#Since we will be using 26 different pitch sequences, we will need to remove them as we go in order to save space
remove(SLFT.pitcher.pair)

SLSL.pitcher.pair <- subset(pitcher,pitcher$pitch_seq=="SL|SL")

	hit.speed <- mean(as.numeric(as.character(SLSL.pitcher.pair$hit_speed)),na.rm = T)

	hit.angle <- mean(as.numeric(as.character(SLSL.pitcher.pair$hit_angle)),na.rm = T)

	angle <- na.omit(as.numeric(SLSL.pitcher.pair$hit_angle))

	ground <- length(which(angle <10))/length(angle)

	line.drive <- length(which(angle>= 10 & angle<= 25))/length(angle)

	fly.ball <- length(which(angle> 25 & angle<= 60.0))/length(angle)

	pop.up <- length(which(angle> 60.0))/length(angle)

	swinging.strike <- length(which(SLSL.pitcher.pair$description == "ss"))/nrow(SLSL.pitcher.pair)

	SLSL.pitcher.pair$description[grep("Foul",SLSL.pitcher.pair$description)] <- "ss"

	strike.rate <- length(which(SLSL.pitcher.pair$description=="ss"))/nrow(SLSL.pitcher.pair)

	#All subsets after initial column sets
	col.pitch.seq <- c(col.pitch.seq, "SL|SL")
	col.hit.speed <- c(col.hit.speed, hit.speed)
	col.hit.angle <- c(col.hit.angle, hit.angle)
	col.ground <- c(col.ground, ground)
	col.line.drive <- c(col.line.drive, line.drive)
	col.fly.ball <- c(col.fly.ball, fly.ball)
	col.pop.up <- c(col.pop.up, pop.up)
	col.swinging.strike <- c(col.swinging.strike, swinging.strike)
	col.strike.rate <- c(col.strike.rate, strike.rate)

#Since we will be using 26 different pitch sequences, we will need to remove them as we go in order to save space
remove(SLSL.pitcher.pair)

result.data <- data.frame(player_name = pitcher$player_name[1], pitch_seq = col.pitch.seq, hit_speed_avg = col.hit.speed, hit_angle_avg = col.hit.angle, swinging.strike = col.swinging.strike, strike.rate = col.strike.rate, ground = col.ground, line_drive = col.line.drive, fly_ball = col.fly.ball, pop_up = col.pop.up)

result.data <- na.omit(result.data)
#Removes unused pitch sets

view(result.data)

#Change directory to sequencing folder
setwd("~/lucSABR-master/finalData")

#Write file
write.csv(result.data, "AdamWarren_res.csv")