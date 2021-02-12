Star[] finalFrontier= new Star[250];
Spaceship enterprise= new Spaceship();
ArrayList <Bullet> weapons= new ArrayList <Bullet>();
ArrayList <Asteroid> dangers= new ArrayList <Asteroid>();
Asteroid testAsteroid= new Asteroid();
public void setup() 
{
  size (500, 500);
  for (int i= 0; i< finalFrontier.length; i++) {
    finalFrontier[i]= new Star();
  }
  for (int i=0; i<15; i++) {
    dangers.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for (int i= 0; i< finalFrontier.length; i++) {
    finalFrontier[i].show();
  }
  enterprise.show();
  enterprise.move();

  testAsteroid.show();
  testAsteroid.move();

  for (int i= 0; i< weapons.size(); i++){
    for (int j= 0; j<dangers.size(); j++){
      if (dist((float)weapons.get(i).getCenterX(),(float)weapons.get(i).getCenterY(), (float)dangers.get(j).getCenterX(),(float)dangers.get(j).getCenterY())<15){
      dangers.remove(j);
      weapons.remove(i);
      i--;
      break;
      }
    }
  }
    for (int i=0; i<weapons.size(); i++) {
    weapons.get(i).show(); 
      weapons.get(i).move(); 
      if (weapons.get(i).getCenterX() < 1 || weapons.get(i).getCenterX() > width-1 || weapons.get(i).getCenterY() < 1 || weapons.get(i).getCenterY() > height-1) {
      weapons.remove(i);
    }
  }

  for (int i=0; i<dangers.size(); i++) {
    dangers.get(i).show(); 
      dangers.get(i).move(); 
      if (dist((float)enterprise.getCenterX(), (float)enterprise.getCenterY(), (float)dangers.get(i).getCenterX(), (float)dangers.get(i).getCenterY())<40) {
      dangers.remove(i);
    }
  }
}
void keyPressed() {
  if (key =='s') {
    enterprise.hyperspace();
  }
  if (key == 'a') {
    enterprise.turn(-15);
  }
  if (key == 'd') {
    enterprise.turn(15);
  }
  if (key == 'w') {
    enterprise.accelerate(1);
  }
  if (key == ' ') {
    weapons.add(new Bullet(enterprise)); 
      weapons.get(weapons.size()-1).accelerate(5);
  }
}
