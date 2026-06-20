class Livro {
  String titulo;
  String autor;

  Livro(this.titulo, this.autor);

  @override
  String toString() {
    return 'Título: $titulo | Autor: $autor';
  }
}