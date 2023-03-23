setscreen ("graphics:max;max")
colourback (black)
cls
colour (white)

var save, saveNumber2 : string
var stremin, saveNumber : int
open : stremin, "save.txt", put
put : stremin, "3"
close: stremin

var playerName : string

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
var choice : string (1)

process DoMusic
    Music.PlayFile ("Beam Me Up Scotty.mp3")
end DoMusic

fork DoMusic

var boxColour : int := 16

loop
    colour (boxColour)
    Draw.FillBox (0, 0, maxx, maxy, boxColour)
    boxColour := boxColour + 1
    delay (200)
    View.Update
    exit when boxColour = 32
end loop

var foxwoods : int := Pic.FileNew ("Foxwoods.bmp")
foxwoods := Pic.Scale (foxwoods, maxx, maxy)
Pic.Draw (foxwoods, 0, 0, 0)
getch (wait1)

cls

put  playerName, ": 'That's it?' You ask, slightly suprised. 'I thought it'd be bigger'."
getch (wait1)
colour (2)
put "Dialus: 'It's an illusion, from the outside it appears to be a small castle in the Welsh countryside. Even if you go around, that's all you'll see'."
getch (wait1)
put "Dialus: 'But once you pass through the front door, the illusion is dispelled for you and you see the actual reality."
getch (wait1)
put "There's a whole town, forest and lake behind the castle."
%Bigger on the inside than the outside, Doctor Who inspired
getch (wait1)
colour (white)
put  playerName, ": 'That's, pretty impressive. But what happens if someone not from the school goes around back?'"
getch (wait1)
colour (2)
put "Dialus: 'We have security measures in place. Without going into too much detail, they get teleported to the other side, get fake memories of wandering through the area," 
getch (wait1)
put "Dialus: 'and eventually forget that they were ever here.'"  %Bit of a cop out story wise but without magic, it's all I could think off
getch (wait1)
colour (white)
put  playerName, ": 'Huh' "
getch (wait1)

cls

put  playerName, ": 'So... shouldn't we get started going to it now?'"
getch (wait1)
colour (2)
put "Dialus: 'No. We have a, special let's call it, way of bringing newcomers in.'"
getch (wait1)
colour (white)
put  playerName, ": 'Wait, what do you mean by -'"
getch (wait1)

process roar
    Music.PlayFile ("roar.mp3")
end roar

fork roar

var dragon : int := Pic.FileNew ("Qkwone-Dragon Form.bmp")
dragon := Pic.Scale (dragon, maxx, maxy)
Pic.Draw (dragon, 0, 0, 0)
getch (wait1)

cls

put  playerName, ": 'You have a DRAGON?!' You yell at Dialus."
getch (wait1)

colour (2)
put "Dialus: 'Well technically he's a staff member and works here, but as an answer to your question, yes, we have a dragon.'"
getch (wait1)

loop
    cls
    colour (white)
    put "Inquire about the dragon being a staff member <i> or panic <p>?"
    getch (choice)
    if choice = "i" or choice = "I" then
	put  playerName, ": 'How is the dragon a staff member?' You ask."
	getch (wait1)
	colour (2)
	put "Dialus: 'His name is Qkwone, his power is to change into a dragon. He's also a big practical joker and likes scaring people."
	getch (wait1)
	put "Dialus: Because of this, he volunteered to be in charge of escorting newcomers to the castle.'"
	getch (wait1)        
	exit
    elsif choice = "p" or choice = "P" then
	var tooMuchPanicking : int := 1
	loop
	    exit when tooMuchPanicking = 5
	    colour (white)
	    put "You run around panicking, much to the amusement of Dialus. It doesn't accomplish much, but you feel slightly better afterwards."
	    getch (wait1)
	    tooMuchPanicking := tooMuchPanicking + 1
	end loop
	cls
	put "You took so long panicking that the dragon arrived." %Wanted the choice to have an effect, not just there for an infinite loop
	getch (wait1)
	colour (2)
	put "Dialus: 'This is Qkwone, his power is to change into a dragon. He is in charge of bringing newcomers into the castle."
	getch (wait1)
	exit
    else
	put ""
	getch (wait1)
    end if
end loop

colour (white)
put  playerName, ": 'Uh, hi.' You say meekly."
getch (wait1)
put "The dragon seems to laugh at you, then, in a flash of light, he changes into a man."
getch (wait1)

cls

dragon := Pic.Scale (dragon, maxx, maxy)
Pic.Draw (dragon, 0, 0, 0)

getch (wait1)

cls

boxColour := 16

loop
    colour (boxColour)
    Draw.FillBox (0, 0, maxx, maxy, boxColour)
    boxColour := boxColour + 1
    delay (100)
    View.Update
    exit when boxColour = 32
end loop

cls

foxwoods := Pic.Scale (foxwoods, maxx, maxy)
Pic.Draw (foxwoods, 0, 0, 0)

%Design of Qkwone was inspired by Mr. T from the A Team

var qkwone : int := Pic.FileNew ("Qkwone-Human Form.bmp")
qkwone := Pic.Scale (qkwone, 240, 360)
Pic.Draw (qkwone, 60, 20, picMerge)

getch (wait1)

cls

colour (6)

put "Qkowne: 'Oh, you should've seen the look on your face! Priceless! Man, I love my job.'"
getch (wait1)
colour (2)
put "Dialus: 'Yes, yes Qkwone. You've had your fun, now it's time to do your job.' He said somewhat reproachly."
getch (wait1)
colour (6)
put "Qkwone: 'Alright old man.' He whines." 
getch (wait1)
put "Qkwone: 'You never let me have any fun' He says under his breath."
getch (wait1)
colour (white) 
put "Dialus gives him a withering look."
getch (wait1)
colour (6)
put "Qkwone: 'Fine.' He turns and smiles at you. 'What can I say, I get bored easily. Anyways, I'm supposed to give you a quick orientation before you actually get into the school."
getch (wait1)
put "Qkwone: Once we're there, the headmaster gives a speech to all of the students, and then the first years like yourself get sent to an introduction cource and have a trial day"
getch (wait1)
put "Qkwone: After the day is over, you get to choose your cources. Any questions?'"
getch (wait1)
colour (white)
put  playerName, ": 'No, I'm good.'"
getch (wait1)
colour (6)
put "Qkwone: 'Then let's go!'"

cls

foxwoods := Pic.Scale (foxwoods, maxx, maxy)
Pic.Draw (foxwoods, 0, 0, 0)

qkwone := Pic.Scale (qkwone, 240, 360)
Pic.Draw (qkwone, 60, 20, picMerge)

getch (wait1)

boxColour := 16

loop
    colour (boxColour)
    Draw.FillBox (0, 0, maxx, maxy, boxColour)
    boxColour := boxColour + 1
    delay (100)
    View.Update
    exit when boxColour = 32
end loop

cls

dragon := Pic.Scale (dragon, maxx, maxy)
Pic.Draw (dragon, 0, 0, 0)

getch (wait1)

fork roar

getch (wait1)

cls

foxwoods := Pic.Scale (foxwoods, maxx, maxy)
Pic.Draw (foxwoods, 0, 0, 0)

getch (wait1)

var foxwoods2 : int := Pic.FileNew ("Foxwoods-Open.bmp")
foxwoods2 := Pic.Scale (foxwoods2, maxx, maxy)
Pic.Draw (foxwoods2, 0, 0, 0)

if not Sys.Exec ("4.exe") then
    put "Blah"
    put "error ", Error.LastMsg
end if
