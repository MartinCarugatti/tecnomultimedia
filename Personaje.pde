class Personaje {
    PImage img;
    int posX , posY;
  int ancho, alto; 
  int numeroDeIMG;
  String nombreIMG;
  boolean personaje_estaSaltando ;
  int personaje_estaSaltandoDireccion;
int personaje_velocidadSalto;
int topePiso = 210;
int topeSalto = posY - 150;

  
  Personaje(int _posX, int _posY, int _ancho, int _alto, String _nombreIMG ){
    posX = _posX;
    posY = _posY;
    ancho = _ancho;
    alto = _alto; 
    nombreIMG = _nombreIMG;
  
    img = loadImage(_nombreIMG+".png");
    personaje_estaSaltando = false;
    personaje_estaSaltandoDireccion = 1;
    personaje_velocidadSalto = 5;
    topePiso = 210;
    topeSalto = posY - 150;
}
 void dibujar() {
    image(img, posX, posY, ancho, alto);
  }

int get(){
return posY;
}


void saltar(){
  if  (!personaje_estaSaltando) {
 
    personaje_estaSaltando = true;
    personaje_estaSaltandoDireccion = 1; 
  } else if (
    personaje_estaSaltando && 
    personaje_estaSaltandoDireccion == 1 &&
  posY < topeSalto) {
    personaje_estaSaltandoDireccion = -1;
  } else if (
    personaje_estaSaltando && 
    personaje_estaSaltandoDireccion == -1 &&
    posY > topePiso) {
    personaje_estaSaltandoDireccion = 0;
    personaje_estaSaltando = false;
  } else if (personaje_estaSaltando && personaje_estaSaltandoDireccion == 1) {
    posY=posY-personaje_velocidadSalto ;
  } else if ( personaje_estaSaltando && personaje_estaSaltandoDireccion == -1) {
    posY= posY+personaje_velocidadSalto;
  }

}
}
