import 'Aluno.dart';
import 'Professor.dart';
import 'Coordenador.dart';
import 'Apresentavel.dart';
import 'ListaGenerica.dart';

void main() {

  var ana = Aluno('Ana', 19, 'Aluna', 'A001', 'ADS');
  var bruno = Aluno('Bruno', 22, 'Aluno', 'A002', 'Engenharia de Software');
  var carla = Professor('Carla', 38, 'Professora', 'POO', 2000.00);
  var diego = Professor('Diego', 41, 'Professor', 'Banco de Dados', 1900.00);
  var elisa = Coordenador('Elisa', 45, 'Coordenadora', 'Tecnologia', 15);
  
  var listaPessoas = ListaGenerica<Apresentavel>();

  listaPessoas.adicionar(ana);
  listaPessoas.adicionar(bruno);
  listaPessoas.adicionar(carla);
  listaPessoas.adicionar(diego);
  listaPessoas.adicionar(elisa);

  print('\n Imprimir Itens \n');
  listaPessoas.imprimirItens();

  print('\n exibirDados \n');
  for (Apresentavel pessoa in listaPessoas.itens) {
    pessoa.exibirDados();
  }
}
