class Cofrinho {
  // Atributos (saldo e quantidadeDepositos)
  double saldo;
  int quantidadeDepositos;

  //Inicializa o saldo e coloca a contagem de depósitos em zero
  Cofrinho(this.saldo) : quantidadeDepositos = 0;

  //Método para adicionar dinheiro
  //Valida se o valor é positivo antes de somar ao saldo (Segurança)
  void depositar(double valor) { //Toda vez que você coloca dinheiro, o saldo aumenta e o contador de depósitos também sobe
    if (valor > 0) {
      saldo += valor; //Acumula o valor no total
      quantidadeDepositos++; //Registra que uma nova economia foi feita
      print("Sucesso! Depósito de R\$ $valor realizado.");
    } else {
      print("Erro: O valor do depósito deve ser maior que zero."); //OBS: O valor do depósito deve ser obrigatoriamente maior que zero
    }
  }
  //Método para exibir o saldo sem quebrar o cofre
  void exibirSaldo() {
    print("Saldo atual disponível: R\$ $saldo");
  }

  //Método para "quebrar" e zerar tudo
  //Mostra o relatório final e limpa os dados do objeto (Reset)
  void quebrar() { //Ele mostra quanto você economizou e depois limpa o cofrinho
    print("\n--- QUEBRANDO O COFRINHO ---");
    print("Valor total resgatado: R\$ $saldo");
    print("Quantidade de vezes que você poupou: $quantidadeDepositos");
    
    //Após quebrar, o cofre fica vazio
    saldo = 0; // Esvazia o dinheiro do cofre
    quantidadeDepositos = 0; // Zera o contador de operações
    print("O cofrinho agora está vazio.");
    print("----------------------------\n");//deixar bonito
  }
}