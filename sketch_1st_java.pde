Ball ball1=new Ball(200 , 400 ,9 , 3 , 50);
Ball ball2=new Ball(300 , 200 , 10 , 15 , 100);
Bar bar1= new Bar(630 , 00 , 10 , 640 , 3);
Bar bar2=new Bar(0 ,00 , 10, 640 , 2);

void setup() {
  size(640 , 480);
}
void draw() {
  background(0);
  bar1.moveUpDown(ball1 , ball2);
  bar2.moveUpDown(ball1 , ball2);
  ball1.display();
  ball1.moveUpDown();
  ball1.moveRL(bar2 , bar1);
  ball2.display();
  ball2.moveUpDown();
  ball2.moveRL(bar2 , bar1);
  ball1.checkCollision(ball2);
  bar1.display();
  bar2.display();
  
}