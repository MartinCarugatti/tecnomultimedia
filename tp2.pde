// https://youtu.be/Gi1_fN67p2w


int tamEllipseGrande=10;
int tamEllipseChica=8;
int color1=0;
int dist=50;
int cant=600/dist;
float grosor=5;
int movimientoVertical=0;
int movimientoLateral=0;

void setup(){
background(0);
size(600,600);}

void draw(){background(255);


lineasVerYHor();
  

lineasOblicuas();

circulos(color1);

if(dist==300){

fill(0);
textSize(50);
text( "Presione cualquier tecla para reiniciar",150,350,400,500);}

}
void mousePressed(){if(dist>0 && dist<150){dist+=50;
grosor+=5;
tamEllipseGrande+=10;
tamEllipseChica+=8;} else if (dist>=150){ dist=300;
grosor=30;

tamEllipseChica=48;
tamEllipseGrande=60;
}
}


void keyPressed(){

  if(dist == 300){
dist=50;
tamEllipseGrande=10;
tamEllipseChica=8;
grosor=5;

}}
