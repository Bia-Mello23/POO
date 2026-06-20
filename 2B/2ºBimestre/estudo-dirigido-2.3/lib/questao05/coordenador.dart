import 'pessoa.dart';
import 'apresentavel.dart';

class Coordenador extends Pessoa implements Apresentavel {
  String area;
  int tempoExperiencia; // anos

  Coordenador(String nome, int idade, this.area, this.tempoExperiencia)
      : super(nome, idade);

  @override
  void exibirDados() {
    print('Coordenador: $nome, $idade anos | Área: $area | Experiência: $tempoExperiencia anos');
  }

  @override
  String toString() {
    return 'Coordenador: $nome, $idade anos, $area, ${tempoExperiencia} anos de experiência';
  }
}