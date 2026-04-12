import 'carteira.dart';
import 'pessoa.dart';

void main() {
  Carteira carteira = Carteira(100.0);
  Pessoa p1 = Pessoa("Beatriz", carteira);
  p1.exibir();

  Pessoa p2 = p1; // p2 referencia o mesmo objeto que p1
  p2.carteira.saldo = 250.0; // altera o saldo através de p2

  p1.exibir(); // mostra saldo 250 (alterado)
  p2.exibir(); // mesma coisa

  

  print(
    "\n a) Por que a alteração feita na carteira por p2 também apareceu quando o objeto foi acessado por p1?)",
  );
  print(
    "Resposta: Porque p1 e p2 são duas variáveis que armazenam a mesma referência (mesmo endereço de memória) para o objeto Pessoa. A carteira é um atributo desse objeto, então qualquer modificação através de qualquer referência afeta o mesmo objeto compartilhado.",
  );

  print(
    "\n b) Em termos conceituais, as variáveis p1 e p2 armazenam o objeto inteiro ou uma referência para ele?",
  );
  print(
    "Resposta: Armazenam uma referência (um endereço de memória) para o objeto. O objeto propriamente dito vive no heap.",
  );

  print(
    "\n c) Considerando o funcionamento de memória em linguagens orientadas a objetos, onde ficam as variáveis locais e onde ficam os objetos criados dinamicamente?",
  );
  print(
    "Resposta: As variáveis locais (como p1, p2, carteira) ficam na stack. Os objetos criados com new (ou construtores) ficam no heap.",
  );

  print(
    "\n d) Em que momento os objetos Pessoa e Carteira passam a ficar elegíveis para o garbage collector?",
  );
  print(
    "Resposta: Quando nenhuma referência aponta para eles. No exemplo, após p1 = null e p2 = null, o objeto Pessoa não tem mais referências. O objeto Carteira original também perde a referência (pois era referenciado apenas pela pessoa e pela variável local carteira que também sai de escopo ao final do main). Eles se tornam elegíveis para coleta.",
  );
}
