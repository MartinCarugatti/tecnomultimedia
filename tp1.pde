PImage imagen;
PImage logoSolo;
int numImagen = 1;
int totalImagenes = 5;
PImage ciudad;
int posXtexto =200;
int posYtexto = 500;
int posXrec = 700;
int posYrec = 500;
int anchoRec = 60;
int largoRec = 35;
PImage logo;
int posXcreditos = 450;
int posYcreditos = 850;
PImage bale ;
PImage joker ;
PImage alfred ;
PImage doscaras;
PImage gordon;
PImage freeman;
PImage she;
PImage logoBlanco;
PImage recarga;
int tamanoAcPrinX=400;
int tamanoAcPriny=300;
int textoSecundariosX = -20;
int textoSecundariosY = 700;
int textoProduY = 400;
int textoProduX =-20;
PImage circulo;
PImage senal;
PFont batmanTipografia ;
PImage jokerGift;
int counter;
int posXprincipales = 80;
int posXimagenesPrincipales = 350;
PImage batimovil;
int contadorBatimovil;
int movilX = 1800;
int movilY = 400;
int movilTamX= 450;
int movilTamY= 150;
void setup(){
  size(800,600);
  batmanTipografia = createFont("batmfa__.ttf", 40);
   ciudad = loadImage("ciudad.png");
  imagen = loadImage("img0" + numImagen + ".jpg");
  logo = loadImage("batman"+0+".png");
  logoBlanco = loadImage("batman"+1+".png");
   bale = loadImage("batman"+4+".png");
    joker = loadImage("batman"+5+".png");
    alfred = loadImage("batman"+6+".png");
    gordon = loadImage("batman"+7+".png");
    doscaras = loadImage("batman"+8+".png");
    freeman = loadImage("batman"+9+".png");
    she = loadImage("batman"+10+".png");
 senal = loadImage("batman"+2+".png");
 circulo = loadImage("batman"+3+".png");
  counter = 0;
  jokerGift = loadImage("joker-" +counter + ".jpg");
  recarga = loadImage("recarga.png");
  logoSolo = loadImage("logo.png");
  batimovil = loadImage("batimovil"+contadorBatimovil+".png");
}

void draw(){
  background(200);
  image(imagen, 0, 0, width, height);
  println(posYcreditos);
  
  
if(posYcreditos <= -4000 ||  textoSecundariosY <= -2700 || textoProduY <= -1500   ){
 numImagen += 1;
    textoSecundariosY = 650;
    posYcreditos = 850;
    textoProduY = 700;
    if(numImagen == totalImagenes + 1){
      numImagen = 1;
    }
    if(numImagen == 1){
      numImagen = totalImagenes;
    }
  
  imagen = loadImage("img0" + numImagen + ".jpg");
}

  if(numImagen == 1){
    fill(230);
    noStroke();
    textFont(batmanTipografia, 40);
    
    textSize(40);
    
    image(logoBlanco, posXrec, posYrec, anchoRec, largoRec);
  
    text("The Dark Knight", posXtexto, posYtexto);
    fill(0);
  }
  else if(numImagen == 2){
    noStroke();
   
    
    textSize(40);
    fill(100);
    text("Actores Principales", posXcreditos-350, posYcreditos-200);
    textSize(25);
    text("Christian Bale", posXprincipales, posYcreditos+100);
    text("Heath Ledger", posXprincipales, posYcreditos+600);
    text("Michael Caine", posXprincipales, posYcreditos+1200);
    text("Gary Oldman", posXprincipales, posYcreditos+1800);
    text("Aaron Eckhart", posXprincipales, posYcreditos+2400);
    text("Morgan Freeman", posXprincipales, posYcreditos+3000);
    text("Maggie Gyllenhaal", posXprincipales, posYcreditos+3600);
    fill(255);
    posYcreditos -= 5;

    image(bale, posXimagenesPrincipales, posYcreditos+200, tamanoAcPrinX, tamanoAcPriny);
    
    image(joker, posXimagenesPrincipales, posYcreditos+600+100, tamanoAcPrinX, tamanoAcPriny);
    image(alfred, posXimagenesPrincipales, posYcreditos+1200+100, tamanoAcPrinX, tamanoAcPriny);
    image(gordon, posXimagenesPrincipales, posYcreditos+1800+100, tamanoAcPrinX, tamanoAcPriny);
    image(doscaras, posXimagenesPrincipales, posYcreditos+2400+100, tamanoAcPrinX, tamanoAcPriny);
    image(freeman,posXimagenesPrincipales, posYcreditos+3000+100, tamanoAcPrinX, tamanoAcPriny);
    image(she, posXimagenesPrincipales, posYcreditos+3600+100, tamanoAcPrinX, tamanoAcPriny);
     image(logo, posXrec, posYrec, anchoRec, largoRec);
  }
     else if(numImagen == 3){
       
 movilX -=10;
   
   
    
    fill(0);
      if(frameCount%1 == 0){
    contadorBatimovil++;
  }

  if (contadorBatimovil > 7) {
    contadorBatimovil = 0;
    fill(255);
  }
  
  batimovil = loadImage("batimovil" + contadorBatimovil + ".png");
    image(batimovil,movilX,movilY,movilTamX,movilTamY);
    image(batimovil,movilX+3000,movilY,movilTamX,movilTamY);
    
    fill(150);
    textSize(40);
    text("Actores Secundarios", 100,textoSecundariosY);
    textSize(20);
text("Wuertz", textoSecundariosX+100,textoSecundariosY+100);
text("Ron Dean", textoSecundariosX+500,textoSecundariosY+100);
text("Lau", textoSecundariosX+100,textoSecundariosY+200);
text("Chin Chan", textoSecundariosX+500,textoSecundariosY+200);
text("Salvatore Maroni", textoSecundariosX+100,textoSecundariosY+300);
text("Eric Roberts", textoSecundariosX+500,textoSecundariosY+300);
text("Mayor", textoSecundariosX+100,textoSecundariosY+400);
text("Nestor Carbonell", textoSecundariosX+500,textoSecundariosY+400);
text("Chechen", textoSecundariosX+100,textoSecundariosY+500);
text("Ritchie Coster", textoSecundariosX+500,textoSecundariosY+500);
text("Engel", textoSecundariosX+100,textoSecundariosY+600);
text("Anthony Michael Hall", textoSecundariosX+500,textoSecundariosY+600);
text("Stephen", textoSecundariosX+100,textoSecundariosY+700);
text("Keith Szarabajka", textoSecundariosX+500,textoSecundariosY+700);
text("Commissioner Loeb", textoSecundariosX+100,textoSecundariosY+800);
text("Colin McFarlane", textoSecundariosX+500,textoSecundariosY+800);
text("Reese", textoSecundariosX+100,textoSecundariosY+900);
text("Joshua Harto", textoSecundariosX+500,textoSecundariosY+900);
text("Barbara Gordon", textoSecundariosX+100,textoSecundariosY+1000);
text("Melina McGraw", textoSecundariosX+500,textoSecundariosY+1000);
text("Nathan Gamble", textoSecundariosX+100,textoSecundariosY+1100);
text("Al Rossi", textoSecundariosX+500,textoSecundariosY+1100);
text("Michael Vieau", textoSecundariosX+100,textoSecundariosY+1200);
text("Dopey", textoSecundariosX+500,textoSecundariosY+1200);
text("Grumpy", textoSecundariosX+100,textoSecundariosY+1300);
text("Danny Goldring", textoSecundariosX+500,textoSecundariosY+1300);
text("Chuckles", textoSecundariosX+100,textoSecundariosY+1400);
text("Matthew O'Neill", textoSecundariosX+500,textoSecundariosY+1400);
text("Client", textoSecundariosX+100,textoSecundariosY+1500);
text("Gregory Beam", textoSecundariosX+500,textoSecundariosY+1500);
text("Natascha", textoSecundariosX+100,textoSecundariosY+1600);
text("Beatrice Rosen", textoSecundariosX+500,textoSecundariosY+1600);
text("Godfather", textoSecundariosX+100,textoSecundariosY+1700);
text("Vincenzo Nicoli", textoSecundariosX+500,textoSecundariosY+1700);
text("Vice-president of Wde LSI", textoSecundariosX+100,textoSecundariosY+1800);
text("Edison Chen", textoSecundariosX+500,textoSecundariosY+1800);
text("Judge Surillo", textoSecundariosX+100,textoSecundariosY+1900);
text("Nydia Rodriguez", textoSecundariosX+500,textoSecundariosY+1900);
text("Brian", textoSecundariosX+100,textoSecundariosY+2000);
text("Andy Luther", textoSecundariosX+500,textoSecundariosY+2000);
text("Prosecutor's assistant", textoSecundariosX+100,textoSecundariosY+2100);
text("Will Zahrn", textoSecundariosX+500,textoSecundariosY+2100);
text("Strong man at reception", textoSecundariosX+100,textoSecundariosY+2200);
text("James Fierro", textoSecundariosX+500,textoSecundariosY+2200);
text("Man of the world", textoSecundariosX+100,textoSecundariosY+2300);
text("Patrick Leahy", textoSecundariosX+500,textoSecundariosY+2300);
text("Party guest", textoSecundariosX+100,textoSecundariosY+2400);
text("Sam Derence", textoSecundariosX+500,textoSecundariosY+2400);
text("Party guest", textoSecundariosX+100,textoSecundariosY+2500);
text("Jennifer Knox", textoSecundariosX+500,textoSecundariosY+2500);
text("Judge Freel", textoSecundariosX+100,textoSecundariosY+2600);
text("Patrick Clear", textoSecundariosX+500,textoSecundariosY+2600);

image(logo, posXrec, posYrec, anchoRec, largoRec);

textoSecundariosY -= 5;}

 else if(numImagen == 4){ background(0);
  fill(255);
  noStroke();
  triangle(50,550,mouseX-100,mouseY,mouseX+100,mouseY);
image(circulo,mouseX-150,mouseY-150,300,300);
   
  fill(0); 
image(logoSolo, mouseX-25, mouseY-25, 50, 50);
textSize(40);
 fill(0);
    text("Banda Sonora", 160,textoProduY);
    textSize(20);
    textoProduY -= 5;
text("Compositor", textoProduX+100,textoProduY+100);
text("Hans Zimmer", textoProduX+500,textoProduY+100);
text("Compositor", textoProduX+100,textoProduY+200);
text("James Newton Howard", textoProduX+500,textoProduY+200);
textSize(40);
text("Productores", 160,textoProduY+400);
 textSize(20);
 text("Productor ejecutivo", textoProduX+100,textoProduY+600);
text("Kevin De La Noy", textoProduX+500,textoProduY+600);
text("Productor asociado", textoProduX+100,textoProduY+700);
text("Jordan Goldberg", textoProduX+500,textoProduY+700);
text("Productor", textoProduX+100,textoProduY+800);
text("Emma Thomas", textoProduX+500,textoProduY+800);
text("Productor", textoProduX+100,textoProduY+900);
text("Charles Roven", textoProduX+500,textoProduY+900);
text("Productor ejecutivo", textoProduX+100,textoProduY+1000);
text("Benjamin Melniker", textoProduX+500,textoProduY+1000);
text("Productor ejecutivo", textoProduX+100,textoProduY+1100);
text("Michael E. Uslan", textoProduX+500,textoProduY+1100);
text("Productor", textoProduX+100,textoProduY+1200);
text("Christopher Nolan", textoProduX+500,textoProduY+1200);
text("Productor ejecutivo", textoProduX+100,textoProduY+1300);
text("Thomas Tull", textoProduX+500,textoProduY+1300);
image(ciudad,0,400,800,200);
image(senal, 0, 500, 100, 100);
  image(logoBlanco, posXrec, posYrec, anchoRec, largoRec);

} else if(numImagen == 5){ background(200);
  image(jokerGift, 0, 0, width, height);
 jokerGift = loadImage("joker-" + counter + ".jpg");
 
 
  if(frameCount%1== 0){
    counter++;
  }

  if (counter > 7) {
    counter = 1;
    fill(random(255));
  }text("FIN",width/2, height*0.75);
  
image(recarga, posXrec, posYrec, anchoRec, largoRec);}
}





void mouseClicked(){
  if(mouseX > posXrec && mouseX < posXrec+50 && mouseY > posYrec && mouseY < posYrec +largoRec ){
    numImagen++;
    textoSecundariosY = 650;
    posYcreditos = 850;
    textoProduY = 700;
    movilX =1800;
    if(numImagen == totalImagenes + 1){
      numImagen = 1;
    }
  
   
  }
  imagen = loadImage("img0" + numImagen + ".jpg");
}
