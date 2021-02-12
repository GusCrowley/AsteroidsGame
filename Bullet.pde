class Bullet extends Floater {
  public Bullet (Spaceship enterprise){
    myColor= (255);
    myCenterX= (enterprise.getCenterX());
    myCenterY= (enterprise.getCenterY());
    myXspeed= 0;
    myYspeed= 0;
    myPointDirection= (enterprise.getPointDirection());
  }
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
  public void show(){
    fill (255);
    ellipse ((float)myCenterX,(float)myCenterY, (float) 3, (float) 5);
  }
}
