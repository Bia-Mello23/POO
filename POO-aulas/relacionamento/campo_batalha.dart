class CampoBatalha {

void iniciarLuta() {
    var heroi = Heroi('Batman'); //instanciação da classe Heroi, ou seja, criação de um objeto do tipo Heroi com o nome 'Batman'.
    var vilao = Vilao('Pinguim'); //instanciação da classe Vilao
    executarLuta(heroi, vilao); //chamada do método executarLuta do objeto campoBatalha, ou seja, o campo de batalha executa a luta entre o herói e o vilão.

  void executarLuta(Heroi heroi, Vilao vilao) {
    while (heroi.estaVivo() && vilao.estaVivo()) { //enquanto o herói e o vilão estiverem vivos, ou seja, enquanto a vida do herói e do vilão for maior que 0.
      heroi.atacar(vilao); //o herói ataca o vilão, ou seja, o herói causa dano no vilão.
      
    }
}