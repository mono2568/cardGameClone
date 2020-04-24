//make the cards bounce when the cards are in player's hand
if(timeW < durationW and inHands == true and moveBounce == true and discarded == false){
	x = ease_in_out_quint(timeW,startXW,destXW-startXW,durationW);
	y = ease_in_out_quint(timeW,startYW,destYW-startYW,durationW);
	image_xscale = ease_in_out_quint(timeW,startScaleXW,destScaleXW-startScaleXW,durationW);
	image_yscale = ease_in_out_quint(timeW,startScaleYW,destScaleYW-startScaleYW,durationW);
	image_angle = ease_in_out_quint(timeW,startAngleW,destAngleW-startAngleW,durationW);
	timeW ++;
} else {
	var tempStartX = startXW;
	startXW = destXW;
	destXW = tempStartX;
	var tempStartY = startYW;
	startYW = destYW;
	destYW = tempStartY;
	
	var tempStartScaleX = startScaleXW;
	startScaleXW = destScaleXW;
	destScaleXW = tempStartScaleX;
	var tempStartScaleY = startScaleYW;
	startScaleYW = destScaleYW;
	destScaleYW = tempStartScaleY;
	var tempStartAngle = startAngleW;
	startAngleW = destAngleW;
	destAngleW = tempStartAngle;
	
	timeW = 0;
}

//change sprite
if(faceUp)
{
	if(type == global.rock){
		sprite_index = spr_rock;
	}else if(type == global.paper){
		sprite_index = spr_paper;
	}else if(type == global.scissors){
		sprite_index = spr_scissors;	
	} 
}else{
	sprite_index = spr_cardBack;
}

//move the card by using the ease function
if(time < duration and startMove == true){
	if(faceUp == false){
		// create shadow when the cards are moving face down
		instance_create_layer(x,y,"Instances",obj_card_shadow);
	}
	x = ease_out_quad(time,startX,destX-startX,duration);
	y = ease_out_quad(time,startY,destY-startY,duration);
	
	time ++;
} else {
	startMove = false;
	time = 0;
}





//rotate the card when the player hovers their mouse on the card
if(timeF < durationF and moveBounce == false){
	
	image_angle = ease_out_quad(timeF,startAngleF,destAngleF-startAngleF,durationF);
	
	
	timeF ++;
} else {
	var tempStartX = startAngleF;
	startAngleF = destAngleF;
	destXF = tempStartX;
	timeF = 0;
}


//select the card to use
if(inHands == true and goToSetPosition == false and global.isPicking == true and discarded == false){
	if(mouse_x+10 > x and mouse_x < x + sprite_width-20-70 and mouse_y > y-10 and mouse_y < y + sprite_height-10){
			if(moveBounce == true){
				startAngleF = image_angle;
				destAngleF = image_angle + 360;
				audio_play_sound(snd_start_rotate,99,false);
			}
			moveBounce = false;
			
			//move the card when the card is selected
			if(mouse_check_button_pressed(mb_left)and startMove == false){
				global.isPicking = false;
				startX = x;
				destX = obj_cardManager.x + 450;
				startY = y;
				destY = obj_cardManager.y+70;
				audio_play_sound(snd_shot,99,false);
				startMove = true;
				goToSetPosition = true;
				//store the card type to a global variable
				global.ansP = type;
				chosed = true;
				
				//select and open cpu card
				obj_cardManager.alarm[2] = 60;
				
			}
	}else{
			image_angle = 0;
			moveBounce = true;
	}	
}