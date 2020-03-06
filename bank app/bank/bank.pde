Knap k1;
Knap k2;
konto B1;


void setup() {
  size (500, 500);
  background(200,0,60);

  k1 = new Knap(50, 100, 150, 50, " Indsæt 100kr ");
  k2 = new Knap(300, 100, 150, 50, " Fjern 100kr ");
  B1 = new konto(200, 300, 100, 50, "Saldo");
}


void draw() {
  k1.tegnKnap();
  k2.tegnKnap();
}


void mousePressed() {
  k1.registrerKlik();
  k2.registrerKlik();
  
  if (k1.knapTrykket) {
    B1.opdaterSaldo(100);
  }
  
  if (k2.knapTrykket) {
    B1.opdaterSaldo(-100);
  }
}
