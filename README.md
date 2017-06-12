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

Bugs:
There is a bug in the dragging function. Whenever you are at a hand and you have selected a tile, you cannot cross over any other tile in the hand because you will pick up the other tile that you hovered over. If you drop the tile on a cell in the board that is filled, the cell will sometimes eat up the tile, without printing it. Also, the placementchecker is faulty and you can play your tiles anywhere on the board, without it being connected to the locked pieces on the board. 

Dev Log:

