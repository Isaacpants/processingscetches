PImage creeper;
 PImage minecraft; 
void setup() {
  size(1000, 1000);
  minecraft = loadImage("CreeperBack.jpg"); 
minecraft.resize(1000, 1000);
background(minecraft);
  creeper=loadImage("creeper.jpeg"); 
  
  creeper.resize(1, 1); 
  image(creeper, 999, 999);
}



void draw() {
 
background(minecraft);
image(creeper, 815, 515);

if(mousePressed){
  if(isNear(815,mouseX)&&(isNear(515,mouseY))){
  fill(0,255,206);
  textSize(200);
  text("Found!!!",220,300);
  ellipse(mouseX,mouseY,8,8);
  }else{
  fill(255,0,0);
  
ellipse(mouseX,mouseY,6,6);
  }
}

}

boolean isNear(int a, int b) {
  if (abs(a - b) < 10) {
    return true;
  }else {
  return false;

  }
}