class Terodactilo {
  PImage img, img1;
  int posX, posY;
  int ancho, alto; 
  String nombreIMG;

  Terodactilo(int _posX, int _posY, int _ancho, int _alto) {
    posX = _posX;
    posY = _posY;
    ancho = _ancho;
    alto = _alto; 

    img = loadImage("Tero0.png");
    img1 = loadImage("Tero1.png");
  }
  void dibujar() {
    imageMode(CENTER);
    if (frameCount%8== 0) {
      image(img1, posX, posY, ancho, alto);
    } else {
      image(img, posX, posY, ancho, alto);
    }
  }

  void reiniciarPosicion() {
    posX=1000;
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
