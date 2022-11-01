class Personaje {
    PImage img;
    int posX , posY;
  int ancho, alto; 
  int numeroDeIMG;
  String nombreIMG;
  
  Personaje(int _posX, int _posY, int _ancho, int _alto, String _nombreIMG ){
    posX = _posX;
    posY = _posY;
    ancho = _ancho;
    alto = _alto; 
    nombreIMG = _nombreIMG;
    img = loadImage(_nombreIMG+".jpg");
}
}
