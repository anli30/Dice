void setup()
{
	noLoop();
  size(500,500);
}
void draw()
{
	background(197);
  Die start = new Die(50,50);
  start.show();
  
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
  int num,myX,myY;
	
	Die(int x, int y) //constructor
	{
		num = (int)(Math.random()*6) +1;
    myX = x;
    myY = y;
	}
  void roll(){
    
  }
	void show()
	{
		for(int i = 0; i < 20; i++){
      for(int j = 0; j < 20; j++){
        ellipse(j,10,40,40);
        j = j + 50;
      }
    }
	}
}