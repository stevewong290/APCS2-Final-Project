# APCS2-Final-Project
APCS2 final project
Game: Scrabble
Description (modified from Wikipedia)
Scrabble is a word game that is played between people and you place tiles on a 15x15 gameboard. Each tile has a value assigned to it based on the letter. Tiles must form words in a crossword fashion. Words that are played must go left to right or top to bottom. Words played must be valid and from the English Dictionary. 

Features:
Dictionary- there is a textfield where you can write words that you believe are words and it will constantly tell you whether the word in the textfield is valid or not.
Dragging- you are able to drag tiles from your hand to the board and from on the board to different squares among the broad. By dropping the tile off the board, the tile automatically returns back tot he hand that it was retrieved from. 
Point Counter- keeps track of your points and is used to calculate new score after every turn. Whenever you play your hand, you only get points from the tiles you played and not from the table environment. 
Scramble- scramble just scrambles all the tiles in the current player's hand
End Turn- Updates access permission so only the current player can play game mechanics, also helps keep track of when to end game, when both player passes their turn,game ends
Screens- there is a start screen, game screen, and end screen that switches depending on if statements to trigger next state.

Bugs:
There is a bug in the dragging function. Whenever you are at a hand and you have selected a tile, you cannot cross over any other tile in the hand because you will pick up the other tile that you hovered over. If you drop the tile on a cell in the board that is filled, the cell will sometimes eat up the tile, without printing it. Also, the placementchecker is faulty and you can play your tiles anywhere on the board, without it being connected to the locked pieces on the board. 

Dev Log:

Steve:

5/30:
Finished Tile Class
Started WordBank class for dictionary and scanner for the words

5/31:
Made the binarySearch for checking words in dictionary
continued working on board class
finished wordbank with longestWord, checkWord, sort, search

6/1:
added functions to Board

6/5:
new scanner for board
finished board class

6/6:
special tile baord
bestWord (started)

6/8:
spotChecker for bestWord

6/9:
fixed scanners and stuff for it to work with processing

6/10:
got all the physical dragging of tiles to work

6/11:
fixed up and tweaked dragging
lock  and end turn permissions updated
did the dragging for cell to hand, hand to cell, and cell to cell
Stephanie:
5/30:
Started Board Class (but eventually we decided to change it to a cell object class)
made tileBag.txt for creating bag of tiles
Action class:
       made the scanner work for tilebag
       toString for bag
5/31:
Officially done with making bag and Tile

6/1:
Started player class

6/2:
updated variable types, makeBag, draw, and updateBag is done

6/5:
fixed a big merge conflict (RIP me)

6/6:
finished exchange and scramble
finished object classes and added accessors
playTile
drawTiles

6/8:
converted code into processing
reorganized code

6/9:
created and finished cell class instead of board
screated the scrabble class

6/10:
made all the physical display attributes of the game:
     displayBoard
     displayHands
     controlP5 mechanics (GUI Stuff)

6/11:
finished checkWord and checkPlacement
made start screens, fixed bugs, implemented turns
checkPlace, scramble, bagCount works
scores are being calculated
scores are being displayed
end game is coded


