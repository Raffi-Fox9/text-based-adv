setscreen ("graphics:max;max")
colourback (black)
cls
colour (white)

var save, saveNumber2 : string
var stremin, saveNumber : int
open : stremin, "save.txt", put
put : stremin, "1"
close: stremin

proc lameEnding % Don't know how to get the game to exit from here, just made the narrator spiteful and make the user manually close the window
    var choice : string (1)
    cls
    colour (brightred)
    put "If that's really what you want, fine. But you're going to have to close this game yourself."
    loop
	getch (choice)
	if choice = "a" then
	    put "I don't care what you press, you wanted the lame ending, you're going to have to do the work of closing the gane."
	else
	    put "I don't care what you press, you wanted the lame ending, you're going to have to do the work of closing the gane."
	end if
    end loop
end lameEnding

var wait1 : string (1)

colour (brightred)
put "Before we begin, I have one very important question to ask you:"

getch (wait1)

var playerName : string
var friendName : string
put "What is your name? " ..
get playerName

open : stremin, "player name.txt", put
put : stremin, playerName

put "Thank you."
getch (wait1)

cls

colour (white)
var choice : string (1)
Music.PlayFileLoop ("Alarm Clock Rings Sound Effect.mp3")
put "You wake up. The bright morning sun shines in through your window, but something seems different."
getch (wait1)
Music.PlayFileStop
colour (yellow)
put "'Mom: ", playerName, ", time to wake up! Hurry, your pancakes are getting cold.'"
getch (wait1)
colour (white)
put playerName, ": 'Coming mom! Just a second!' You respond as you hurrily throw on your clothes and run downstaits. Your thoughts of something seeming different are dispelled by your hunger."
getch (wait1)
colour (yellow)
put "Mom: 'A letter came for you came in the mail today, I'm not sure who it's from, but it looked very official. I left it on the table in the living room.'"
getch (wait1)
colour (white)
put "You go brush your teeth and then head back downstairs. Remebering what your mom said you go into the living room. Just as she said, there's a white envelope on the table"
getch (wait1)
put "with a red wax seal."

getch (wait1)

cls

loop

    var letter1 : int := Pic.FileNew ("Letter-closed.bmp")
    letter1 := Pic.Scale (letter1, maxx div 2, maxy - 100)
    Pic.Draw (letter1, 800, maxy div 4, 0)

    colour (white)

    put "Rip open the envelope <r>, cut open the envelope <c> or carefully open it <o>?"
    getch (choice)
    if choice = "r" or choice = "R" then
	put "You try to rip open the envelope, but despite your best efforts, it stays intact. You find this strange, and decide to attenpt a different method."
	getch (wait1)
	cls
    elsif choice = "c" or choice = "C" then
	put "You grab an envelope opener and try to cut it open. To your surprise, the cutter does not pierce the envelope."
	getch (wait1)
	cls
    elsif choice = "o" or choice = "O" then
	put "You break the seal on the envelope"
	var letter2 : int := Pic.FileNew ("Letter-open.bmp")
	letter2 := Pic.Scale (letter2, maxx div 2, maxy - 100)
	Pic.Draw (letter2, 800, maxy div 4, 0)
	exit
    else
	put "You feel a strange need to open the envelope."
	getch (wait1)
	cls
    end if
end loop
getch (wait1)

cls

put "Once the seal is broken the envelope opens on it's own and the letter slides out. It reads:"
var letterFont : int
letterFont := Font.New ("Algerian:16") %Drew out every line of the letter, wanted it to look like an official invitation with fancy writing
Font.Draw ("Greetings! If you are reading this letter, that means that you are someone special, someone with great power.", maxx div 25, 670, letterFont, white)
Font.Draw ("If you are suspicious of the validity of this letter, just think to how you opened it. The power you will have", maxx div 25, 650, letterFont, white)
Font.Draw ("is entirely random, but each person's is unique. You and your friends may have similar powers, but no two powers work the same way.", maxx div 25, 630, letterFont, white)
Font.Draw ("These letters are sent out once a year to those with the potential to access their powers.", maxx div 25, 610, letterFont, white)
Font.Draw ("We are a school that trains people to properly use their powers and adapt to the new life they will have because of them.", maxx div 25, 590, letterFont, white)
Font.Draw ("You will not have heard of us, but you may have read stories that have people in similar situations. We are the inspiration behind them.", maxx div 25, 570, letterFont, white)
Font.Draw ("Henceforth, you are cordially invited to attend our school, Foxwoods. If you wish to attend, merely sign 'Yes' the bottom of the", maxx div 25, 550, letterFont, white)
Font.Draw ("page. If not, write 'No' and all memories of this letter shall be expunged from your brain.", maxx div 25, 530, letterFont, white)
Font.Draw ("Sincerely, Headmaster Javis.", maxx div 2, 490, letterFont, white)
getch (wait1)

cls

put "You are startled by the strange contents of the letter. You think that it must be some joke, but still, you are intrigued since the envelope would only open when you broke"
getch (wait1)
put "the seal and the letter came out by itself."
getch (wait1)
put "You decide to ask your mother about the letter."
getch (wait1)
put "She says that your father had told her stories about going to a strange high school, but she had always assumed that they'd been just that, stories. When he vanished when you"
getch (wait1)
put "were only two years old leaving a note that said that he had been called back to his old home, he had just been writing a stupid excuse for his own benefit. Now she's not so"
getch (wait1)
put "sure."
getch (wait1)
put "She said that she hadn't heard anything from him againg but if this is where he was, maybe there was a chance of finding him and getting an explanation. Howevver she won't"
getch (wait1)
put "force you to go."
getch (wait1)
colour (yellow)
put "Mom: 'Tt's entirely up to you, I don't want you to do anything that you don't want to just for my sake.'"
getch (wait1)

cls

proc lameEndingRedo
    colour (brightred)
    put "Good choice."
    getch (wait1)
    cls
end lameEndingRedo

loop
    cls
    colour (white)
    put "You decide that it's time to make a choice; accept the invitation <a> or refuse <n>?"
    getch (choice)
    if choice = "a" or choice = "A" then
	put "You hesitate, but then write 'Yes' at the bottom of the letter. It instantly vanishes, being replace by a note that says 'Thank you.' and that someone will come to get you"
	getch (wait1)
	put "in a few days."
	getch (wait1)
	exit
    elsif choice = "n" or choice = "N" then
	put "You write 'no' at the bottom of the letter. It dissapears with an almost sad noise and is replaced with a note that says 'We respect your decision'. Soon you forget about the"
	getch (wait1)
	put "entire thing ever happened."
	getch (wait1)
	cls
	colour (brightred)
	put
	    "Congradulations. you technically survived a day of high school, since you never actually attended, but this is the lame ending and I'm going to assume that you don't want that, so I'll give you another chance."
	getch (wait1)
	put "Redo letter decision <r> or end the game the lame way <e>?"
	loop
	    getch (choice)
	    if choice = "r" or choice = "R" then
		lameEndingRedo %Runs the procedure that puts the game back to the choice of whether or not to sign the letter. The player can stick themselves in an infinite loop, but it's only if they keep choosing the same two choices (refuse and redo)
		exit
	    elsif choice = "e" or choice = "E" then
		lameEnding %Runs the procedure that is the "lame ending" to the game (not a real ending, but a funny thing for those who actively try to avoid progressing
		exit
	    else
		put "Hurry up and choose, we don't have all day. Acutally I do, but I'm just a non-sentient line of text. It's your life that you're wasting."
		getch (wait1)
	    end if
	end loop
    end if
end loop

cls

if not Sys.Exec ("2.exe") then
    put "Blah"
    put "error ", Error.LastMsg
end if

