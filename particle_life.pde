float randomForce(){
  return random(-2,2);
}

color[] colors = {color(255,255,100),color(255,100,255),color(100,255,255)}; 
float[][] interactionMatrix = {
                 {randomForce(),randomForce(),randomForce()},
                 {randomForce(),randomForce(),randomForce()},
                 {randomForce(),randomForce(),randomForce()}
               };
               
int w = 1200;
int h = 900;
int count = 1000;

class Particle{
  private PVector position = new PVector(int(random(0, w)), int(random(0, h)));
  private PVector velocity = new PVector(random(-1,1), random(-1,1));
  private int type = int(random(colors.length));
  void display(){
    fill(colors[type]);
    circle(position.x, position.y, 7);
  }
  void update(){
    for(Particle p : particles){
      if(p!=this){
        float distance = position.dist(p.position);
        if(distance > 50 && distance < 200){
          PVector force = PVector.sub(p.position,position);
          force.normalize();
          float forceStrength = interactionMatrix[type][p.type];
          force.mult(forceStrength/(distance));
          velocity.add(force);
        }
      }
    }
    position.add(velocity);
    velocity.mult(0.97);
    if (position.x <= 0) { position.x = 1; velocity.x *= -1; }
    if (position.x >= w) { position.x = w - 1; velocity.x *= -1; }
    if (position.y <= 0) { position.y = 1; velocity.y *= -1; }
    if (position.y >= h) { position.y = h - 1; velocity.y *= -1; }
  }
}

Particle particles[] = new Particle[count];

void setup(){
  size(1200,900);
  for(float[] arr : interactionMatrix){
    for(float g : arr) print(g+" ");
    println();
  }
  for(int i=0;i<count;i++){
    particles[i] = new Particle();
  }
}
void draw(){
  background(0);
  for(Particle p : particles){
    p.display();
    p.update();
  }
}
