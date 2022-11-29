class ProgramaPrincipal {
  PantallaMenu pantallaMenu;
  PantallaSimple      pantallaCreditos;
  PantallaSimple      pantallaInstrucciones;
  PantallaJuego pantallaJuego;

  PFont fuente;
  int          pantalla;     

  ProgramaPrincipal() {
    fuente = createFont("FuentePixelada.ttf", 16);
    pantallaMenu= new PantallaMenu(this);
    pantallaCreditos= new PantallaSimple(this, "Creditos", "Tecnologia multimedial 1\nCarugatti Martin \nLegajo \n91509/8");
    pantallaInstrucciones= new PantallaSimple(this, "Instrucciones", "Presiona UP para saltar y esquivar los obstaculos, si los tocas pierdes");
    pantallaJuego= new PantallaJuego(this);
    pantalla = 0;
    textFont(fuente, 16);
    fill(0);
  }

  void dibujar() {
    if (pantalla == 0) {
       pantallaMenu.dibujar();
    } else if (pantalla == 1) {
      pantallaInstrucciones.dibujar();
    } else if (pantalla == 2) {
      pantallaJuego.dibujar();
    }
    else if (pantalla == 3) {
      pantallaCreditos.dibujar();}
  }

 void mousePresionado(int cursorX, int cursorY) {
    if (pantalla == 0) {
      pantallaMenu.mousePresionado(cursorX, cursorY);
    } else if (pantalla == 1) {
      pantallaInstrucciones.mousePresionado(cursorX, cursorY);
    } else if (pantalla == 2) {
      pantallaJuego.mousePresionado(cursorX, cursorY);
    }else if(pantalla == 3){
    pantallaCreditos.mousePresionado(cursorX, cursorY);}
 }

  void cambiarPantalla(int numeroDePantalla) {
    pantalla = numeroDePantalla;
  } 
}
