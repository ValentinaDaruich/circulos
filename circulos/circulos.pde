int cant = 10;
int tam;
void setup() {
  size(900, 400);
  tam = width/cant;
}
void draw() {
  background(0);
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      fill(100);
      if ((i+j)%2==0) {
        for (int c = 0; c<cant; c++) {
          float diametro = map(c, 0, cant, tam, 5 );
          if (c%2==0) { // pares 
            fill(0, 255, 0);
          } else {
            fill(0);
          }
          ellipse(i*tam+tam/2, j*tam+tam/2, diametro, diametro );
        }
      }
    }
  }
}
