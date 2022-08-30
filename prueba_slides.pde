Pantalla pantalla0;
Pantalla pantalla1;
Pantalla pantalla2;
int N=0;
void setup() {
  size(400, 400);

  background(0);
  pantalla0 = new Pantalla(0);
  pantalla1 = new Pantalla(1);
  pantalla2 = new Pantalla(2);
}

void draw() {
  if (N==0)
  { 
    pantalla0.dibujar();
  }
   else if(N==1) {
    pantalla1.dibujar();
  }else if(N==2){
  pantalla2.dibujar();}
  else if(N>=3){N=0;}
}

void mousePressed(){
N++;}
