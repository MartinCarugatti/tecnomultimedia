class PantallaJuego {


  int posX=0;
  int jugando = 0;
  PImage img;
  int tamFondoX=7200;
  Juego juego;
  Boton botonVolver;
  Boton botonReinicio;
  



  PantallaJuego(ProgramaPrincipal _programaPrincipal) {
    img = loadImage("img0" +2+".jpg");
    juego = new Juego(false);
    botonReinicio = new Boton(350, 200, "Restart.jpg");
    botonVolver = new Boton(25, 175, "Volver.jpg");
    programaPrincipal = _programaPrincipal;
  }

  void dibujar() {
    background(0);
    imageMode(CORNER);
    image(img, posX, 0, tamFondoX, height);
    juego.dibujar();
    paralax();
    botonVolver();
  }

  void paralax() {
    posX-=5;
    if (posX <=-6200) {
      posX=0;
    }
  }


  void botonVolver() {
    if (juego.colision == true || juego.colision1 == true ) {
      imageMode(CORNER);
      botonVolver.dibujar();
      botonReinicio.dibujar();
    }
  }

  void mousePresionado (int x, int y) {
    if (botonVolver.presionado(x, y)) {
      programaPrincipal.cambiarPantalla(0);
      juego.reinicio();
      juego.colision= false;
      juego.colision1= false;
      juego.gameOver=false;
    }
    if (botonReinicio.presionado(x, y)) {
      juego.reinicio();
      juego.colision= false;
      juego.colision1= false;
      juego.gameOver=false;
    }
  }
}
