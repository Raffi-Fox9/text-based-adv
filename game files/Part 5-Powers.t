setscreen ("graphics:max;max")
colourback (black)
cls
colour (white)

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
var choice : string (1)

put "You and your newfound friends, along with everyone else in the foyer, make your way towards the massive doorframe set right across from where you came in."
getch (wait1)
put "As you pass through, you are greeted by a room that appears to be larger than the entire castle looked from the outside."

var diningRoom : int := Pic.FileNew ("Dining Room.bmp")
diningRoom := Pic.Scale (diningRoom, maxx div 2, maxy div 2)
Pic.Draw (diningRoom, maxx div 2, maxy div 4, 0)

getch (wait1)
put playerName, ": 'I know that Albus said that the outside was an illusion of some kind, but this is pretty ridiculous.' You say, in awe of your surroundings."
getch (wait1)
colour (3)
put "Tom: 'Yeah. And if this is just the main hall, imagine how big the entire place is.'"
getch (wait1)
colour (white)
put playerName, ": 'It's probably bigger than most sovreign countries.'"
getch (wait1)
colour (36)
put "Phoebe: 'I really can't wait to get my powers now.'"
getch (wait1)
loop
    cls
    colour (43)
    put "Lara: 'I'd agree, but I'm not really in a position to do so."
    colour (white)
    put "Make a comment <c> or say nothing <n>?"
    getch (choice)
    if choice = "c" or choice = "C" then
	put playerName, ": 'Who knows? Maybe getting them early just means that they're not going to be as impressive as the rest of ours.'"
	getch (wait1)
	put "She gives you a withering look."
	getch (wait1)
	put playerName, ": 'Sorry, just trying to add some levitivity to the situation.'"
	getch (wait1)
	exit
    elsif choice = "n" or choice = "N" then
	put "You think about making a joke, but decide against it and just keep walking."
	getch (wait1)
	exit
    else
	put "You try to think of something else to say, but nothing comes to mind."
	getch (wait1)
    end if
end loop

cls

diningRoom := Pic.Scale (diningRoom, maxx div 2, maxy div 2) 
Pic.Draw (diningRoom, maxx div 2, maxy div 4, 0)

getch (wait1)

var boxColour : int := 16

loop
    colour (boxColour)
    Draw.FillBox (0, 0, maxx, maxy, boxColour)
    boxColour := boxColour + 1
    delay (50)
    View.Update
    exit when boxColour = 32
end loop



cls

%Supposed to be Dialus teleporting in, may be out of line on different monitors
var dialus : int := Pic.FileNew ("Dialus.bmp") 
dialus := Pic.Scale (dialus, 150, 200)
Pic.Draw (dialus, maxx div 2 + 320, maxy div 4 + 290, picMerge)

diningRoom := Pic.Scale (diningRoom, maxx div 2, maxy div 2)
Pic.Draw (diningRoom, maxx div 2, maxy div 4, 0)


colour (2)
put "Dialus: 'All right everyone, settle down. By now you all know why you're here and what to expect. No doubt most of you have many questions, but I respectfully ask you to hold"
getch (wait1)
put "Dialus: on to them until afterwards, write them down if you need to.'"
getch (wait1)
colour (white)
loop
    cls
    colour (white)
    put "This was accompanied by laughter from many of the people present. Join in <j> or don't <d>?"
    getch (choice)
    if choice = "j" or choice = "J" then
	colour (white)
	put "You join in with the laughter at Dialus' comment, albeit awkwardly since none of your friends are."
	getch (wait1)
	exit
    elsif choice = "d" or choice = "D" then
	colour (white)
	put "Even though you have a soft spot for Dialus (barely, since you just met), you don't laugh at his attempt to lighten the mood."
	getch (wait1)
	exit
    else
	colour (brightred)
	put "It's not that hard of a decision, make up your mind already."
	getch (wait1)
    end if
end loop

colour (2)
put "Dialus: 'That wasn't meant to be funny, but thank you. Getting back on track, the headmaster will be here in a few minutes to give you the introductory speech.'"
getch (wait1)
put "Dialus: 'Until then, feel free to have a bite to eat.'"
getch (wait1)
colour (white)
put "It is then your gaze is brought to the tables at the side of the room which are loaded with food."
getch (wait1)
colour (2)
put "Dialus: 'Please proceed in a calm fashion and-' But he is cut off as a stampede of hungry teenagers run to get food."
getch (wait1)
put "Dialus '-please leave some for others.' He mutters as everyone lines up."
getch (wait1)

cls

colour (white)
put "You and your friends go get food and then sit down together at one of the tables."
getch (wait1)
colour (36)
put "Phoebe: 'This sucks! I brealy got any food. Stupid tall people taking all the good stuff.' She whines, glaring at Tom."
getch (wait1)
loop 
    cls
    colour (3)
    put "Tom: 'Hey, it's not my fault that I'm tall and happen to be hungry and that you're short.' He says, taking a larger than average bite out of a chicken wing."
    colour (white)
    put "Be polite and offer food (you have a lot) <p>, make a joke at Phoebe's expense <e>, make a joke directed towards Tom <t> or say nothing and laugh <n>?"
    getch (choice)
    if choice = "p" or choice = "P" then
	colour (white)
	put playerName, ": 'Here, you can have some of mine if you want. I took more than I needed since a lot looked good and I didn't know what I wanted.' You tell her as you stick out your plate."
	getch (wait1)
	colour (36)
	put "Phoebe: 'Thank you ", playerName, ".' She says, glaring at Tom even more. 'At least some people here are polite.'"
	getch (wait1)
	colour (3)
	put "Tom: 'Hey, if you're offering...'"
	getch (wait1)
	colour (white)
	put playerName, ": 'You have more food than I do!' You exclaim. "
	getch (wait1)
	colour (43)
	put "Lara: 'And me.' His sister chimes in."
	getch (wait1)
	colour (white)
	put playerName, ": 'Thank you for your support.' You say."
	getch (wait1)
	colour (3)
	put "Tom: 'You people are conspiring against me.' He grumbles, but a few seconds later you all burst out laughing. "
	getch (wait1)
	exit
    elsif choice = "e" or choice = "E" then
	colour (white)
	put playerName, ": 'I propose a toast to being not short.' You say in a light hearted tone, hoping that they get that you're joking and not being mean spirited."
	getch (wait1)
	colour (3)
	put "Tom: 'I second the motion.' He says, grinning, showing understanding at your motives."
	getch (wait1)
	colour (43)
	put "Lara: 'And I third it to make it unanimous.' His sister joins in with an equally large grin."
	getch (wait1)
	colour (36)
	put "Phoebe: 'I hope my power can involve becoming bigger, that would shut all of you up.' But she grins in spite of herself."
	getch (wait1)
	exit
    elsif choice = "t" or choice = "T" then
	colour (white)
	put playerName, ": 'Tom, you have enough food to feed at least two Phoebes, are you sure you need that much?' You say, swiping a piece of cheese off of his plate and onto yours."
	getch (wait1)
	colour (3)
	put "Tom: 'Hey, I'm just a growing boy who needs energy.' He says with a mock serious expression, taking the cheese off of your plate and stuffing it into his mouth before you can react."
	getch (wait1)
	colour (43)
	put "Lara: 'Growing?! Tom, you make both of our parents look like dwarfs, and they aren't even that short!' She says."
	getch (wait1)
	colour (36)
	put "Phoebe: 'Maybe one of them had some hidden giant genes or something.'"
	getch (wait1)
	put playerName, ": 'Giant genes?' You ask, trying to sound as doubtful as possible."
	getch (wait1)
	colour (36)
	put "Phoebe: 'Hey, we just learned about a secret society of super powers. Who knows what's possible anymore?'"
	getch (wait1)
	colour (white)
	put playerName, ": 'I see your point.'"
	getch (wait1)
	exit
    elsif choice = "n" or choice = "N" then
	colour (white)
	put "You just sit there, smile and laugh with your friends."
	getch (wait1)
	exit
    else
	colour (brightred)
	put "Come on, have a conversation. I promise that this one can't lead to a bad ending ;)"
	getch (wait1)
    end if
end loop

cls


Music.PlayFileLoop ("Bell Tower Sound Effect.mp3")
getch (wait1)
Music.PlayFileStop

%Supposed to be Javis walking in, may be out of line on different monitors
var javis : int := Pic.FileNew ("Javis.bmp")
javis := Pic.Scale (javis, 50, 100)
Pic.Draw (javis, maxx div 2 + 320, maxy div 4 + 290, picMerge)

diningRoom := Pic.Scale (diningRoom, maxx div 2, maxy div 2)
Pic.Draw (diningRoom, maxx div 2, maxy div 4, 0)

getch (wait1)

javis := Pic.Scale (javis, 100, 150)
Pic.Draw (javis, maxx div 2 + 320, maxy div 4 + 290, picMerge)

diningRoom := Pic.Scale (diningRoom, maxx div 2, maxy div 2)
Pic.Draw (diningRoom, maxx div 2, maxy div 4, 0)

getch (wait1)

javis := Pic.Scale (javis, 150, 200)
Pic.Draw (javis, maxx div 2 + 320, maxy div 4 + 290, picMerge)

diningRoom := Pic.Scale (diningRoom, maxx div 2, maxy div 2)
Pic.Draw (diningRoom, maxx div 2, maxy div 4, 0)

getch (wait1)
Music.PlayFileStop
colour (42)
put "Javis: 'Greetings everyone! And my apologies for the delay, my legs aren't what they used to be.' He says, smiling."
getch (wait1)
colour (white)
put "This is greeted with scores of laughter from the assemble crowd."
getch (wait1)
colour (42)
put "Javis: 'Yes, yes, we can all laugh at my old age. Anyways, onto what we're all here for.' He says, his tone getting serious."
getch (wait1)
put "Javis: 'By now, I'm sure you all know why you're here; you have the potential to access great powers hidden within you, but for the most part, I'm guessing you have no idea"
getch (wait1)
put "Javis: how or why. The why, is just simple chance of genetics, although there is greater chance if it is hereditary.'"
getch (wait1)
colour (white)
put "This makes you think of what your mother told you about your father, and you wonder if he is somewhere within the school, and that if he is, does he know that you're here?"
getch (wait1)
colour (42)
put "Javis: As for the how, we have a device that can jumpstart your genetics and bring your powers forward. I know that many of you will have questions as to how it works, but"
getch (wait1)
put "Javis: you'll have to save them for later. Now, if you'll follow me, we shall get you your powers.'"
getch (wait1)
colour (white)
put "With that, he turns around and walks back down the hallway he came from. A few seconds later, everyone gets up and follows him."
getch (wait1)

cls

put "As you and everyone proceed down the hallway, you start to wonder what your powers will be. 'Hopefully something cool.' You think to yourself."
getch (wait1)

cls

put "As you and everyone emerge from the tunnel, you enter into a larger room, completely empty except for a giant pillar, right in the centre."
getch (wait1)

cls

var pillar : int := Pic.FileNew ("Pillar.bmp")
pillar := Pic.Scale (pillar, maxx, maxy)
Pic.Draw (pillar, maxx div 10 - 150, maxy div 200, 0)

getch (wait1)
cls
colour (42)
put "Javis: 'This is the device that shall give you your powers. It has been nicknamed by many students, The Power Tower.' He says."
getch (wait1)
colour (49)
put "Student: 'Speaking of other students, where are they? We haven't seen anyone else since we got here.' You hear someone say."
getch (wait1)
colour (42)
put "Javis: 'We bring you here a few days before the older students so you can get to know each other and get somewhat used to your powers. You are also free to come and go from"
getch (wait1)
put "Javis: here and your regular school whenever you wish.'"
getch (wait1)

cls

put "Javis: So, who wants to be the first to get their powers? A word of warning, due to the nature of the process, it might not be comfortable.'"
getch (wait1)
colour (white)
put "Many people throw their hands up in the air, but you decide to wait until later in line."
getch (wait1)
cls
put "Finally, it gets to you."
getch (wait1)
colour (42)
put "Javis: 'Next!' You hear the headmaster yell."
getch (wait1)
colour (white)
put "You walk up to the pillar, and you feel a shift in the air. The closer you get, the more it seems to be charged with electricity."
getch (wait1)
cls
loop
    cls
    put "Act confident <c> or be hesistant <h>?"
    getch (choice)
    if choice = "c" or choice = "C" then
	put playerName, ": 'Here goes nothing.' You say confidently placing your hand on the pillar."
	getch (wait1)
	exit
    elsif choice = "h" or choice = "H" then
	put playerName, ": 'I hope this goes well.' You say while squirming and hesitantly placing your hand on the pillar."
	getch (wait1)
	exit
    else
	getch (wait1)
    end if
end loop

cls

%I was thinking of making a choice of 3 powers, but if I make a sequel, I didn't want to have to make three different parts for each power
put "As your hand makes contact with the pillar, you feel energy surge through you, tensing up all your muscles. You try to pull your hand away but find that you cannot."
getch (wait1)
put "Suddenly the stream of energy increases in force and causes you to scream. The air around you crackles with electricity, and your body feels like it's on fire."
Music.PlayFile ("Dragon Ball Z Scream.mp3")
getch (wait1)
put "After what feels like a few minutes (but was probably only a few seconds) the pain and intense rush of power subsides, but before you are able to regain your bearings,"
getch (wait1)
put "electricity shoots out from your hands and sends you flying into the wall."
getch (wait1)

boxColour := 97

loop
    colour (boxColour)
    Draw.FillBox (0, 0, maxx, maxy, boxColour)
    boxColour := boxColour + 1
    delay (200)
    View.Update
    exit when boxColour = 103
end loop

loop
    colour (boxColour)
    Draw.FillBox (0, 0, maxx, maxy, boxColour)
    boxColour := boxColour - 1
    delay (200)
    View.Update
    exit when boxColour = 97
end loop

getch (wait1)

loop
    cls
    colour (white)
    put "Make an exclamation of pain <e>, say something to show your frustration <f> or make a pun <p>?"
    getch (choice)
    if choice = "e" or choice = "E" then
	colour (white)
	put playerName, ": 'Ow.' You say, dazed from the impact."
	getch (wait1)
	exit
    elsif choice = "f" or choice = "F" then
	colour (white)
	put playerName, ": 'Well that's just great.' You say in an exasperated tone."
	getch (wait1)
	exit
    elsif choice = "p" or choice = "P" then
	colour (white)
	put playerName, ": 'Well that was shocking.' You say, in a bit of a stupor from the impact."
	getch (wait1)
	exit
    else
	colour (brightred)
	put "I'm supposed to be an impartial narrator and not influence your decisions, but I'd personally choose the pun option."
	getch (wait1)
    end if
end loop

cls

colour (white)
put "A few seconds after your grand announcement, you fall unconscious to the sounds of your friends screaming your name."
getch (wait1)

if oldWatch = true then %If you got the watch at the beginning of the game, this ending "the watch ending" plays. If you did not, the game just ends
    put "As you are swimming in the sea of unconsciousness, you dream. You see your father's watch, the one in your pocket, but giant sized. Soon it opens up,"
    getch (wait1)
    put "and a man appears on the surface of the clock face."
    getch (wait1)
    colour (54)
    put "?: ", playerName, ", 'I know you have no reason to believe who I am or to believe what I say if I do, but as your father I felt that it was my duty"
    getch (wait1)
    put "Father: to make this anyways. I always knew that the school would call me back, I just thought that it would be when I was older, after having seen you"
    getch (wait1)
    put "Father: grow up, at least for a bit. I had also thought that I'd be able to tell your mother about this part of my life. However, that was not to be."
    getch (wait1)
    put "Father: I was called back to the school to serve in an emergency situation, and to answer for my past missdeeds. It is because of those misdeeds that I have"
    getch (wait1)
    put "Father: been unable to join you and your mother back at home. However if you're seeing this, it means that you have come to Foxwoods, and gained your powers."
    getch (wait1)
    put "Father: If this is truly the case, I ask that you come to see me, at least once in your time here. I know that I don't deserve it, but I hope you do."
    getch (wait1)
    put "Father: If you decide to, you will find me as the business teacher when school officialy starts. Good bye."
    getch (wait1)
    colour (white)
    put "And with that, the image of the man who says that he's your father vanishes, along with his watch, and everything fades to black."
    getch (wait1)
end if

if not Sys.Exec ("Ending.exe") then
    put "Blah"
    put "error ", Error.LastMsg
end if
