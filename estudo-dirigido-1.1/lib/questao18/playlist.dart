class Musica { //Classe base para representar uma música
  String titulo;
  String artista;
  int duracaoSegundos;

//Construtor: Preenche os dados da música quando ela é criada
  Musica(this.titulo, this.artista, this.duracaoSegundos); //Garante que o cálculo use valores positivos, respeitando a regra de duracaoSegundos > 0
}
//Classe que agrupa objetos > ela "carrega" 3 instâncias da classe Musica
class Playlist {
  String nome;
  //Atributos de tipo complexo: aqui é guardado objetos inteiros, não apenas textos
  Musica musica1;
  Musica musica2; //Uso de tipagem forte: os atributos são obrigatoriamente objetos da classe Musica
  Musica musica3;
//Construtor: Recebe o nome da lista e os 3 objetos música prontos
  Playlist(this.nome, this.musica1, this.musica2, this.musica3);

//Lógica de Soma: acessa o atributo 'duracaoSegundos' de cada objeto e soma tudo
  int calcularDuracaoTotal() { //Implementa a soma exata dos atributos duracaoSegundos de cada objeto Musica associado
    return musica1.duracaoSegundos + musica2.duracaoSegundos + musica3.duracaoSegundos;
  }

//Exibição: Chama o método de cálculo acima para mostrar o resultado final
  void exibirPlaylist() {
    print("--- PLAYLIST: $nome ---");
    print("Duração Total: ${calcularDuracaoTotal()} segundos");
    print("-----------------------");
  }

//Sequência: Acessa o título e artista de cada objeto Musica para imprimir
  void tocarPlaylist() {
    print("Tocando agora: ${musica1.titulo} (${musica1.artista})");
    print("Tocando agora: ${musica2.titulo} (${musica2.artista})");
    print("Tocando agora: ${musica3.titulo} (${musica3.artista})");
  }
}