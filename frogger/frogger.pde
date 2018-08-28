int cx = 0;

int x = 900;
int y = 900;
void setup(){
size(1000,1000);

display();
car();
}void draw(){
  background(0,0,0);
  fill(0,255,19);
ellipse(x,y,50,50);
cx+=8;

display();


keyPressed();

fill(219,0,0);
}void display() 
{
      fill(219,0,0);
      stroke(0,255,18);
      rect(cx , 500, 100, 50);
}void car(){
fill(219,0,0);
      stroke(0,255,18);
      rect(cx , 200, 100, 50);

}
void keyPressed()
{
      if(key == CODED){
            if(keyCode == UP)
            {
                  y-=10;
            }
            else if(keyCode == DOWN)
            {
                  y+=10;
            }
            else if(keyCode == RIGHT)
            {
                 x+=10;
            }
            else if(keyCode == LEFT)
            {
                  x-=10 ;
            }
      }
}