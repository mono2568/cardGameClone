//storing the card info
deck = ds_list_create();

//enumerator for card types
global.rock = 0;
global.paper = 1;
global.scissors = 2;
global.maxCardsInDeck = 24;

//other variables
global.startShuffle = false;
global.startDeal = false;
//to count the card which is dealt now
global.cardNow = 0;
global.numOfHands = 3;
global.i = 0; //for counting loop
//start position of the card
global.startY = y;
//global variable for the loop in alarm 4
global.alarm4Loop = false;
global.countDiscard = 0;
global.gameEnd = false;
global.startDiscard = false;
//discard card x position
discardPosX = 900;

//assign card type
for(var counter = 0; counter < global.maxCardsInDeck; counter++){
	var newCard = instance_create_layer(x,y,"Instances",obj_card);
	//define what type of card it should be
	newCard.type = floor(3*counter/global.maxCardsInDeck);
	//lay the deck of card
	newCard.y += counter*2;
	ds_list_add(deck,newCard);
}
//shuffle the card
randomize();
ds_list_shuffle(deck);

//organize the card
for(var counter = 0; counter < global.maxCardsInDeck; counter++){
	var newCard = ds_list_find_value(deck,counter);
	newCard.depth = counter+50;
	newCard.y = global.startY + counter*2;
	newCard.debugNum = counter;

}


global.startShuffle = true;
global.startDeal = true;