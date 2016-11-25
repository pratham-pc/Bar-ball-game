Ball ball1=new Ball(100 , 400 ,10 , 10 , 50);
Ball ball2=new Ball(300 , 200 , 10 , 10 , 100);
Bar bar1= new Bar(500 , 100 , 10 , 100);
Bar bar2=new Bar(100 ,100 , 10, 100);

void setup() {
  size(640 , 480);
}
void draw() {
  background(0);
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