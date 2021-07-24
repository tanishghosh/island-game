class Rect{
  int x;
  int y;
  int w;
  int h;
  
  Rect(int i,int j,int k,int l)
  {
    x=i;
    y=j;
    w=k;
    h=l;
  }
  
  
  Rect(Rect c){
    x=c.x;
    y=c.y;
    w=c.w;
    h=c.h;
  }
  
  
  void make(){
    beginShape();
    vertex(x,y);
    vertex(x,y+h);
    vertex(x+w,y+h);
    vertex(x+w,y);
    endShape();
  }
  
  void display(){
    fill(255);
  text("START",width/2-20,height/2-175);
  }


}
