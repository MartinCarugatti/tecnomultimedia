class Score {
  PFont fuente;
  int puntaje;


  Score() {
    fuente = createFont("FuentePixelada.ttf", 40);

    fill(0);
    textFont(fuente, 40);
  }


  void dibujar() {

    text("Score: "+puntaje+" ", 800, 50);
    if (frameCount%60== 0) {
      puntaje+=10;
    }
  }
  void reiniciar() {
    puntaje=0;
  }
}
