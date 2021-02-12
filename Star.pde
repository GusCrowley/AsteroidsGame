class Star
{
  private int myX, myY, colorSet1,colorSet2,colorSet3;
  public Star() {
    myX= (int)(Math.random()*width);
    myY= (int)(Math.random()*height);
    colorSet1= (int) (Math.random()*256);
    colorSet2= (int) (Math.random()*256);
    colorSet3= (int) (Math.random()*256);
  }
  public void show() {
    stroke(0);
    fill (colorSet1,colorSet2,colorSet3);
    ellipse(myX, myY, 3, 3);
  }
}
