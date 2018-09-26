int num = (int)(Math.random()*7);
void setup(){
	size(500,500);
	noLoop();
}

void draw(){
	background(#E2EA72);
	Die bob = new Die(50,50);
	bob.show();
}

void mousePressed(){
	redraw();
}

class Die{
	//declare variables
	int myX, myY;

	Die(int x, int y){
		//This is the constructor
		//intitizlize the variables
		myX = x;
		myY = y;
	}
	void roll(){
		textSize(50);
		fill(0);
		text(num,myX,myY);
	}
	void show(){
		//creates the die
		noStroke();
		fill(255);
		rect(myX,myY,50,50,10);
		roll();
	}
}