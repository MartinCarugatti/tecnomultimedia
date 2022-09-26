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
void moverBrazoIzquierdo(){

posX=420;
posY=140;
ancho=220;
alto=220;}

void moverCabeza(){

posX=350;
posY=80;
ancho=100;
alto=200;}
void moverPiernas(){

posX=292;
posY=275;
ancho=220;
alto=235;}

void moverBrazoDerecho(){

posX=190;
posY=140;
ancho=220;
alto=220;}

}
