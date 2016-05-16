var numberOfBubbles = 50; // change this as you see fit

function bubble(objName,x,y,z) {
	this.name = objName;
	this.x = x;
	this.y = y;
	this.z = z;
	this.count = Math.random(40);
	this.remX = x;
	this.remY = y;
	this.moveUp = moveUp;
	this.loopID = objName+""+x+""+y+""+z;
	makeDiv(objName,x,y,'<img src="images/bubble'+z+'.gif">');
}

function randomizeX() { return randomize((browserWidth()-40)); }
function randomizeY() { return (browserHeight()-randomize(40)-40); }

function moveUp() {
	this.count+=Math.random()*10;
	this.y -= this.z;
	this.x+=(Math.cos(this.count));
	if (this.y<-20) { this.y = randomizeY();this.x = randomizeX(); }
	move(this.name,this.x,this.y);
}


// have to do it like this so it wont get look bad in FireFox
function startBubbles(nmCount) {
	if (nmCount<numberOfBubbles) {
		var bubbleNm = "bubble"+nmCount;
		var ranX = randomizeX();
		var ranY = randomizeY();
		var ranZ = randomize(3);
		eval(bubbleNm+' = new bubble("'+bubbleNm+'",ranX,ranY,ranZ);  ');
		eval(bubbleNm+'.loopID = setInterval("'+bubbleNm+'.moveUp();",20);  ');
		nmCount++;
		setTimeout('startBubbles('+nmCount+');',300);
	}
}

