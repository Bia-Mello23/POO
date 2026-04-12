

class Usuario {
  
  String _nome;
  String _email;
  String _apelido;   // pode ser igual ao nome se não fornecido

  // Construtor com parâmetros posicionais opcionais
  // Parâmetros obrigatórios: nome, email
  // Parâmetro opcional: apelido (colocado entre colchetes [])
  
  Usuario(this._nome, this._email, [this._apelido = ""]) {
    // Se o apelido não foi informado (ou foi uma string vazia), usa o nome
    if (_apelido.isEmpty) {
      _apelido = _nome;
    }
  }

  void exibirPerfil() {
    print(" PERFIL DO USUÁRIO ");
    print("Nome    : $_nome");
    print("Email   : $_email");
    print("Apelido : $_apelido");
    
  }

  String get nome => _nome;
  String get email => _email;
  String get apelido => _apelido;
}