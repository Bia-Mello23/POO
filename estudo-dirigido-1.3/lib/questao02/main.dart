import 'listacliente.dart';

void main() {
  //instanciando 3 objetos de classe CLIENTE
  Cliente c1 = Cliente("Denyse", "denyse@email.com", 100.0, true);
  Cliente c2 = Cliente("Beatriz", "beatriz@email.com", 200.0, true);
  Cliente c3 = Cliente("Larissa", "lari@email.com", 50.0, true);

  //inserir na ListaCliente (usa o .add internamente) 
  ListaCliente lista = ListaCliente();
  lista.inserir(c1);
  lista.inserir(c2); //usei metodos da classe lista cliente
  lista.inserir(c3); //inves de uma lista solta

  //mostrar o tamanho da lista (.length) 
  print("Total de clientes: ${lista.tamanho()}"); //primeiro ele verifica o tamanho total

  //remover um cliente pelo índice (.removeAt)  //depois ele remove o cliente do indice 0 (a denyse)
  lista.remover(0);                               //beatriz que era o indice 1, ocupa o indice 0 automaticamente
  print("Após remover o primeiro cliente...");

  //recuperar um cliente com get(i) e exibir
  Cliente? buscado = lista.get(0);  
  if (buscado != null) { 
    print("Cliente na posição 0 agora é: ${buscado.nome}");
  }

  //exibir o conteúdo final usando o loop 
  print("\n--- Relatório Final ---"); 
  lista.exibirLista(); //encapsula o loop FOR que percorre todos os clientes restantes
}                        //imprime os dados formatados na tela