This app allows the user to play a simple slot machine game:

The first tab will allow the user to play a 3-Digit Slot Machine.
The second tab will allow the user to play a 5-Digit Slot Machine.

1) Each tab should have:
The appropriate number of digits.
A Spin button.
A Reset button.
A Score label.

2) You will also have a History view which should be accessible from both tabs. This view will display all of the spins from your game, including the colors.

You will need to have a Digit class that represents each digit. The properties of each digit are:
Each digit can be in the range 0-9.
Each digit can have one of the following colors:
Red
Blue
Green
Purple

3) You will need to have a SlotMachineGame class that manages the spinning and the score. The SlotMachineGame should:
Manage the changing of the digits.
Manage the score as follows:
A new game starts with a score of 100.
Each spin costs the player two points.
All digits equal and colors equal (Ex. 5 5 5 or 2 2 2 2 2 ) the user earns 100 points in the 3-Digit game and 500 points in the 5-Digit game.
All colors equal but digits differ (Ex. 3 5 7 or 1 4 9 3 5 ) the user earns 25 points in the 3-Digit game and 125 points in the 5-Digit game.
All digits equal but colors differ ( 7 7 7 or 1 1 1 1 1 ) the user earns 50 points in the 3-Digit game and 250 points in the 5-Digit game.
When the user has a score less than 2, the Spin button should be disabled.
Keep a history of each spin and make it available to the History View during segue.

4) Pressing the Spin button should cause all the digits to change to random digits and random colors.

5) Pressing the Reset button should cause the game to reset the score to 100 and erase the previous game's history.

6) You should use Auto Layout so your game can be used in both Portrait as well as Landscape mode.
