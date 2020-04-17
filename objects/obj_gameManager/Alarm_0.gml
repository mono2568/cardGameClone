// decide which player won the game
// 0 is draw, 1 is player win, 2 is cpu win
if(global.ansP == 0){
	if(global.ansC == 0){
		global.result = 0;
	}
	if(global.ansC == 1){
		
		global.result = 2;	
	}	
	if(global.ansC == 2){
		global.result = 1;
	}
}
if(global.ansP == 1){
	if(global.ansC == 0){
		global.result = 1;
	}
	if(global.ansC == 1){
		global.result = 0;	
	}	
	if(global.ansC == 2){
		global.result = 2;
	}
}

if(global.ansP == 2){
	if(global.ansC == 0){
		global.result = 2;
	}
	if(global.ansC == 1){
		global.result = 1;	
	}	
	if(global.ansC == 2){
		global.result = 0;
	}
}

if(global.result == 1){
	audio_play_sound(snd_win,99,false);
	global.scoreP ++;
}else if(global.result == 2){
	audio_play_sound(snd_lose,99,false);
	global.scoreC ++;	
}
//discard cards
obj_cardManager.alarm[4] =  30;
global.startDiscard = true;
global.i = 0;