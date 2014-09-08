Target one;
Target two;
void setup()
{
  noLoop();
}
void draw()
{
  background(197);
  one = new Target(25,50); //coordinates?
  two = new Target(75,50); //coordinates?
  one.show();
  two.show();
}
void mousePressed()
{
  redraw();
}
class Target
{
  int numRings, myX, myY;
  Target(int x, int y) //constructor inializes the 3 variables
  {
    myX = x;
    myY = y;
    numRings = (int)(Math.random()*4); //what numRings?
  }
  void show()
  {
    int siz = 50;
   for(int i = 0; i < numRings; i++)
    {
      fill(int(random(256)),int(random(256)),int(random(256)));
      ellipse(myX,myY,siz,siz);
      siz-=16;
    }
  }
}