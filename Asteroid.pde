class Asteroid extends Floater {
  private double rotateSpeed;//a member variable to hold the speed of rotation for each asteroid
  public Asteroid() {
    corners= 6;
    xCorners= new int[] {(int)(Math.random()*17)+1, -(int)(Math.random()*17)+1, (int)(Math.random()*17)+1, (int)(Math.random()*17)+1, (int)(Math.random()*17)+1, -(int)(Math.random()*17)+1};
    yCorners= new int[] {-(int)(Math.random()*17)+1, (int)(Math.random()*17)+1, -(int)(Math.random()*17)+1, (int)(Math.random()*17)+1, -(int)(Math.random()*17)+1, -(int)(Math.random()*17)+1};
    myColor= (0);
    myCenterX= (int)(Math.random()*width);
    myCenterY= (int)(Math.random()*height);
    myXspeed= Math.random()*2;
    myYspeed= Math.random()*2;
    myPointDirection= (int) Math.random()*361;
    rotateSpeed= 2.5;
  }
  public void move(){
    turn(rotateSpeed);
    super.move();
  }
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
}
