
//move the card by using the ease function
if(time < duration){
	x = ease_in_out_quint(time,startX,destX-startX,duration);
	y = ease_in_out_quint(time,startY,destY-startY,duration);
	image_xscale = ease_in_out_quint(time,startScaleX,destScaleX-startScaleX,duration);
	image_yscale = ease_in_out_quint(time,startScaleY,destScaleY-startScaleY,duration);
	image_angle = ease_in_out_quint(time,startAngle,destAngle-startAngle,duration);
	time ++;
} else {
	var tempStartX = startX;
	startX = destX;
	destX = tempStartX;
	var tempStartY = startY;
	startY = destY;
	destY = tempStartY;
	
	var tempStartScaleX = startScaleX;
	startScaleX = destScaleX;
	destScaleX = tempStartScaleX;
	var tempStartScaleY = startScaleY;
	startScaleY = destScaleY;
	destScaleY = tempStartScaleY;
	var tempStartAngle = startAngle;
	startAngle = destAngle;
	destAngle = tempStartAngle;
	
	time = 0;
}

