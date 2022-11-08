class Imagen {
  PImage img;
  int posX;
  int ancho;
  Imagen(String nombre, int _posX, int _ancho) {
    posX=_posX;
    ancho = _ancho;
    img = loadImage(nombre);
  }

  void dibujar() {
    image(img, posX, 0, ancho, height);
  }

void mover(){
posX= posX-5;
}

void ajustarImagen(){
  ancho = 7200;
}
void loopFondo(){
if(posX<=-6300){posX=0;
}
}
}
