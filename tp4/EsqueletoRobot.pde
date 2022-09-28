class EsqueletoRobot{
int posX,posY,ancho, alto;
PImage ImgEsqueleto;
EsqueletoRobot(int _posX, int _posY, int _ancho, int _alto){
 posX=_posX;
 posY=_posY;
 ancho=_ancho;
 alto=_alto;
 ImgEsqueleto = loadImage("Esqueleto.png");
}
void dibujar(){
 
image(ImgEsqueleto,posX,posY,ancho,alto);
}

}
