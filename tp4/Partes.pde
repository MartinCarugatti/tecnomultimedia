class Partes{
int posX,posY,ancho, alto;
PImage ImgPartes;
String nombreDeParte;
Partes(int _posX, int _posY, int _ancho, int _alto, String nombreDeParte){
 posX=_posX;
 posY=_posY;
 ancho=_ancho;
 alto=_alto;
 ImgPartes = loadImage( nombreDeParte +".png");
 
}
void dibujar(){
stroke(0);
  strokeWeight(4);
image(ImgPartes,posX,posY,ancho,alto);

}


void mover(int _posX, int _posY, int _ancho, int _alto){
 posX=_posX;
 posY=_posY;
 ancho=_ancho;
 alto=_alto;}
}
