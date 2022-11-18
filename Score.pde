class Score{
PFont fuente;
int puntaje;
  
  
  Score(){
  fuente = createFont("FuentePixelada.ttf", 32);
  textFont(fuente, 32);
  fill(0);
  }


  void dibujar(){
  text("Score: "+puntaje+" ",680,50);
   if(frameCount%60== 0){puntaje+=10;}
  }
  void reiniciar(){
  puntaje=0;}
}
