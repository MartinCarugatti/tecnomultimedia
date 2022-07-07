
//https://youtu.be/jUvn7fnu1DA

PImage DINO;
PImage [] imagenes = new PImage [6];
int alto = 50;
int imagenActual = 0;
int tamFondoX=900;
PImage [] PNG = new PImage [3];
int posX=0;
boolean personaje_estaSaltando;
int personaje_estaSaltandoDireccion;
int personaje_velocidadSalto = 5;
int personaje_posX = 100;
int personaje_posY = 210;
int topePiso = 210;
int topeSalto = personaje_posY - 150;
int tamPersonajeX = 80;
int tamPersonajeY = 80;
int cactus_posX= 1000;
int cactus_posY= 210;
int tamCactusX= 80;
int tamCactusY= 80;
int dist= 40;
int velocidad = 5;
int distEntreCactus= 1000;
PFont pixel;
int counter=0;
int puntaje = 0;
int colorFuente= 0;
int posTextoX=300;
int posTextoY=150;

void setup() {
  size(900, 300);
  CargaDeImagenesYFuente(32);
} 

void draw() {
  background(200);
  imageMode(CORNER);
  

  image(imagenes[imagenActual], posX, 0, tamFondoX, height);
  imageMode(CENTER);
  pantallaDeInicio();
  creditos();
  botonDeInicio();
  pantallaDeJuego();
  botonCreditos();
  botonVolver();
  
}
