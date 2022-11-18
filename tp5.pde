ProgramaPrincipal programaPrincipal;
import processing.sound.*;
SoundFile fileEffect;


void setup() {
  size(900, 300);
  
 programaPrincipal = new ProgramaPrincipal();
 fileEffect = new SoundFile(this, "musica.wav"); 
}

void draw() {
  background(200);
  programaPrincipal.dibujar();
  if(!fileEffect.isPlaying()){
   
  fileEffect.play(1);
  }
  
  }



void mouseClicked() {
 programaPrincipal.mousePresionado();
}
