import 'informativo.dart';
import 'livro_fisico.dart';
import 'livro_digital.dart';
import 'audiobook.dart';
import 'lista_generica.dart';

void main() {
  ListaGenerica<Informativo> livros =
      ListaGenerica<Informativo>();

  Informativo livro1 =
      LivroFisico('Clean Code', 'Robert Martin', 425);

  Informativo livro2 =
      LivroDigital('Dart Básico', 'Mariana Souza', 12);

  Informativo livro3 =
      Audiobook('POO na Prática', 'Carlos Lima', 180);

  Informativo livro4 =
      LivroFisico('Algoritmos Modernos', 'Ana Torres', 350);

  Informativo livro5 =
      LivroDigital('Flutter Essencial', 'Pedro Alves', 25);

  livros.adicionar(livro1);
  livros.adicionar(livro2);
  livros.adicionar(livro3);
  livros.adicionar(livro4);
  livros.adicionar(livro5);

  print('--- Lista de Livros ---');
  livros.imprimirItens();

  print('\n--- Informações dos Livros ---');

  for (var livro in livros.obterItens()) {
    livro.exibirInformacoes();
  }
}