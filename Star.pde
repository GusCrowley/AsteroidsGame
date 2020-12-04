class Star
{
  private int myX, myY, colorSet;
  public Star() {
    myX= (int)(Math.random()*500);
    myY= (int)(Math.random()*500);
    colorSet= (int) (Math.random()*2);
  }
  public void show() {
    if (colorSet == 0) {
      fill (22, 85, 19);
    }
    if (colorSet== 1) {
      fill (211, 26, 26);
    }
    ellipse(myX, myY, 3, 3);
  }
}

