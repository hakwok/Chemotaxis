Mover fred;
Mover [] bubbles = new Mover [10];
void setup(){
  size(1000, 1000);
  frameRate(75);
  background(50);
  fred = new Mover();
  for(int i =0; i< bubbles.length; i++){
    bubbles[i] = new Mover();
  }
}
void draw(){
  background(50);
  for (int i = 0; i < bubbles.length;i++){
    bubbles[i].move();
    bubbles[i].show();
  }
  fred.move();
  fred.show();
}
class Mover{
  int myX, myY, myColor;
  Mover()
  {
    myX= 250;
    myY= 250;
    myColor = color(myX - (int)((Math.random()*50)-3), myX - (int)((Math.random()*40)-3), myY - (int)((Math.random()*50)-3));
  }
  void move()
  {
    if (myX > mouseX)
      myX = myX - (int)((Math.random()*20)-3);
    else if (myX < mouseX)
      myX = myX + (int)((Math.random()*20)-3);
    if (myY > mouseY)
      myY = myY - (int)((Math.random()*20)-3);
    else if (myY < mouseY)
      myY = myY + (int)((Math.random()*20)-3);
  }
  void show(){
    // fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    fill(myColor);
    noStroke();
    ellipse(myX, myY, 50, 50);
  }
}
