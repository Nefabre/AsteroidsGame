//your variable declarations here
ArrayList<Bullet> shots= new ArrayList<Bullet>();
ArrayList<Asteriod> rock = new ArrayList<Asteriod>();
Spaceship bob= new Spaceship();
Star[]ken =new Star[300];
public void setup() 
{
  size(500, 500);
  for (int i=0; i<ken.length; i++)
  {
    ken[i] = new Star();
  }
  for (int i=0; i<15; i++)
  {
    rock.add(new Asteriod());
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
  for (int i=0; i<shots.size(); i++) {
    shots.get(i).move();
    shots.get(i).show();
  }
  for (int i=0; i<rock.size(); i++) {
    rock.get(i).move();
    rock.get(i).show();
    for (int j=0; j<shots.size(); j++)
    {
      float d = dist((float)rock.get(i).getX(),(float) rock.get(i).getY(), (float)shots.get(j).getX(), (float)shots.get(j).getY());
      if (d<10) {
        rock.remove(i);
        shots.remove(j);
        break;
      }
    }
  }
}
public void keyPressed()
{
  if (key =='4')
    bob.turn(-5);
  else if (key=='6')
    bob.turn(5);
  else if (key=='5')//fires rockets to accelerate ship
    bob.accelerate(0.3);
  else if (key== ' ')
    shots.add(new Bullet(bob));
}
