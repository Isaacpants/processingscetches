int velx = 5;
int vely = 3;

int bx=0;
int by=1000;

void setup() {
  size(1000, 1000);
}
void draw() {
  background(0, 0, 0);
  fill(7, 202, 183);
  ellipse(bx, by, 15, 15);
  fill(7, 202, 183);
  rect(mouseX, 950, 150, 5);
  bx+=velx;
  by-=vely;

  if (bx>mouseX&&bx<mouseX+150) {
    velx=-10;
  }


  if (bx>=1000) {

    velx-=10;
  }

  if (by<=0) {

    vely-=6;
  }

  if (bx<=0) {

    velx+=10;
  }

  if (by>=1000) {

    vely+=6;
  }
}