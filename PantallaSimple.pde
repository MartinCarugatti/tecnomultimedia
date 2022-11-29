class PantallaSimple {
  PImage img;
  Boton botonVolver;
  String titulo;
  String parrafo;
  
  PantallaSimple (ProgramaPrincipal _programaPrincipal, String _titulo, String _parrafo) {
    img = loadImage("img00.jpg");
    botonVolver = new Boton(25, 175, "Volver.jpg");
    programaPrincipal         = _programaPrincipal;
    titulo=_titulo;
    parrafo=_parrafo;
  }

  void dibujar() {
    image(img, 0, 0, 900, 300);
    botonVolver.dibujar();
    textAlign(CENTER);
    textSize(38);
    text(titulo, 450, 100);

    textSize(24);

    text(parrafo, 450, 150);
  }

  void mousePresionado (int x, int y) {
    if (botonVolver.presionado(x, y)) {
      programaPrincipal.cambiarPantalla(0);
    }
  }
}
