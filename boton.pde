class Boton {
    PImage img;
    int posX , posY;
  int ancho, alto; 
  int numeroDeIMG;
  String nombreIMG;
  
  Boton(int _posX, int _posY, int _ancho, int _alto, String _nombreIMG ){
    posX = _posX;
    posY = _posY;
    ancho = _ancho;
    alto = _alto; 
    nombreIMG = _nombreIMG;
    img = loadImage(_nombreIMG+".jpg");
}


  void dibujar(){
    imageMode(CENTER);
    image(img, posX, posY, ancho, alto);

  }
}
