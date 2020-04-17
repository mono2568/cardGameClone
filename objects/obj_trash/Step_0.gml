if(timeW < durationW){
	//x = ease_in_out_bounce(timeW,startXW,destXW-startXW,durationW);
	//y = ease_in_out_bounce(timeW,startYW,destYW-startYW,durationW);
	//image_xscale = ease_in_out_quint(timeW,startScaleXW,destScaleXW-startScaleXW,durationW);
	//image_yscale = ease_in_out_quint(timeW,startScaleYW,destScaleYW-startScaleYW,durationW);
	
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
	
	timeW = 0;
}

if(debugCount < 1){
if(time < duration){
	
	image_xscale = ease_in_out_quint(time,startScaleX,destScaleX-startScaleX,duration);
	image_yscale = ease_in_out_quint(time,startScaleY,destScaleY-startScaleY,duration);
		
	time ++;
} else {
	/*
	if(countEase == 0){
		countEase = 1;
		time = 0;
		var tempStartScaleX = startScaleX;
		startScaleX = destScaleX;
		destScaleX = tempStartScaleX;
		var tempStartScaleY = startScaleY;
		startScaleY = destScaleY;
		destScaleY = tempStartScaleY;
		
		
	}else if(countEase == 1){	
		startMove = false;
		time = 0;
		
		
		
	}*/
	var tempStartScaleX = startScaleX;
	startScaleX = destScaleX;
	destScaleX = tempStartScaleX;
	var tempStartScaleY = startScaleY;
	startScaleY = destScaleY;
	destScaleY = tempStartScaleY;
	time = 0;
	countEase++;
	if(countEase == 2){
		debugCount ++;
		countEase = 0;
	}

}
}




if(timeF < durationF){
	
	image_angle = ease_in_out_quint(timeF,startAngleF,destAngleF-startAngleF,durationF);
	
	
	timeF ++;
} else {
	
	var tempStartX = startAngleF;
	startAngleF = destAngleF;
	destAngleF = tempStartX;
	
	timeF = 0;
}
