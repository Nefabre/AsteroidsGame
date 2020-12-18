class Bullet extends Floater{
  public Bullet(Spaceship ship){
    myCenterX = ship.getCenterX();
    myCenterY= ship.getCenterY();
    myXspeed= ship.getXspeed();
    myYspeed= ship.getYspeed();
    myPointDirection= ship.getPoint();
    accelerate(6);
  }
  public void show(){
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
   public double getX()
  {
    return myCenterX;
  }
  public double getY()
  { 
    return myCenterY;
  }
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myXspeed and myYspeed       
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     

       
  } 
}
