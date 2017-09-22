void setup()
{
  size(501, 501);
  noLoop();
}
void draw()
{
  background(225, 0, 0);
  for (int y = 1; y <= 350; y +=56)
  {
    for (int x = 1; x <= 500; x +=56)
    {
      Die bob = new Die(x, y);
      bob.show();
      {
        if((int)(Math.random()*10) == (int)(Math.random()*10))
        {
        fill(0);
        ellipse(x +25, y + 25, 8, 8);
        
        }else if((int)(Math.random()*10) == (int)(Math.random()*10))
        {
          fill(0);
          ellipse(x+10, y+10, 8, 8);
          ellipse(x+40, y+40, 8, 8);         
        }else if((int)(Math.random()*10) == (int)(Math.random()*10))
        {
           fill(0);
        ellipse(x+10, y+10, 8, 8);
          ellipse(x+40, y+40, 8, 8);
          ellipse(x +25, y + 25, 8, 8);
        }else if((int)(Math.random()*10) == (int)(Math.random()*10))
      {
        fill(0);
        ellipse(x+10, y+10, 8, 8);
        ellipse(x+40, y+40, 8, 8);
        ellipse(x+40, y+10, 8, 8);
        ellipse(x+10, y+40, 8, 8);
      }else if((int)(Math.random()*10) == (int)(Math.random()*10))
      {
       fill(0);
        ellipse(x+10, y+10, 8, 8);
        ellipse(x+40, y+40, 8, 8);
        ellipse(x+40, y+10, 8, 8);
        ellipse(x+10, y+40, 8, 8);
        ellipse(x+25, y+25, 8, 8);
      }else 
      {
         fill(0);
        ellipse(x+10, y+10, 8, 8);
        ellipse(x+40, y+40, 8, 8);
        ellipse(x+40, y+10, 8, 8);
        ellipse(x+10, y+40, 8, 8);
        ellipse(x+10, y+25, 8, 8);
        ellipse(x+40, y+25, 8, 8);
      }
      text("Total=", 350, 400);
      }
    }
  }
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY;//variable declarations
  Die(int x, int y) //constructor
  {
    roll();
    myX = x;
    myY = y;
  }
  void roll()
  {
    //your code here
  }
  void show()
  {
    fill(((int)(Math.random()*225)+50), 95, 215);
    rect(myX, myY, 50, 50);
  }
}