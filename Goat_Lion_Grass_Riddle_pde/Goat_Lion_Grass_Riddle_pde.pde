color onFocus = color(51);
Rect a,b;
int co = 0;
void setup()
{ 
  background(51);
  frameRate(240);
  size(1000,1000);
  a= new Rect(width/2-50,height/2-200,100,40);
  fill(0);
  a.make();
  textSize(14);
  a.display();
  
}
int count=0;
int lion_x = 230,goat_x = 230,grass_x = 230,man_x = 300;
int lion_y = 300,goat_y = 320,grass_y = 340,man_y = 320;
int island_man=0,island_goat=0,island_lion=0,island_grass=0;
int move_left=25;

void check(int lion_x,int goat_x,int grass_x)
{
  if(lion_x==230&&goat_x==230&&grass_x==430&&man_x==400)
    {
      background(51);
      text("Game Over",230,400);
      text("1",230,430);
    }
  
  else if(lion_x==230&&goat_x==230&&grass_x==630&&man_x==600)
    {
      background(51);
      text("Game Over",230,400);
      text("1",230,430);
    }
  
  else if(lion_x==430&&goat_x==430&&grass_x==630&&man_x==600)
    {
      background(51);
      text("Game Over",230,400);
      text("1",230,430);
    }
    
  else if(lion_x==430&&goat_x==430&&grass_x==230&&man_x==300)
    {
      background(51);
      text("Game Over",230,400);
      text("1",230,430);
    }
    
  else if(lion_x==630&&goat_x==630&&grass_x==430&&man_x==400)
    {
      background(51);
      text("Game Over",230,400);
      text("1",230,430);
    }
    
  else if(lion_x==630&&goat_x==630&&grass_x==230&&man_x==300)
    {
      background(51);
      text("Game Over",230,400);
      text("1",230,430);
    }      
 
  

  
  
  else if(lion_x==430&&goat_x==230&&grass_x==230&&man_x==400)
    {
      background(51);
      text("Game Over",230,400);
      text("2",230,430);  
  }
  
  
  else if(lion_x==630&&goat_x==230&&grass_x==230&&man_x==600)
    {
      background(51);
      text("Game Over",230,400);
      text("2",230,430);  
  }
   
   else if(lion_x==230&&goat_x==430&&grass_x==430&&man_x==300)
    {
      background(51);
      text("Game Over",230,400);
      text("2",230,430);  
  }
  
    else if(lion_x==630&&goat_x==430&&grass_x==430&&man_x==600)
    {
      background(51);
      text("Game Over",230,400);
      text("2",230,430);  
  }
  
  
  else if(lion_x==230&&goat_x==630&&grass_x==630&&man_x==300)
    {
      background(51);
      text("Game Over",230,400);
      text("2",230,430);  
  }
  
    else if(lion_x==430&&goat_x==630&&grass_x==630&&man_x==400)
    {
      background(51);
      text("Game Over",230,400);
      text("2",230,430);  
  }

    
    else if(lion_x==630&&goat_x==630&&grass_x==630)
    {
      background(51);
      int temp = 25-move_left;
      text("Congrats, you have won this round in :"+temp+" moves",230,400);
    }
    
   
        
  }

int m=2;
int second=60;
void time()
{
  if(second>0){
    {
      text(m+":"+second,800,100);
      second=second-1;
    }
  }
  else{
   {
     m=m-1;
     second=59;
     if(second<10)
       text(m+":0"+second,800,100);
     else
        text(m+":"+second,800,100);   
   }
  }
  
  if(m==0&&second==0)
  {
    exit(); 
  }
}

void display(){
    if(second<10)
       text(m+":0"+second,800,100);
     else
        text(m+":"+second,800,100); 
  }





void draw(){
  if(co ==0){ 
  if(onRect())
    { 
      background(255);
      fill(onFocus);
      a.make();
      a.display();
  }
  else{
      background(255);
      fill(0);
      a.make();
      a.display();
  }
 }
 
  if(co==1){
  background(51);
  
   Rect c = new Rect(265,0,145,1000);
   Rect e = new Rect(530,0,80,1000);
   fill(0,0,255);
   c.make();
   e.make();
   fill(0,255,0);
   Rect d = new Rect(420,250,100,100);
   d.make();
   fill(255);
   text("Moves remaining:"+move_left,850,100);
   textSize(14);
  text("L",lion_x,lion_y);
   text("G",goat_x,goat_y);
   text("GR",grass_x,grass_y);
    text("M",man_x,man_y);
    check(lion_x,goat_x,grass_x);
   if(frameCount%24==0)
     time();
   else
     display();
  }
}

void keyPressed(){
  if(key==CODED){
    if(keyCode == RIGHT && man_x==300)
      {
        if(island_lion==0&&island_man==0)
          {
            lion_x=430;
            man_x=400;
            island_man=1;
            island_lion=1;  
            move_left--;
          }
        
        
     }
     
     else if(keyCode == RIGHT && man_x==400)
     {
       if(island_lion==1&&island_man==1)
          {
            lion_x=630;
            man_x=600;
            island_lion=0;
            island_man=0;
            println(island_lion+"  "+island_man);
            move_left--;
        }
     }
     
     
      
    if(keyCode == LEFT && man_x==600)
      {
        if(island_man==0&&island_lion==0)
          {
            lion_x=430;
            man_x=400;
            island_man=island_lion=1;
            move_left--;
          }
      }
      
    else if(keyCode == LEFT && man_x==400)  
      {
        if(island_lion==1&&island_man==1)
          {
            lion_x=230;
            man_x=300;
            island_man=island_lion=0;
            move_left--;
          }
      }
      
  } 
      if(key=='a'&& man_x==600&& goat_x==630)
      {
        if(island_man==0&&island_goat==0){
        goat_x=430;
        man_x=400;
        island_man=island_goat=1;
        move_left--;
        }
      }
      
      else if(key=='a'&& man_x==400&&goat_x==430)
      {
        if(island_man==1&&island_goat==1){
        goat_x=230;
        man_x=300;
        island_man=island_goat=0;
        move_left--;
        }
      }
      
     
      if(key=='d'&& man_x==300&& goat_x==230)
      {
        if(island_man==0&&island_goat==0){
        goat_x=430;
         man_x=400;
        island_man=island_goat=1;
        move_left--;
          }
      }
      
      else if(key=='d'&& man_x==400&&goat_x==430)
    {
       if(island_man==1&&island_goat==1){
        goat_x=630;
         man_x=600;
        island_man=island_goat=0;
        move_left--;
          } 
    
    
    }
      
      
      
      if(key=='j'&& man_x==400&&grass_x==430)
      {
        if(island_man==1&&island_grass==1)
        {
          grass_x=230;
          man_x=300;
          island_man=island_grass=0;
          move_left--;
        }
      }
      
      else if(key=='j'&&man_x==600&&grass_x==630){
        if(island_man==0&&island_grass==0)
        {
          grass_x=430;
          man_x=400;
          island_man=island_grass=1;
          move_left--;
        } 
      }
      
      
      
      if(key=='l'&& man_x==300&&grass_x==230)
      {
        if(island_man==0&&island_grass==0)
        {
          grass_x=430;
          man_x=400;
          island_man=island_grass=1;
          move_left--;
        } 
      }
      
      else if(key=='l'&& man_x==400&&grass_x==430)
    {
        if(island_man==1&&island_grass==1)
        {
          grass_x=630;
          man_x=600;
          island_man=island_grass=0;
          move_left--;
        }
    }
      
      
      if(key=='p'&& man_x==300)
      { 
        if(island_man==0)
          {
            man_x=400;
            island_man=1;
            move_left--;
          }
      }
      
      
      else if(key=='p'&&man_x==400)
      {
          if(island_man==1)
          {
            man_x=600;
            island_man=0;
            move_left--;
          }
      }
      
       if(key=='o'&& man_x==600)
      {  
       if(island_man==0)
          {
            man_x=400;
            island_man=1;
            move_left--;
          }
      }
      
       else if(key=='o'&& man_x==400)
      {  
       if(island_man==1)
          {
            man_x=300;
            island_man=0;
            move_left--;
          }
      }
      
      
      
      
      
}

// a= new Rect(width/2-50,height/2-200,100,40);
boolean onRect()
{
  if(mouseX>width/2-50&&mouseX<(width/2)+50&&mouseY>(height/2)-200&&mouseY<(height/2)-160)
    return true;
  else 
    return false;
}

void mousePressed(){
  if(mouseX>width/2-50&&mouseX<(width/2)+50&&mouseY>(height/2)-200&&mouseY<(height/2)-160)
    {
      //background(0);
       //text("Whatever it takes",100,40);
      co =1;
    }
}
