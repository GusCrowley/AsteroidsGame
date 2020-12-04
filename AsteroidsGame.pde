Star[] finalFrontier= new Star[250];
Spaceship enterprise= new Spaceship();
public void setup() 
{
  size (500, 500);
  for (int i= 0; i< finalFrontier.length; i++) {
    finalFrontier[i]= new Star();
  }
}
public void draw() 
{
  background(0);
  for (int i= 0; i< finalFrontier.length; i++) {
    finalFrontier[i].show();
    enterprise.show();
    enterprise.move();
  }
}
void keyPressed() {
  if (key =='s') {
    enterprise.hyperspace();
  }
  if (key == 'a') {
    enterprise.turn(-10);
  }
  if (key == 'd') {
    enterprise.turn(10);
  }
  if (key == 'w') {
    enterprise.accelerate(0.005);
  }
}
