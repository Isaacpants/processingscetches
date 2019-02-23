int bx = 0;
int by = 750;
boolean wallr = false;
boolean walll = true;
boolean wallt = false;
boolean wallb = true;

void setup () {
  size(750, 750);
}
void draw () {
  background(0, 0, 0);
  fill(255, 255, 255);
  stroke(255, 0, 0);
  ellipse(bx, by, 15, 15);
  if (!wallr && !wallt) {
    bx+=2;
    by--;
    if (bx>=750) {
      wallr=true;
      walll = false;
    }
    if (by<0) {
      wallt=true;
      wallb=false;
    }
  }
  if (!wallt && !walll) {
    bx-=2;
    by--;
    if (bx<=0) {
      wallr=false;
      walll = true;
    }
    if (by<0) {
      wallt=true;
      wallb=false;
    }
  }


  if (!wallr && !wallb) {
    bx+=2;
    by++;
    if (bx>=750) {
      wallr=true;
      walll = false;
    }
    if (by>=750) {
      wallt=false;
      wallb=true;
    }
  }
  if (!wallb && !walll) {
    bx-=2;
    by++;
    if (bx<=0) {
      wallr=false;
      walll = true;
    }
    if (by>=750) {
      wallt=true;
      wallb=false;
    }
  }
}