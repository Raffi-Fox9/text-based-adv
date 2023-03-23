setscreen ("graphics:max;max")
colourback (black)
cls
colour (brightred)

var save, saveNumber2 : string
var stremin, saveNumber : int
open : stremin, "save.txt", put
put : stremin, "5"
close : stremin

var playerName : string
var friendName : string

open : stremin, "player name.txt", get
get : stremin, playerName

var pocketWatch : string
var oldWatch : boolean

open : stremin, "watch.txt", get
get : stremin, pocketWatch

if pocketWatch = "true" then
    oldWatch := true
end if

if pocketWatch = "false" then
    oldWatch := false
end if

var wait1 : string (1)



Music.PlayFileLoop ("Mos Eisley Cantina Music.mp3")

put "And so ends the first episode of your journey through life at Foxwoods. Next time you will learn how to use your powers, choose your courses and forge"
getch (wait1)
put "close bonds with your new friends, and even more people."
getch (wait1)
cls

var endingFont : int
endingFont := Font.New ("Algerian:50")
Font.Draw ("Thanks for playing!", 250, 600, endingFont, white)

