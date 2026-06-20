import 'Livro.dart';
import 'Informativo.dart';

class Livrofisico extends Livro implements Informativo {
  int quantidadePaginas;

  Livrofisico (this.quantidadePaginas, String autor, String titulo) :super (autor, titulo);

  @override
  void exibirInformacoes() {
    print ("O livro $titulo da autora $autor, contém $quantidadePaginas páginas.");
  }
}