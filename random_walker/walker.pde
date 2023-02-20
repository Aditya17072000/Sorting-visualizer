class walker{
  int x,y;
  
  walker(){
    x= height/2;
    y= width/2;
    
    
  }
  
  void render(){
    stroke(0);
    point(x,y);
  }
  
  void walk(){
    int choice=int(random(4));
    if(choice==1)
      x++;
    else if(choice==2)
      y++;
    else if(choice==3)
      x--;
    else
      y--;
      
    x = constrain(x,0,width-1);
    y = constrain(y,0,height-1);
  }
  
};
