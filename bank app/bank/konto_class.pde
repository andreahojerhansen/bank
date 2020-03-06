class konto {

  int bankX;
  int bankY;
  int bankB;
  int bankH;
  String kontoNavn;
  int saldo;


  konto(int bX, int bY, int bB, int bH, String KN) {

    bankX = bX;
    bankY = bY;
    bankB = bB;
    bankH = bH;
    kontoNavn = KN;
  }


  void opdaterSaldo(int belob) {

    saldo = saldo + belob;
    clear();
    background(200,0,60);
    fill(100,30,200);
    rect(bankX, bankY, bankB, bankH);
    fill(255,255,100);
    text(kontoNavn,bankX, bankY - 5);
    fill(255, 255, 100);
    textSize(30);
    text(saldo, bankX + 10, bankY + 35);
  }
}
