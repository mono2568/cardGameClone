//select a random card from the cpu'hand and move it
var card = ds_list_find_value(deck,choose(global.cardNow-6,global.cardNow-5,global.cardNow-4));
card.startX = card.x;
card.destX = obj_cardManager.x + 450;
card.startY = card.y;
card.destY = obj_cardManager.y-70;
audio_play_sound(snd_shot,99,false);
card.startMove = true;
card.open = true;
card.chosed = true;
//store the cpu's card which was randomly selected
global.ansC = card.type;
//open the cpu's card
alarm[3] = 80;


