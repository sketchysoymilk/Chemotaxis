Walker hi;
Walker [] group;
void setup()
{
  size (500, 500);
  hi=new Walker(250,250);
  group = new Walker[100];
  for (int i=0; i<group.length; i++) {

    group[i] = new Walker(250,250);
  }
}
void draw()
{
  background(255,229,204);
  hi.show();
  hi.walk();
  for (int i=0; i<group.length; i++) {
    group[i].walk();
    group[i].show();
  }
}
class Walker
{
  int myX, myY, myColor;
  Walker(int x, int y)
  {
    if(x == 250)
      myX = (int)(Math.random()*450)+25;
    if(y==250)
      myY = (int)(Math.random()*450)+25;
    myColor = color(255,255,153);
  }
  void walk()
  {
    myX=myX+(int)(Math.random()*7)-3;
    myY=myY+(int)(Math.random()*7)-3;
  }
  void show()
  {
    fill(myColor);
    arc(myX, myY, 30, 30, PI/4, PI+QUARTER_PI, PIE);
  }
}
