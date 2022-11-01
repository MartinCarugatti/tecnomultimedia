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
}
