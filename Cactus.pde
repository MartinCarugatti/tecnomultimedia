class Cactus {
  PImage img;
  int posX, posY;
  int ancho, alto; 
 

  Cactus(int _posX, int _posY, int _ancho, int _alto) {
    posX = _posX;
    posY = _posY;
    ancho = _ancho;
    alto = _alto; 

    img = loadImage("Cactus.png");
  }
  void dibujar() {
    imageMode(CENTER);
    image(img, posX, posY, ancho, alto);
  }

  void reiniciarPosicion() {
    posX=2000;
  }
  void movimiento() {
    posX= posX-5;
  }




  void redibujar() {
    if (posX<=-80) {
      posX=2000;
    }
  }
}
