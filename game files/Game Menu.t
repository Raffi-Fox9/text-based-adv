setscreen ("graphics:max;max")
colourback (black)
cls
colour (white)

var save, saveNumber2 : string
var stremin, saveNumber : int
open : stremin, "save.txt", get
get : stremin, saveNumber
saveNumber2 := intstr(saveNumber)
save := saveNumber2 + ".exe"

var titleFont : int
titleFont := Font.New ("Algerian:50")
Font.Draw ("A Life at Foxwoods Episode 1", 250, 600, titleFont, white)

var wait1 : string (1)
var choice : string (1)
locate (20, 60)
put "Press <n> to start a new game or press <c> to continue from your last save" ..
getch (choice)

if choice = "n" or choice = "N" then
    if not Sys.Exec ("1.exe") then
	put "Blah"
	put "error ", Error.LastMsg
    end if
elsif choice = "c" or choice = "C" then
    if not Sys.Exec (saveNumber2) then
	put "Blah"
	put "error ", Error.LastMsg
    end if
end if    
