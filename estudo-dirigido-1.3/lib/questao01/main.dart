import 'cliente.dart';

void main() {
  // Criar dois clientes
  var cliente1 = Cliente("Beatriz Mello", "beatriz.mello@utp.com", 100.0, true);
  var cliente2 = Cliente("Denyse Panza", "denyse.panza@utp.com", 50.0, false);

  // setters para alterar dados
  cliente1.nome = "Beatriz Mello Silva"; // setter válido
  cliente1.email = "beatriz.mello.silva@utp.com";
  cliente2.saldoCarteira = 75.0;   // setter válido
  cliente2.saldoCarteira = -10.0;  // setter inválido 

  cliente1.adicionarSaldo(50.0);

  cliente2.debitarSaldo(30.0);
  cliente2.debitarSaldo(100.0); // tentativa inválida (saldo insuficiente)

  cliente2.ativar();
  cliente1.desativar();

  cliente1.exibirCliente();
  cliente2.exibirCliente();
}