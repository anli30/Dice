void setup(){
  noLoop(); 
  size(500,550);
}

void draw(){
  background(#77BBD3);
  int sum = 0;
  for(int i = 20; i < 450; i += 100){
    for(int j = 20; j < 450; j += 100){
        Die one = new Die(i,j);
        one.show();
        sum = sum + one.num;
    }
  }
  fill(0);
  textSize(30);
  text("sum: " + sum, 170,520);
}

void mousePressed(){
  redraw();
}

class Die{
  //variables
  int myX,myY,num;
  Die(int x, int y){
    myX = x;
    myY = y;
    roll();
  }
  void roll(){
    num = (int)(Math.random()*6)+1;
  }
  void show(){  
    fill(255);
    rect(myX,myY,60,60,10);
    fill(0);
    if(num == 1){
      ellipse(myX+30,myY+30,10,10);
    }else if(num == 2){
      ellipse(myX+45,myY+15,10,10);
      ellipse(myX+15,myY+45,10,10);
    }else if(num ==3){
      ellipse(myX+30,myY+30,10,10);
      ellipse(myX+45,myY+15,10,10);
      ellipse(myX+15,myY+45,10,10);
    }else if(num == 4){
      ellipse(myX+15,myY+15,10,10);
      ellipse(myX+45,myY+45,10,10);
      ellipse(myX+45,myY+15,10,10);
      ellipse(myX+15,myY+45,10,10);
    }else if(num == 5){
      ellipse(myX+15,myY+15,10,10);
      ellipse(myX+45,myY+45,10,10);
      ellipse(myX+45,myY+15,10,10);
      ellipse(myX+15,myY+45,10,10);
      ellipse(myX+30,myY+30,10,10);
    }else{
      ellipse(myX+15,myY+15,10,10);
      ellipse(myX+45,myY+45,10,10);
      ellipse(myX+45,myY+15,10,10);
      ellipse(myX+15,myY+45,10,10);
      ellipse(myX+15,myY+30,10,10);
      ellipse(myX+45,myY+30,10,10);
    }
  }
}
