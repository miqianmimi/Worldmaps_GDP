/**
 * Get Child. 
 * 
 * SVG files can be made of many individual shapes. 
 * Each of these shapes (called a "child") has its own name 
 * that can be used to extract it from the "parent" file.
 * This example loads a map of the United States and creates
 * two new PShape objects by extracting the data from two states.
 */
PImage bg;PShape world;PShape me;PShape al;PShape eg;PShape co;PShape jp;PShape ma;PShape ca;
PShape ru;PShape chile;PShape china;PShape tu;PShape sp;PShape it;

int i=0;
float x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13;
float angle1,angle2,angle3,angle4, angle5,angle6,angle7,angle8, angle9,angle10,angle11,angle12,angle13;
float []scalar={25.33232955,8.621940924,7.063477708,3.1640732,50.3490666,3.020376609,40.9189723,11.55538942
,25.64322693,7.456410809,21.29473195,35.40444432,38.16490656,25.30805,8.695152,7.435434
,0.404415,161.732,1.061465,104.4071,12.17466,26.32543,8.13046,21.15366,65.00735,79.61383
,23.50248,8.770816,7.647858,0.404676,152.9681,0.983785,100.2795,11.22566,25.80652,8.833616,19.87432
,62.09201,74.78888,24.49884,8.927921,7.9022,0.422127,159.8871,0.970743,102.3009,11.71202,27.12679
,9.70533,21.424,61.67528,75.77766,25.15301,9.020902,7.906459,0.439237,158.3123,0.952691
,103.7332,12.21891,28.49175,10.55817,22.96564,61.71328,75.749
};
float []speed={1.899924717,0.646645569,0.529760828,0.2373055,12.25117999,0.26528246,7.868922924,0.866654206,1.92324202,0.559230811,1.597104896,4.905333324,6.087367992,1.898104
,0.652136,0.557658,0.030331,12.1299,0.07961,7.830529,0.9131,1.974407,0.609784,1.586525,4.875551,5.971037
,1.762686,0.657811,0.573589,0.030351,11.47261,0.073784,7.520961,0.841924,1.935489,0.662521,1.490574
,4.656901,5.609166,1.837413,0.669594,0.592665,0.03166,11.99154,0.072806,7.672565,0.878402,2.034509,0.7279
,1.6068,4.625646,5.683324,1.886476,0.676568,0.592984,0.032943,11.87342,0.071452,7.779987,0.916418,2.136882
,0.791862,1.722423,4.628496,5.681175
};

void setup() {
  size(948, 621);  
  world = loadShape("World_map.svg");
  bg = loadImage("world-map.jpg");me= world.getChild(3);al= world.getChild(5);eg= world.getChild(25);co= world.getChild(44);
  jp= world.getChild(113); ma= world.getChild(141);ca= world.getChild(227);ru= world.getChild(254);chile= world.getChild(250);
  china= world.getChild(255);tu= world.getChild(280);sp= world.getChild(305); it= world.getChild(325);
  rectMode(CENTER);
}

void draw() {
  
  background(bg);
  // Disable the colors  in the SVG file
  me.disableStyle();
  fill(0, 197, 205);
  noStroke();
  shape(me, -2, 1); 
  //ball
  float ang1= radians(angle1);
  x1=height*0.42+(scalar[0+i*13]*sin(ang1));
  fill(255, 228, 225);
  ellipse(width*0.305- 120,x1, scalar[+i*13], scalar[0+i*13]);
  angle1 +=speed[0+i*13];
  // 
  al.disableStyle();
  fill(139, 101, 8);
  noStroke();
  shape(al, -2, 1); 
  //ball
  float ang2= radians(angle2);
  x2=height*0.39+(scalar[1+i*13]*sin(ang2));
  fill(255, 228, 225);
  ellipse(width*0.609- 120,x2, scalar[1+i*13], scalar[1+i*13]);
  angle2 +=speed[1+i*13];
  //
  eg.disableStyle();
  fill(84, 255, 159);
  noStroke();
  shape(eg, -2, 1); 
  float ang3= radians(angle3);
  x3=height*0.41+(scalar[2+i*13]*sin(ang3));
  fill(123,104, 238);
  ellipse(width*0.689- 120,x3, scalar[2+i*13], scalar[2+i*13]);
  angle3 +=speed[2+i*13];
  //
  co.disableStyle();
  fill(123,104, 238);
  noStroke();
  shape(co, -2, 1); 
  float ang4= radians(angle4);
  x4=height*0.54+(scalar[3+i*13]*sin(ang4));
  fill(255, 228, 225);
  ellipse(width*0.673- 120,x4, scalar[3+i*13], scalar[3+i*13]);
  angle4 +=speed[3+i*13];
  //
  jp.disableStyle();
  fill(192, 255, 62);
  noStroke();
  shape(jp, -2, 1); 
  float ang5= radians(angle5);
  x5=height*0.285+(scalar[4+i*13]*sin(ang5));
  fill(255, 228, 225);
  ellipse(width*0.98-105,x5, scalar[4+i*13], scalar[4+i*13]);
  angle5 +=speed[4+i*13];
  //
  ma.disableStyle();
  fill(255, 236, 139);
  noStroke();
  shape(ma, -2, 1); 
  float ang6= radians(angle6);
  x6=height*0.65+(scalar[5+i*13]*sin(ang6));
  fill(123,104, 238);
  ellipse(width*0.74-120,x6, scalar[5+i*13], scalar[5+i*13]);
  angle6 +=speed[5+i*13];
  //
  ca.disableStyle();
  fill(255, 228, 225);
  noStroke();
  shape(ca, -2, 1); 
  float ang7= radians(angle7);
  x7=height*0.2+(scalar[6+i*13]*sin(ang7));
  fill(123,104, 238);
  ellipse(width*0.35-120,x7, scalar[6+i*13], scalar[6+i*13]);
  angle7 +=speed[6+i*13];
//
  ru.disableStyle();
  fill(224, 238, 238);
  noStroke();
  shape(ru, -2, 1); 
  float ang8= radians(angle8);
  x8=height*0.17+(scalar[7+i*13]*sin(ang8));
  fill(123,104, 238);
  ellipse(width*0.85-120,x8, scalar[7+i*13], scalar[7+i*13]);
  angle8 +=speed[7+i*13];
//
  chile.disableStyle();
  fill(255, 106, 106);
  noStroke();
  shape(chile, -2, 1); 
  float ang9= radians(angle9);
  x9=height*0.74+(scalar[8+i*13]*sin(ang9));
  fill(123,104, 238);
  ellipse(width*0.4-120,x9, scalar[8+i*13], scalar[8+i*13]);
  angle9 +=speed[8+i*13];
//
  china.disableStyle();
  fill(255, 114, 86);
  noStroke();
  shape(china, -2, 1); 
  float ang10= radians(angle10);
  x10=height*0.34+(scalar[9+i*13]*sin(ang10));
  fill(123,104, 238);
  ellipse(width*0.9-120,x10, scalar[9+i*13], scalar[9+i*13]);
  angle10 +=speed[9+i*13];
//
  tu.disableStyle();
  fill(205, 102, 29);
  noStroke();
  shape(tu, -2, 1); 
  float ang11= radians(angle11);
  x11=height*0.36+(scalar[10+i*13]*sin(ang11));
  fill(123,104, 238);
  ellipse(width*0.7-120,x11, scalar[10+i*13], scalar[10+i*13]);
  angle11 +=speed[10+i*13];
//
  sp.disableStyle();
  fill(100, 231, 1);
  noStroke();
  shape(sp, -2, 1);
  float ang12= radians(angle12);
  x12=height*0.36+(scalar[11+i*13]*sin(ang12));
  fill(123,104, 238);
  ellipse(width*0.59-120,x12, scalar[11+i*13], scalar[11+i*13]);
  angle12 +=speed[11+i*13];
//
  it.disableStyle();
  fill(205,181, 205);
  noStroke();
  shape(it, -2, 1); 
  float ang13= radians(angle13);
  x13=height*0.32+(scalar[12+i*13]*sin(ang13));
  fill(255, 228, 225);
  ellipse(width*0.64-120,x13, scalar[12+i*13], scalar[12+i*13]);
  angle13 +=speed[12+i*13];

 
}
void mousePressed() {
  // Shrink the shape 90% each time the mouse is pressed
  i=i+1;
}