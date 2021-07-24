void setup()
{
  background(51);
  size(600,600);
}
int count=0;
int lion_x = 230,goat_x = 230,grass_x = 230;
int lion_y = 300,goat_y = 320,grass_y = 340;
int man_x = 300;
int man_y = 320;

void check(int lion_x,int goat_x,int grass_x)
{
  if(lion_x==230&&goat_x==230&&grass_x==430&&man_x==430)
    {
      background(51);
      text("Game Over",230,400);
      text("1",230,430);
    }
    
  if(lion_x==430&&goat_x==230&&grass_x==230&&man_x==430)
    {
      background(51);
      text("Game Over",230,400);
      text("2",230,430);  
  }
    
   if(lion_x==430&&goat_x==430&&grass_x==230&&man_x==230)
    {
      background(51);
      text("Game Over",230,400);
      text("3",230,430);  
  }
    
    
    if(lion_x==230&&goat_x==430&&grass_x==430&&man_x==230)
    {
      background(51);
      text("Game Over",230,400);
      text("4",230,430);
    } 
    
    if(lion_x==430&&goat_x==430&&grass_x==430)
    {
      background(51);
      text("Congrats, you have won this round",230,400);
    }
    
   
        
  }


void draw(){
  background(51);
  fill(255);
  
  text("L",lion_x,lion_y);
   text("G",goat_x,goat_y);
   text("GR",grass_x,grass_y);
    text("M",man_x,man_y);
    check(lion_x,goat_x,grass_x);
   // success(lion_x,goat_x,grass_x);
  
 
}

void keyPressed(){
  if(key==CODED){
    if(keyCode == UP && man_x==300)
      {
        //background(51);
        lion_x=430;
        man_x=400;
      }
      
    if(keyCode == DOWN && man_x==400)
      {
        lion_x=230;
        man_x=300;
      }
      
  } 
      if(key=='a'&& man_x==400)
      {
        goat_x=230;
        man_x=300;
      }
      
      if(key=='d'&& man_x==300)
      {
        goat_x=430;
         man_x=400;
      }
      
      if(key=='j'&& man_x==400)
      {
        grass_x=230;
        man_x=300;
      }
      
      if(key=='l'&& man_x==300)
      {
        grass_x=430;
         man_x=400;
      }
      
      if(key=='p'&& man_x==300)
      {  
        man_x=400;
      }
      
       if(key=='o'&& man_x==400)
      {  
        man_x=300;
      }
      
      
      
      
      
}
