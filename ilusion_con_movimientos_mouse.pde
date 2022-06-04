
int posExtremosNegativos=-800;
int posExtremosPositivos= 1400;
int mitadAncho=width/2;
int mitadAlto= height/2;
color colorA= 0;
color colorB= 255;


void setup(){
size(600,600);
background(110);

noStroke();
background(120);

 
}



void draw(){println(round(map(mouseX,height/2,255,width/2,255))); 
  if(posExtremosPositivos>=1400) 
for( int a= 0; a<111; a++){
quad(posExtremosNegativos+(10*a),mouseY,mouseX,posExtremosNegativos+(10*a),posExtremosPositivos-(10*a),mouseY,mouseX,posExtremosPositivos-(10*a));
if(a%2==0){fill(colorA,0,0); noStroke();
} else { fill(colorB);
noStroke();
}

}

posExtremosNegativos-=5;
posExtremosPositivos+=5;
if(posExtremosNegativos<-820){
  for( int i= 0; i<110; i++){quad(posExtremosNegativos+(10*i),mouseY,mouseX,posExtremosNegativos+(10*i),posExtremosPositivos-(10*i),mouseY,mouseX,posExtremosPositivos-(10*i));
if(i%2==0){fill(colorB);
noStroke();} else { fill(colorA,0,0);
noStroke();
  posExtremosPositivos= 1400 ;
posExtremosNegativos= -800;
 }}
 }
 
 
 
if(keyPressed){
colorA=0;
colorB=255;} 
 if(mousePressed){posExtremosPositivos= 1400;
 posExtremosNegativos=-800;}

stroke(0);
strokeWeight(2);
noFill();
ellipse(height/2,height/2,200,200);
rectMode(CENTER);
fill(250,0,0);
noStroke();
rect(width/2,height/2,10,10);
   
   }
   
void mouseClicked(){
colorA= round(map(mouseX,0,width,0,255));
colorB= round(random(80,255));

}
