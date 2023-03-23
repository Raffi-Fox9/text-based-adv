setscreen ("graphics:max;max")
colourback (black)
cls
colour (white)

var save, saveNumber2 : string
var stremin, saveNumber : int
open : stremin, "save.txt", put
put : stremin, "2"
close : stremin

var playerName : string

open : stremin, "player name.txt", get
get : stremin, playerName

var pocketWatch : string
var oldWatch : boolean

open : stremin, "watch.txt", get
get : stremin, pocketWatch

var wait1 : string (1)
var choice : string (1)


var clock1 : int := Pic.FileNew ("Clock.bmp")
clock1 := Pic.Scale (clock1, maxx div 3, maxy div 2)
Pic.Draw (clock1, maxx div 2 + 100, maxy div 2 - 100, 0)

Music.PlayFileLoop ("Alarm Clock Rings Sound Effect.mp3") %Plays music in a loop until Music.PlayFileStop
put "You wake up the next day. Once again you get that feeling that something seems not quite the same."
getch (wait1)
put "Unable to determine what it is, you get up and turn off your alarm. Then you start getting dressed."
getch (wait1)
Music.PlayFileStop

put "After you finished getting dressed and go to close your drawer, you notice that the clock on top of it hasn't changed since you got up."
getch (wait1)
put "You quickly check one of the watches on the nighstand, and see the same thing. Starting to freak out, you run out of your room shouting for your mother,"
getch (wait1)
put "although you're not sure if it's out of fear for yourself or for her."
getch (wait1)

cls

put "You run downstairs, and see your mother in the kitchen. She is frozen in the middle of a sip of coffee."
getch (wait1)
put "You also see that the clock on the radio is also frozen."
getch (wait1)
put playerName, ": 'This is trippy.' You say, stunned by what you're witnessing."
getch (wait1)

var boxColour : int := 16

process doMusic %Makes the music a process that can be inserted into any point (almost) with the "fork" command
    Music.PlayFile ("Beam Me Up Scotty.mp3")
end doMusic

fork doMusic

loop
    colour (boxColour)
    Draw.FillBox (0, 0, maxx, maxy, boxColour)
    boxColour := boxColour + 1
    delay (200)
    View.Update
    exit when boxColour = 32
end loop

cls

var dialus : int := Pic.FileNew ("Dialus.bmp")
dialus := Pic.Scale (dialus, 300, 500)
Pic.Draw (dialus, maxx div 2 + 320, maxy div 4, 0)

colour (2)
put "?: 'Yes, I suppose it is.' Says the man who just appeared before you. 'Before you say anything, allow me to introduce myself. My name is Dialus. I have been sent to be your guide to Foxwoods'"
getch (wait1)
loop
    cls
    colour (white)
    put "Respond politely <p>, neutrally <n>, aggresively <a> or just wave <w>?"
    getch (choice)
    if choice = "p" or choice = "P" then
	put playerName, ": 'Hello, my name is ", playerName, " nice to meet you.'"
	getch (wait1)
	colour (2)
	put "Dialus: 'Likewise. And if I may add, this is one of the more civil greetings I've gotten upon my visits, so thank you for that.'"
	getch (wait1)
	exit
    elsif choice = "n" or choice = "N" then
	put playerName, ": 'Hey.' You say in a neutral tone. 'Cool name.'"
	getch (wait1)
	colour (2)
	put "Dialus: 'Thank you.' He responds, equally neutrally."
	getch (wait1)
	exit
    elsif choice = "a" or choice = "A" then
	put playerName, ": 'Strange old men appearing out of nowhere and time being frozen. I hope I don't regret this.' You say under your breath."
	getch (wait1)
	colour (2)
	put "Dialus frowns at you dissaprovingly."
	exit
    elsif choice = "w" or choice = "W" then
	put "You wave at him, unsure of what to say."
	getch (wait1)
	exit
    else
	colour (brightred)
	put "Strange situation. What will you do?"
	getch (wait1)
    end if
end loop

colour (white)
put playerName, ": 'So, what's happpening? Like, why is time frozen and why did you just randomly appear in my kitchen?' You ask him."
getch (wait1)
colour (2)
put "Dialus: 'That's a bit complicated and hard to explain. The short of it is I can teleport and a little device I have' He says as he pats his pocket."
getch (wait1)
put "Dialus: 'Allows me to borrow the powers of someone else, which allows me to temporarily suspend the flow of time.'" %(Story Idea) Person who's powers are borrowed is player's dad
getch (wait1)
put "Dialus: 'With time being frozen, no time will be wasted with questions and introductions.' He adds on."
getch (wait1)
loop %Unlike the other choices in the game, this one is meant to be like a conversation, so you can ask all the options or just skip them
    cls
    colour (white)
    put "Ask if your mom is ok <m>, if time is going to be fine <t>, why is he old if he can manipulate time <o> or ask what's next (progresses game) <n>?"
    getch (choice)
    if choice = "m" or choice = "M" then
	colour (white)
	put playerName, ": 'Is my mom ok? Is time being frozen going to harm her?' You ask, your concern for your mother returning full force."
	getch (wait1)
	colour (2)
	put "Dialus: 'She is and will be fine. Freezing time doesn't do anything to anyone, they aren't even aware of it. As well, they cannot be harmed by"
	getch (wait1)
	put "Dialus: people who aren't frozen. When I (or someone else) does it, all those who aren't frozen are out of sync with those that are.'"
	getch (wait1)
    elsif choice = "t" or choice = "T" then
	colour (white)
	put playerName, ": 'Does this do anything bad to like, the space-time continuum, or something similar?' You ask. 'Are you going to break time?'"
	getch (wait1)
	colour (2)
	put "Dialus: 'No, don't worry. What I do won't break time.' He says laughing. 'That's a phrase I haven't heard someone say in a while."
	getch (wait1)
    elsif choice = "o" or choice = "O" then
	colour (white)
	put playerName, ": 'So if you can manipulate time, why are you old? Couln't you just keep making yourself young?' You ask?"
	getch (wait1)
	colour (2)
	put "Dialus: 'I'm only borrowing the power, so I can't use it indefinately. Also, I find people have listened to me more as I've gotten older.'"
	getch (wait1)
    elsif choice = "n" or choice = "N" then
	colour (white)
	put playerName, ": 'So what now?' You ask."
	getch (wait1)
	exit
    else
	colour (white)
	put "You think about which avenue of conversation to pursue."
	getch (wait1)
    end if
end loop

cls

colour (2)
put "Dialus: 'Now? Well that all depends on whether or not you're ready to leave."
getch (wait1)
loop
    cls
    put "Dialus: 'Are you'? (Yes <y> or no <n>)"
    getch (choice)
    if choice = "y" or choice = "Y" then
	colour (white)
	loop
	    put "As you are about to say yes, you get the feeling that you are forgetting something in your room. Would you like to go get it? Yes <y> or No <n>?"
	    getch (choice)
	    if choice = "n" or choice = "N" then
		put playerName, ": 'Yeah, I'm ready.' You say."
		exit
	    elsif choice = "y" or choice = "Y" then
		cls
		put playerName, ": 'Actually there is something in my room that I'd like to get.'"
		getch (wait1)
		colour (2)
		put "Dialus: 'Alright.'"
		cls
		colour (white)
		put "You run back upstairs into your room, not exactly sure what it is that you want to get. Then you see it, sitting in a case on"
		getch (wait1)
		put "your dresser."
		getch (wait1)

		var watch : int := Pic.FileNew ("Watch-Open.bmp")
		watch := Pic.Scale (watch, 700, 700)
		Pic.Draw (watch, maxx div 2 + 300, maxy div 8, 0)
		getch (wait1)
		put "You quickly grab it, thinking that if he is somewhere at Foxwoods, this watch will help you in some way."

		var watch2 : int := Pic.FileNew ("Watch-Closed.bmp")
		watch2 := Pic.Scale (watch2, 700, 700)
		Pic.Draw (watch2, maxx div 2 + 300, maxy div 8, 0)
		getch (wait1)
		cls
		put "You run back downstairs to Dialus."
		getch (wait1)
		colour (2)
		put "Dialus: 'Have everything?' He asks."
		getch (wait1)
		colour (white)
		put playerName, ": 'Yeah, I'm ready now.'"
		exit
	    end if
	end loop
	exit
    elsif choice = "n" or choice = "N" then
	put playerName, ": 'Actually there is something in my room that I'd like to get.'"
	getch (wait1)
	colour (2)
	put "Dialus: 'Alright.'"
	cls
	colour (white)
	put "You run back upstairs into your room, not exactly sure what it is that you want to get. Then you see it, sitting in a case on"
	getch (wait1)
	put "your dresser."
	getch (wait1)

	var watch : int := Pic.FileNew ("Watch-Open.bmp")
	watch := Pic.Scale (watch, 700, 700)
	Pic.Draw (watch, maxx div 2 + 300, maxy div 8, 0)
	getch (wait1)
	put "You quickly grab it, thinking that if he is somewhere at Foxwoods, this watch will help you in some way."

	var watch2 : int := Pic.FileNew ("Watch-Closed.bmp")
	watch2 := Pic.Scale (watch2, 700, 700)
	Pic.Draw (watch2, maxx div 2 + 300, maxy div 8, 0)
	getch (wait1)

	cls
	put "You run back downstairs to Dialus."
	getch (wait1)
	colour (2)
	put "Dialus: 'Have everything?' He asks."
	getch (wait1)
	colour (white)
	put playerName, ": 'Yeah, I'm ready now.'"
	exit
    end if
end loop

cls

colour (2)
put "Dialus: 'Then, let us be off!'"
getch (wait1)
colour (white)
put "And with those words, the world vanishes into a flash of white."


if not Sys.Exec ("3.exe") then
    put "Blah"
    put "error ", Error.LastMsg
end if
