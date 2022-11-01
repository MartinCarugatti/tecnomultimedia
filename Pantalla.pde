class Pantalla
{
  
  
  
  
  
  PImage img;
    int posX , posY;
  int ancho, alto; 
  int numeroDeIMG;
  String nombreIMG;
  
  Pantalla(int _posX, int _posY, int _ancho, int _alto, String _nombreIMG ){
    posX = _posX;
    posY = _posY;
    ancho = _ancho;
    alto = _alto; 
    nombreIMG = _nombreIMG;
    img = loadImage(_nombreIMG+".jpg");
}


  void dibujar(){
    image(img, posX, posY, ancho, alto);

  }
}
