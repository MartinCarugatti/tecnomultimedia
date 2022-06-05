void setup(){
background(0);
size(600,600);}

void draw(){background(255);

  for(int a=0;a<12;a++){
    for(int b=0;b<12;b++){
  stroke(120);
  strokeWeight(5);
  line(0,50*b,600,50*b);
  line(50*a,0,50*a,600);
  
}
}
for(int c=0;c<12;c++){
  for(int d=0;d<12;d++){fill(255);
    line(-300+(50*c),300+(50*c),300+(50*c),-300+(50*c));
line(-300+(50*d),300-(50*d),300+(50*d),900-(50*d));

  }}
for (int x=0; x<12; x++) {
    for (int y=0; y<12; y++) {
    stroke(0);
      strokeWeight(0.5);
   fill(255);   
 
ellipse(0+150*x, 0+y*150, 10, 10);
fill(0);
noStroke();
 
ellipse(0+150*x, 0+y*150, 8, 8);}

}}
