class PantallaMenu {
  PImage img;
  Boton botonInstrucciones, botonCreditos, botonStart;
  
  PantallaMenu(ProgramaPrincipal _programaPrincipal) {
    img   = loadImage("img00.jpg");
    botonInstrucciones = new Boton(350, 200, "Instructions.jpg");
    botonCreditos      = new Boton(350, 125, "Credits.jpg");
    botonStart    = new Boton(350, 50, "Start.jpg");
    programaPrincipal         = _programaPrincipal;
  }

  void dibujar() { 
    image(img, 0, 0, 900, 300);
    botonInstrucciones.dibujar();
    botonStart.dibujar();
    botonCreditos.dibujar();
  }

  void mousePresionado(int x, int y) {
    if (botonInstrucciones.presionado(x, y)) {
      programaPrincipal.cambiarPantalla(1);
    } else if (botonCreditos.presionado(x, y)) {
      programaPrincipal.cambiarPantalla(3);
    } else if (botonStart.presionado(x, y)) {
      programaPrincipal.cambiarPantalla(2);
    }
  }
}
