abstract class Animal {
  String nome;
  String tipo;

  Animal (this.nome, this.tipo);

  @override
  String toString() {
    return '$nome | $tipo';
  }
}