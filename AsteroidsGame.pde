//your variable declarations here
Spaceship bob= new Spaceship();
Star[]ken =new Star[300];
public void setup() 
{
  size(500,500);
  for(int i=0; i<ken.length; i++)
  {
    ken[i] = new Star();
  }
}
public void draw() 
{
  //your code here
  background(0);
  bob.show(); 
  bob.move();
  for (int i=0; i< ken.length; i++)
  {
    ken[i].show();
  }
}
public void keyPressed()
{
  if(key =='4')
  bob.turn(-5);
  else if (key=='6')
  bob.turn(5);
  else if(key=='5')//fires rockets to accelerate ship
  bob.accelerate(0.3);
}
