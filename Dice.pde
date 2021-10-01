
void setup()
{
  size(600, 600);
  noLoop();
  textAlign(CENTER);
}
void draw()
{
  background(0);
  int berryCount = 0;
  for(int y = 60; y < 500; y+= 80){
    for(int x = 60; x < 600; x+= 80){
      Muffin blue = new Muffin (x, y);
      blue.roll();
      blue.show();
        if (blue.rollNum == 1){
         berryCount = berryCount + 1;
      } else if (blue.rollNum == 2){
         berryCount = berryCount + 2;
      } else if (blue.rollNum == 3){
         berryCount = berryCount + 3;
      } else if (blue.rollNum == 4){
         berryCount = berryCount + 4;
      } else {
        berryCount = berryCount + 5;
      }
    }
  }
  fill(255);
  textSize(30);
  text("# of Blueberries: " + berryCount, 300, 562);
}
void mousePressed()
{
  redraw();
}
class Muffin //models one single dice cube
{
  //variable declarations here
  int myX, myY, rollNum;
  
  Muffin(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;
    rollNum = 1;
    
  }
  void roll()
  {
    //your code here
    rollNum = (int)(Math.random() * 5) + 1;
  }
  void show()
  {
    //wrapper
    fill((int)(Math.random()*100) + 155, (int)(Math.random()*100) + 155, (int)(Math.random()*100) + 155);
    quad(myX - 30, myY, myX + 30, myY, myX + 20, myY + 35, myX - 20, myY + 35);
    bezier(myX + 20, myY + 35, myX + 15, myY + 45,  myX - 15, myY + 45, myX - 20, myY + 35);
    //muffin
    fill(#FAD242);
    ellipse(myX, myY, 62, 40);
    //berries
    fill(#347DD8);
    
    if (rollNum == 1){
      ellipse(myX, myY, 5, 5);
    } else if (rollNum == 2){
       ellipse(myX - 10, myY, 5, 5);
       ellipse(myX + 10, myY, 5, 5);
    } else if (rollNum == 3){
       ellipse(myX - 10, myY + 5, 5, 5); 
       ellipse(myX + 10, myY + 5, 5, 5);
       ellipse(myX, myY - 5, 5, 5);
    } else if (rollNum == 4){
       ellipse(myX - 15, myY + 5, 5, 5); 
       ellipse(myX + 5, myY + 5, 5, 5);
       ellipse(myX - 5, myY - 5, 5, 5);
       ellipse(myX + 15, myY - 5, 5, 5);
    } else {
       ellipse(myX - 10, myY + 5, 5, 5); 
       ellipse(myX + 10, myY + 5, 5, 5);
       ellipse(myX, myY - 5, 5, 5);
       ellipse(myX + 20, myY - 5, 5, 5);
       ellipse(myX - 20, myY - 5, 5, 5);
    } 
  }
}
