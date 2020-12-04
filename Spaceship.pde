class Spaceship extends Floater  
{   
  public Spaceship(){
    corners= 4;
    xCorners= new int[]{-8, 16, -8, -2};
    yCorners= new int[]{-8, 0, 8, 0};
    myColor= color(255,255,255);
    myCenterX= 250;
    myCenterY= 250;
    myXspeed= 0;
    myYspeed= 0;
    myPointDirection= 0;
  }
  /*public void setXspeed(double x_){
    myXspeed= x_;
  }
  public void setYspeed(double y_){
    myXspeed= y_;
  }*/
  public void hyperspace(){
    myXspeed= 0;
    myYspeed= 0;
    myCenterX= (int)(Math.random()*500);
    myCenterY= (int)(Math.random()*500);
  }
}
