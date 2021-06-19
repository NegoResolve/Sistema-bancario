import 'agencia.dart';
import 'cliente.dart';

abstract class Conta {
  int numero;
  Agencia agencia;
  Cliente cliente;
  double saldo;

  Conta({
    required this.numero,
    required this.agencia,
    required this.cliente,
    required this.saldo,
  });

  int get getNumero => this.numero;
  Agencia get getAgencia => this.agencia;
  Cliente get getCliente => this.cliente;
  double get getSaldo => this.saldo;

  set setNumero(int valor) => this.numero = valor;
  set setNgencia(Agencia valor) => this.agencia = valor;
  set setCliente(Cliente valor) => this.cliente = valor;
  set setSaldo(double valor) => this.saldo = valor;

  String obterSaldo() {
    return "Senhor(a) ${cliente.nome}, saldo atual da conta número $numero é de R\$ $saldo.";
  }

  double Sacar(double valorSaque) {
    this.saldo = this.saldo - valorSaque;
    return valorSaque;
  }

  void Depositar(double valorDeposito) {
    this.saldo = this.saldo + valorDeposito;
  }

  void Transferir(double valorTransferencia, Conta contaDestino) {
    this.Sacar(valorTransferencia);
    contaDestino.Depositar(valorTransferencia);
  }

  @override
  String toString() {
    return "A conta nº $numero, da agencia ${agencia.numero}, do(a) cliente ${cliente.nome} possui o saldo de R\$ $saldo.";
  }
}
