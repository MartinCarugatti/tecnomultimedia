class Boton {

  float   posX, posY, alto, ancho;
  String  textoBoton;
  PImage img;
  Boton(float _posX, float _posY, String _textoBoton) { 
    ancho  = 200;
    alto = 50;
    textoBoton          = _textoBoton;
    posX = _posX; 
    posY = _posY;
    img= loadImage(_textoBoton);
  }

  void dibujar() {
    image(img, posX, posY, ancho, alto);


   
  }

  boolean presionado(int coordX, int coordY) {
    if (coordX >= posX && coordX <= posX + ancho && coordY >= posY && coordY <= posY + alto) {
        return true;
      }
    
    return false;
  }
}
