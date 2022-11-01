class Puntaje{
  PFont fuente;
int puntaje;
int posX, posY;

Puntaje(int _posX, int _posY){
  posX= _posX;
  posY= _posY;
  createFont("FuentePixelada.ttf", 32);
  textFont(fuente, 32);
  fill(0);
  puntaje = 0;
}


void dibujar(){
   
 text("Score: "+puntaje+" ",posX,posY);
 }
}
