setscreen ("graphics:max;max")
colourback (black)
cls
colour (white)

var save, saveNumber2 : string
var stremin, saveNumber : int
open : stremin, "save.txt", put
put : stremin, "4"
close: stremin

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

colour (6)
put "Qkwone: 'And here we are.'"
getch (wait1)
colour (white)
put playerName, ": 'I'd rather not do that anytime soon again.' You say, feeling slightly nauseous'"
getch (wait1)
put "He chuckles and then tells you to go on inside the main hall, you got here late and the headmaster is about to give his introductory speech"
getch (wait1)
put "You hesitate for a moment, then walk inside. Instantly you get bombarded with a massive wall of sound. The room is filled with people."
getch (wait1)
put playerName, ": 'There's so many people' You mutter under your breath."
getch (wait1)
colour (36)
put "?: 'Yeah, that's what I thought too.'"
getch (wait1)

cls

var phoebe : int := Pic.FileNew ("Phoebe.bmp")
phoebe := Pic.Scale (phoebe, maxx div 2, maxy)
Pic.Draw (phoebe, maxx div 2 - 270, 0, 0)

getch (wait1)

colour (white)
put playerName, ": 'God!' You say with a start. 'What is with people in this place just appearing out of nowhere?' You say, almost as a whine."
getch (wait1)
loop
    cls
    colour (3)
    put "?: 'Maybe it's just the type of people this place attracts.' You hear someone with an English accent say."
    colour (white)
    put "React startled <s>, annoyed <a> or exasperated <e>?"
    getch (choice)
    if choice = "s" or choice = "S" then
	colour (white)
	put playerName, ": 'Gah! This is what I mean!' You say, turning around to find the source of the voice."
	getch (wait1)
	exit
    elsif choice = "a" or choice = "A" then
	put playerName, ": 'That does not help. Like, at all.' You say irritably as you turn around to see who spoke."
	getch (wait1)
	exit
    elsif choice = "e" or choice = "E" then
	put playerName, ": *Sigh* 'This is exactly what I mean.' You say and turn around slowly to discover the speaker."
	getch (wait1)
	exit
    else
	put "You think about how to respond."
	getch (wait1)
    end if
end loop

cls

%Section is meant to give illusion of player turning around.

phoebe := Pic.Scale (phoebe, maxx div 2, maxy)
Pic.Draw (phoebe, maxx div 2 - 270, 0, 0)

getch (wait1)

cls

phoebe := Pic.Scale (phoebe, maxx div 2, maxy)
Pic.Draw (phoebe, maxx div 4 - 270, 0, 0)

getch (wait1)

cls

getch (wait1)

var tom : int := Pic.FileNew ("Tom.bmp") %Should look bigger than Phoebe
tom := Pic.Scale (tom, maxx div 2, maxy - 100)
Pic.Draw (tom, maxx div 2 + 300, maxy div 4 - 200, 0)

getch (wait1)

cls

tom := Pic.Scale (tom, maxx div 2, maxy - 100)
Pic.Draw (tom, maxx div 2 - 400, maxy div 4 - 200, 0)

getch (wait1)

cls

colour (3)
put "?: 'Sorry, guess I got a bit ahead of myself, I have a tendancy to do that sometimes. Though most people think otherwise beacause I'm big so they think I'm slow," 
getch (wait1)
put "?: but I'm actually quite fast and tend to talk a lot and just blather on and...'"
getch (wait1)
colour (36)
put "?:'Tom! You're doing it again!' You hear yet another person yell."
% Create another character, someone who already has their powers and can turn into "small" animals (foxes, wolves, rabbits, birds)
getch (wait1)
colour (white)
put playerName, ": *Facepalm* 'I give up.' You say as you sit down on the floor."
getch (wait1)
colour (36)
put "?: 'I guess that was poor timing on my part, my apologies.' This new, unknown voice says."
getch (wait1)
colour (white)
put "You realize that they have a similar accent to Tom's. It strikes you then that a large majority of the people here are English, in fact, the people that you know of without"
getch (wait1)
put "English accents are yourself, Qkwone and the girl in front of you."
getch (wait1)

cls

var wolfy : int := Pic.FileNew ("Wolf1.bmp")
wolfy := Pic.Scale (wolfy, 1000, 900)
Pic.Draw (wolfy, maxx div 4.5, maxy div 20, 0)

getch (wait1)

cls

var boxColour : int := 16

loop
    colour (boxColour)
    Draw.FillBox (0, 0, maxx, maxy, boxColour)
    boxColour := boxColour + 1
    delay (100)
    View.Update
    exit when boxColour = 32
end loop

cls

var lara : int := Pic.FileNew ("Lara.bmp")
lara := Pic.Scale (lara, maxx div 3, maxy - 80)
Pic.Draw (lara, maxx div 3 + 20, maxy div 8 - 80, 0)

getch (wait1)

put playerName, ": 'So I'm going to take a wild guess and say that your're a shapeshifter like Qkwone.' You say."
getch (wait1)
colour (43)

loop

    cls
    
    colour (43)
    put "?: 'Well, kinda. He can only turn into a dragon, I can turn into small predatory creatures like a wolf. Impressed?' She asks."
    colour (white)
    put "Yes <y>, I guess <g>, not really <n> or depends <d>"
    getch (choice)
    if choice = "y" or choice = "Y" then
	put playerName, ": Yeah, it's pretty impressive."
	getch (wait1)
	colour (43)
	put "?: 'Hah! Yes! Tom! You owe me another $5.'"
	getch (wait1)
	exit
    elsif choice = "g" or choice = "G" then
	colour (white)
	put playerName, ": 'I mean, I guess. It's only the third power I've seen so there's not much I can compare it to.' You say."
	getch (wait1)
	colour (43)
	put "?: 'Oh. Tom!'"
	getch (wait1)
	colour (3)
	getch (wait1)
	put "Tom: Doesn't count for our bet!'"
	exit
    elsif choice = "n" or choice = "N" then
	colour (white)
	put playerName, ": Not really. Like, I've seen people teleport and turn into dragons, my wow limit has gone up a bit. Sorry."
	getch (wait1)
	colour (43)
	put "?: 'Aww. Welp, can't win em all.'"
	getch (wait1)
	exit
    elsif choice = "d" or choice = "D" then
	colour (white)
	put playerName, ": 'Depends. What else can you shapeshift into?' You ask."
	getch (wait1)
	colour (43)
	put "?: 'Quite a few things, although it does take some effort so I'd rather not give a demonstration. Maybe later.'"
	getch (wait1)
	exit
    else
	put "You stand there thinking. Don't take too long, you'll make things awkward."
	getch (wait1)
    end if

end loop

colour (43)
put "?: 'I'm Lara, by the way. She says."
getch (wait1)
colour (3)
put "Tom: 'I'm Tom, though you've probably gathered that by now.' He says while laughing. 'My sister and I,' He says while gesturing to Lara 'have an ongoing bet about if people are impressed by "
getch (wait1)
put "Tom: her powers. Most people get theirs after the opening ceremonies.'"
getch (wait1)
colour (43)
put "Lara: 'I've won $15 so far.'"
getch (wait1)
colour (36)
put "?: 'And I'm Phoebe. I met these two after Qwone dropped me off. They found me looking for something to eat and took me to the cafeteria-bar thing.'"
getch (wait1)
colour (white)
put "At the mention of food, your stomach rumbles."
getch (wait1) 
put playerName, ": 'It occurs to me that I never ate breakfast.'"
getch (wait1)
colour (36)
put "Phoebe: Well, how about we go get something to eat?'"
getch (wait1)
colour (white)
put playerName, ": 'I whole heartedly agree.' You say with a big grin on your face."
%Meant to add in a bar section after getting powers, but decided not to for time reasons and to save it if I ever make a part 2
getch (wait1)

cls

colour (3)
put "Well then let's g-"
delay (200)

Music.PlayFileLoop ("Bell Tower Sound Effect.mp3")

getch (wait1)

cls

colour (43)
put "Lara: We'll have to put that off for later, it's time for the opening ceremony.'"
getch (wait1)
Music.PlayFileStop

if not Sys.Exec ("5.exe") then
    put "Blah"
    put "error ", Error.LastMsg
end if
