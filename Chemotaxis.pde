Words bob = new Words();
Bacteria jeff = new Bacteria();
Bacteria [] aBunch;
//Jumper bob
//Bacteria jeff

void setup()
{
  size(500,500);
  aBunch = new Bacteria[2000];
  for (int i = 0; i < aBunch.length; i++){
    fill((int)(Math.random()*100)+200,(int)(Math.random()*50)+200,(int)(Math.random()*80)+200);
    aBunch[i] = new Bacteria();
  }
}

void draw()
{
  
  background(255);
  for (int i = 0; i < aBunch.length; i++)
  {
    aBunch[i].show();
    aBunch[i].walk();
    mouseClicked();
  }
  
  //if (get(mouseX,mouseY) != color(0))
}


class Bacteria
{
  int myX, myY,myColor;
  float myXDif,myYDif;
  Bacteria()
  {
    myColor = color( (int)(Math.random()*200)+100, (int)(Math.random()*200)+100, 240);
    myXDif=(float)(Math.random()*10)+3;
    myYDif=(float)(Math.random()*10)+3;
    myX = myY = 250;
  }
 
  void walk()
  {
    if (mouseX > myX)//mouse is right of Bacteria
    {
      myX = myX + (int)(Math.random()*5)-1;
    }
    else if (mouseX < myX)
    {
      myX = myX + (int)(Math.random()*3)-3;
    }
    
    
    if (mouseY > myY)//mouse is right of Bacteria
    {
      myY = myY + (int)(Math.random()*5)-1;
    }
    else if (mouseY < myY)
    {
      myY = myY + (int)(Math.random()*3)-3;
    }
    
  
  }
  
  void show()
  {
    //ellipse(myX,myY,10,10);
    noStroke();
    quad(myX, myY, myX+myXDif, myY+myYDif, myX-myXDif, myY+myYDif+7, myX-myXDif+10, myY+myYDif+5);
    fill(myColor);
  }
  
  
}



class Words
{
  int myX, myY,myColor;
  float myXDif,myYDif;
  Words()
  {
    myColor = color( (int)(Math.random()*200)+100, (int)(Math.random()*200)+100, 240);
    myXDif=(float)(Math.random()*10)-3;
    myYDif=(float)(Math.random()*10)-3;
    myX = myY = 250;
  }
 
  void walk()
  {
    if (mouseX > myX)//mouse is right of Bacteria
    {
      myX = myX + (int)(Math.random()*6);
    }
    else if (mouseX < myX)
    {
      myX = myX + (int)(Math.random()*6)-7;
    }
    
    
    if (mouseY > myY)//mouse is right of Bacteria
    {
      myY = myY + (int)(Math.random()*4)+2;
    }
    else if (mouseY < myY)
    {
      myY = myY + (int)(Math.random()*4)-7;
    }
    
  
  }
  
  void show()
  {
    //ellipse(myX,myY,10,10);
    noStroke();
    quad(myX, myY, myX-myXDif, myY-myYDif, myX-myXDif, myY+myYDif+7, myX-myXDif+10, myY+myYDif+5);
    fill(myColor);
  }
  
 
  
}