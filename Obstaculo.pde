class Obstaculo {
    PImage img;
    int posX , posY;
  int ancho, alto; 
  String nombreIMG;
  
  Obstaculo(int _posX, int _posY, int _ancho, int _alto){
    posX = _posX;
    posY = _posY;
    ancho = _ancho;
    alto = _alto; 
   
    img = loadImage("Cactus.png");
}
 void dibujar() {
    image(img, posX, posY, ancho, alto);
  }
  
  void movimiento(){
  posX= posX-5;
  
  }
  int get(){
return posX;
}
  
void redibujar(){
if(posX<=-80){
posX=1000;

}
}
}