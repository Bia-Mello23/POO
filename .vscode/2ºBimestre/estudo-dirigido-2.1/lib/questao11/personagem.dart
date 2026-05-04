class Personagem {
  String nome;
  int vida;
  int nivel;


   Personagem(this.nome, this.vida, this.nivel) {
    if (nome.isEmpty) nome = "Sem nome";
    if (vida < 0) vida = 0;
    if (nivel < 1) nivel = 1;
  }

  
  void receberDano(int dano) {
    if (dano <= 0) return;
    vida -= dano;
    if (vida < 0) vida = 0;
  }

  bool estaVivo() => vida > 0;

  void exibirStatus() {
    print("Nome: $nome");
    print("Vida: $vida");
    print("Nível: $nivel");
  }
}

class Combatente extends Personagem {
  int forca;

  Combatente(String nome, int vida, int nivel, this.forca) : super(nome, vida, nivel);

  void atacar(Personagem alvo) {
    if (!estaVivo()) {
      print("$nome está morto e não pode atacar.");
      return;
    }
    print("$nome ataca ${alvo.nome} causando $forca de dano.");
    alvo.receberDano(forca);
  }

  @override
  void exibirStatus() {
    super.exibirStatus();
    print("Força: $forca");
  }
}

class Guerreiro extends Combatente {
  int armadura;

  Guerreiro(String nome, int vida, int nivel, int forca, this.armadura)
      : super(nome, vida, nivel, forca);

  void ataquePesado(Personagem alvo) {
    if (!estaVivo()) {
      print("$nome está morto e não pode atacar.");
      return;
    }
    int dano = forca * 2;
    print("$nome usa ATAQUE PESADO em ${alvo.nome} causando $dano de dano.");
    alvo.receberDano(dano);
  }

  @override
  void exibirStatus() {
    super.exibirStatus();
    print("Armadura: $armadura");
  }
}

class Arqueiro extends Combatente {
  int flechas;

  Arqueiro(String nome, int vida, int nivel, int forca, this.flechas)
      : super(nome, vida, nivel, forca);

  @override
  void atacar(Personagem alvo) {
    if (!estaVivo()) {
      print("$nome está morto e não pode atacar.");
      return;
    }
    if (flechas <= 0) {
      print("$nome não tem flechas e não pode atacar!");
      return;
    }
    flechas--;
    print("$nome dispara uma flecha em ${alvo.nome} causando $forca de dano.");
    alvo.receberDano(forca);
  }

  @override
  void exibirStatus() {
    super.exibirStatus();
    print("Flechas: $flechas");
  }
}

class Mago extends Combatente {
  int mana;

  Mago(String nome, int vida, int nivel, int forca, this.mana)
      : super(nome, vida, nivel, forca);

  void lancarMagia(Personagem alvo) {
    if (!estaVivo()) {
      print("$nome está morto e não pode lançar magia.");
      return;
    }
    if (mana < 10) {
      print("$nome não tem mana suficiente (mínimo 10).");
      return;
    }
    mana -= 10;
    int dano = forca + 15;
    print("$nome lança uma magia em ${alvo.nome} causando $dano de dano.");
    alvo.receberDano(dano);
  }

  @override
  void exibirStatus() {
    super.exibirStatus();
    print("Mana: $mana");
  }
}

class Inimigo extends Personagem {
  int recompensa;

  Inimigo(String nome, int vida, int nivel, this.recompensa) : super(nome, vida, nivel);

  void exibirRecompensa() {
    print("Recompensa ao derrotar $nome: $recompensa moedas.");
  }

  @override
  void exibirStatus() {
    super.exibirStatus();
    print("Recompensa: $recompensa");
  }
}

class Goblin extends Inimigo {
  int velocidade;

  Goblin(String nome, int vida, int nivel, int recompensa, this.velocidade)
      : super(nome, vida, nivel, recompensa);

  @override
  void exibirStatus() {
    super.exibirStatus();
    print("Velocidade: $velocidade");
  }
}

class Ketheric extends Inimigo {
  int danoNecrotico;

  Ketheric(String nome, int vida, int nivel, int recompensa, this.danoNecrotico)
      : super(nome, vida, nivel, recompensa);

  void causarDanoNecrotico(Personagem alvo) {
    if (!estaVivo()) {
      print("$nome está morto e não pode causar dano necrótico.");
      return;
    }
    print("$nome causa dano necrótico em ${alvo.nome} causando $danoNecrotico de dano.");
    alvo.receberDano(danoNecrotico);
  }

  @override
  void exibirStatus() {
    super.exibirStatus();
    print("Dano Necrótico: $danoNecrotico");
  }
}

void main() {
  // Personagens de Baldur's Gate 3
  var laezel = Guerreiro("Lae'zel", 140, 6, 25, 18);
  var astarion = Arqueiro("Astarion", 95, 5, 18, 8);
  var gale = Mago("Gale", 85, 7, 10, 40);
  var goblin = Goblin("Goblin", 55, 3, 120, 25);
  var ketheric = Ketheric("Ketheric", 250, 9, 800, 55);

  print(" STATUS INICIAL ");
  laezel.exibirStatus();
  print("");
  astarion.exibirStatus();
  print("");
  gale.exibirStatus();
  print("");
  goblin.exibirStatus();
  print("");
  ketheric.exibirStatus();
  print("\n");

  print("=== BATALHA ===");
  laezel.atacar(goblin);
  astarion.atacar(goblin);
  gale.lancarMagia(ketheric);
  ketheric.causarDanoNecrotico(laezel);

  print("\n STATUS APÓS COMBATE ");
  laezel.exibirStatus();
  print("");
  astarion.exibirStatus();
  print("");
  gale.exibirStatus();
  print("");
  goblin.exibirStatus();
  print("");
  ketheric.exibirStatus();

  print("\n=== SOBREVIVENTES ===");
  if (!laezel.estaVivo()) print("Lae'zel foi derrotada.");
  if (!astarion.estaVivo()) print("Astarion foi derrotado.");
  if (!gale.estaVivo()) print("Gale foi derrotado.");
  if (!goblin.estaVivo()) {
    print("Goblin foi derrotado! Recompensa: ${goblin.recompensa} moedas.");
  }
  if (!ketheric.estaVivo()) print("Ketheric foi derrotado!");
}


