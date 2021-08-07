# TAC Toolkit Platform

## [ENG]

# Introduction
This project is the implementation of an existing design tool: the TAC toolkit.
It was divided into three parts:
*The TAC cards which groups together a set of cards representing the stages of acceptance.
*The personas that allow designers (stakeholders) to have access to archetypes of individuals, and their scenarios.
*The Storyboard is a role-playing board (1 user, 2 designers). This board allows for each step in f the user (the persona)’s journey to reflect on the factors influencing user acceptance (through the TAC cards).
The idea is to create a software: TAC Toolkit platform (also called “TAC Toolkit system”)

<img src="screenshot/TAC%20toolkit%20platform.png?raw=true" width="500">

### How to modify scenario and set of cards
#### modify scenario
To modify the scenario you will have to access the tabletop script.
<img src="screenshot/access%20tabletop%20script.png?raw=true" width="500">

Then change the code from line 29.
<img src="screenshot/change%20scenario.png?raw=true" width="500">

#### add a set of cards
To add a set of cards, you will have to create a new folder.
In this folder add a folder for each card named "card_x" (x is the id of the card).
In each folder "card_x", add a .png for each type (deck, card, card_valid and information).

<img src="screenshot/add%20new%20set%20of%20cards.png?raw=true" width="500">

Take care when you change assets, they might don't look correctly.
You will have to check for each Sprite, if the region is disabled.

<img src="screenshot/region%20enabled.png.png?raw=true" width="500">

### How to make an executable
<img src="screenshot/access%20export%20option.png?raw=true" width="500">
<img src="screenshot/add%20export%20option.png?raw=true" width="500">
<img src="screenshot/export.png?raw=true" width="500">