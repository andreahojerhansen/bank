class Knap {
  int positionX;
  int positionY;
  int hojde;
  int bredde;
  String titel;

  boolean knapTrykket;




  Knap(int posX, int posY, int b, int h, String t) {

    positionX = posX;
    positionY = posY;
    hojde = h;
    bredde = b;
    titel = t;


    println(" positionX " + positionX + " positionY " + positionY +  " bredde " + bredde + " hojde " + hojde + " titel " + titel);
  }




  void tegnKnap() {
    fill(255, 255, 100);
    rect(positionX, positionY, bredde, hojde);
    fill(255,100,255);
    textSize(20);
    text(titel, positionX, positionY + 30);
  }




  void registrerKlik() {

    if (mousePressed == true) {
      if (mouseX > positionX && mouseX < bredde + positionX && mouseY > positionY && mouseY < hojde + positionY) {
        knapTrykket = true;
        println(titel + " trykket" );
      } else { 
        knapTrykket = false;
        println(titel + " ikke trykket" );
      }
    }
  }
}
