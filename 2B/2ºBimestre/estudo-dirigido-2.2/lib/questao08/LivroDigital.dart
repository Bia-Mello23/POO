import 'Livro.dart';
import 'Informativo.dart';

class Livrodigital extends Livro implements Informativo {
  double tamanhoArquivo;

  Livrodigital (this.tamanhoArquivo, String autor, String titulo) :super (autor, titulo);

  @override
  void exibirInformacoes() {
    print("Baixando livro $titulo da autora $autor... Este arquivo contém $tamanhoArquivo MB.");
  }
}