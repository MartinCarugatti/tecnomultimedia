class Personaje {
  PImage img, img1;
  int posX, posY;
  int ancho, alto; 
  int numeroDeIMG;
  String nombreIMG;
  boolean personaje_estaSaltando ;
  int personaje_estaSaltandoDireccion;
  int personaje_velocidadSalto;
  int topePiso = 210;
  int topeSalto = posY - 150;
  int counter = 0;

  Personaje(int _posX, int _posY, int _ancho, int _alto, String _nombreIMG ) {
    posX = _posX;
    posY = _posY;
    ancho = _ancho;
    alto = _alto; 
    nombreIMG = _nombreIMG;

    img = loadImage("Dino" + 0 + ".png");
    img1=loadImage("Dino" + 1 + ".png");
    personaje_estaSaltando = false;
    personaje_estaSaltandoDireccion = 1;
    personaje_velocidadSalto = 5;
    topePiso = 210;
    topeSalto = posY - 150;
  }
  void dibujar() {
    imageMode(CENTER);
    if (frameCount%8== 0) {
      image(img1, posX, posY, ancho, alto);
    } else {
      image(img, posX, posY, ancho, alto);
    }
    saltar();
  }


  void reiniciarPosicion() {
    posY = 210;
  }
  void saltar() {
    if  (!personaje_estaSaltando && keyPressed && keyCode==UP) {

      personaje_estaSaltando = true;
      personaje_estaSaltandoDireccion = 1;
    } else if (
      personaje_estaSaltando==true && 
      personaje_estaSaltandoDireccion == 1 &&
      posY < topeSalto) {
      personaje_estaSaltandoDireccion = -1;
    } else if (
      personaje_estaSaltando && 
      personaje_estaSaltandoDireccion == -1 &&
      posY > topePiso) {
      personaje_estaSaltandoDireccion = 0;
      personaje_estaSaltando = false;
    } else if (personaje_estaSaltando && personaje_estaSaltandoDireccion == 1) {
      posY-=personaje_velocidadSalto ;
    } else if ( personaje_estaSaltando && personaje_estaSaltandoDireccion == -1) {
      posY= posY+personaje_velocidadSalto;
    }
  }
}
