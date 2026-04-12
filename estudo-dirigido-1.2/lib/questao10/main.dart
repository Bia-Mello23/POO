import 'caixa.dart';

// Função que ALTERA o objeto (modifica seu conteúdo)
void alterarValor(Caixa c) {
  c.setValor(999);  // muda o valor interno da caixa recebida
}

// Função que TROCA A REFERÊNCIA local (não afeta o original)
void trocarCaixa(Caixa c) {
  c = Caixa(888);   // c passa a apontar para um novo objeto (localmente)
  // O parâmetro c é uma cópia da referência original.
  // Atribuir um novo objeto a c não altera a variável original do main.
}

void main() {
  Caixa minhaCaixa = Caixa(100);

  print("=== ANTES ===");
  minhaCaixa.exibir();  // Caixa com valor: 100

  alterarValor(minhaCaixa);
  print("\n DEPOIS de alterarValor()");
  minhaCaixa.exibir();  // Caixa com valor: 999 (modificado!)

  trocarCaixa(minhaCaixa);
  print("\n DEPOIS de trocarCaixa() ");
  minhaCaixa.exibir();  // Continua sendo 999, não mudou para 888.
}