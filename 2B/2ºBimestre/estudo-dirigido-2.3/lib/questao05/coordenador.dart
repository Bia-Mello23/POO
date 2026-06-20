import 'Pessoa.dart';
import 'Apresentavel.dart';

class Coordenador extends Pessoa implements Apresentavel {
  String tipo;
  String area;
  int tempoExp;

  Coordenador(String nome, int idade, this.tipo, this.area, this.tempoExp) : super(nome, idade);

  @override
  String toString() {
    return 'Nome: $nome | Idade: $idade | Tipo: $tipo | Área: $area | Experiência: $tempoExp anos';
  }

  @override
  void exibirDados() {
    print('O Coordenador(a) $nome, tem $idade anos é $tipo e trabalha na $area da escola. Ele tem $tempoExp anos de experiência.');
  }
}