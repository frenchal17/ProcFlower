void setup(){
   size(600,600);
   background(360,360,360);
}

   float x = 0;
   float y = 0;
   float z = 5;
   float c = .06;
   float c2 = .035;
//Important discovery on my part to be noted later -- The entire pattern of
//the flower has to do with the ratio between c and c2. The smaller the
//difference between one and the multiple of another, the more petals there
//are, and the closer together they are.
   float r = 0;

void draw(){
     x = x + c;
     y = y + c;
     r = r + c2;
     ellipse(300 + ((100 * (1 + sin(r)))  * cos(x)),
             300 + (100 * (1 + sin(r)) * sin(y)), 5, 5);
}

void keyPressed(){
  if (key == 's'){
    saveFrame("####.png");
  }
}
