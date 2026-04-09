class Cliente {
  String _nome = '';
  String _cpf = '';


//composição: cria o objeto sem expor a referência do objeto, ou seja, o cliente tem um endereço, mas o endereço não existe sem o cliente
 
 
 Endereco _endereco = Endereco();
  Cliente(this._nome, this._cpf);
}

//Delegação: criação de métodos para receber ou expor atributos do 