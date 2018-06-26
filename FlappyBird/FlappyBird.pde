void setup(){
size(500, 500);
background(0, 255, 44);



}void draw(){
  int x = 250;
  int y = 250;
background(0, 255, 44);
fill(178, 0, 255);
stroke(255, 3, 226);
for(int i = 0;i<10000;i++){
 
ellipse(x, y, 20, 20);
y++;
 
}


}