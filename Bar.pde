public class Bar {
  private int y=0;
  private int x=630;
  private int wd=5;
  private int ht=640;
  private int dy=10;
  public Bar(int x , int y , int wd , int ht , int dy) {
    this.x=x;
    this.y=y;
    this.wd=wd;  
    this.ht=ht;
    this.dy=dy;
  }
  public void moveUpDown(Ball b1 , Ball b2) {
    //if headon collision with the ball , change speed to negetive
    if(y>480-ht) {
      dy*=-1;
    }
    if(y<0) {
      dy*=-1;
    }
    y=y+dy;
  }
  public void display() {
    rect(x ,y ,wd , ht);
  }
  public int getX() {
    return x;
  }
  public int getwd() {
    return wd;
  }
  public int getY() {
    return y;
  }
  public int getht() {
    return ht;
  }  
}