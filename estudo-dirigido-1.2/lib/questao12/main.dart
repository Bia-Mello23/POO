import 'agenda.dart';
import 'contato.dart';

void main() {
  print(" AGENDA VAZIA ");
  Agenda agendaA = Agenda.vazia();
  agendaA.adicionarContato(Contato("Ana", "1111-1111"));
  agendaA.listarContatos();

  print("\n AGENDA COM LISTA PRONTA ");
  // lista 
  List<Contato> listaPronta = [
    Contato("Bruno", "2222-2222"),
    Contato("Clara", "3333-3333")
  ];
  
  // agenda já passando a lista
  Agenda agendaB = Agenda.comContatos(listaPronta);
  agendaB.listarContatos();

  print("\n REMOÇÃO NA AGENDA 2 ");
  agendaB.removerContatoPorNome("Bruno");
  agendaB.listarContatos();
}