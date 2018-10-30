setwd("D:/R3.5/data")
dc = read.csv("dc-wikia-data.csv")
marvel = read.csv("marvel-wikia-data.csv")
blue_eye_dc = length(dc$EYE[which(dc$EYE=="Blue Eyes")])
blue_eye_marvel = length(marvel$EYE[which(marvel$EYE == "Blue Eyes")])
male_dc = length(dc$SEX[which(dc$SEX=="Male Characters")])
male_marvel = length(marvel$SEX[which(marvel$SEX=="Male Characters")])
new_frame = data.frame(m =c(blue_eye_dc) ,d = blue_eye_marvel)
a = c(blue_eye_dc,blue_eye_marvel)
barplot(a,col = c('blue','red'),
        main = 'Blue eyes in Marvel and DC',
        xlab = 'Company',ylab = 'Number',names.arg = c("DC","Marvel"),legend.text = c('DC','MARVEL'))
b = c(male_dc,male_marvel)
barplot(b,col = c('blue','red'),
        main = 'Male heroes in Marvel and DC',
        xlab = 'Company',ylab = 'Number',names.arg = c("DC","Marvel"),legend.text = c('DC','MARVEL'))
Hazel_eye_marvel = length(marvel$EYE[which(marvel$EYE == "Hazel Eyes")])
Brown_eye_marvel = length(marvel$EYE[which(marvel$EYE == "Brown Eyes")])
Green_eye_marvel = length(marvel$EYE[which(marvel$EYE == "Green Eyes")])
Grey_eye_marvel = length(marvel$EYE[which(marvel$EYE == "Grey Eyes")])
Red_eye_marvel = length(marvel$EYE[which(marvel$EYE == "Red Eyes")])
c = c(blue_eye_marvel, Hazel_eye_marvel, Brown_eye_marvel,Green_eye_marvel,Grey_eye_marvel,Red_eye_marvel)
pie(c,col= c("blue","black","brown","green","grey","red"),
    labels = c("blue eyes","hazel eyes","brown eyes","green eyes","grey eyes","red eyes"),radius = 1.0,main = 'Diffirent colors of eyes in marvel')
heroes_dc = length(dc$page_id)
heroes_marvel = length(marvel$page_id)
d = c(male_dc/heroes_dc,male_marvel/heroes_marvel)
pie(d,col = c("blue","red"),labels = c("dc","marvel"),radius = 1.0, main = "The comparasion of the radio of male heroes")
good_hero_dc = length(dc$ALIGN[which(dc$ALIGN=="Good Characters")])
good_hero_marvel = length(marvel$ALIGN[which(marvel$ALIGN=="Good Characters")])
e = c(good_hero_dc/heroes_dc,good_hero_marvel/heroes_marvel)
barplot(e,col = c('blue','red'),
        main = 'radio of the good heroes in Marvel and DC',
        xlab = 'Company',ylab = 'Number',names.arg = c("DC","Marvel"),legend.text = c('DC','MARVEL'))
