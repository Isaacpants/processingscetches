int bx = 1;
int by = 750;
void setup (){
size(750, 750);



}void draw (){
  background(0,0 , 0);
  fill(255, 255, 255);
stroke(255, 0, 0);
ellipse(bx,by,15,15);
  bx+=2;
  by--;
}