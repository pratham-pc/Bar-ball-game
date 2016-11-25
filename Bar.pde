public class Bar {
  private int y=0;
  private int x=630;
  private int wd=5;
  private int ht=640;
  public Bar(int x , int y , int wd , int ht) {
    this.x=x;
    this.y=y;
    this.wd=wd;  
    this.ht=ht;
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