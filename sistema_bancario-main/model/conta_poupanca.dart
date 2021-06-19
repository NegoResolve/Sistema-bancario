import 'agencia.dart';
import 'cliente.dart';
import 'conta.dart';

class ContaPoupanca extends Conta {
  int numero;
  Agencia agencia;
  Cliente cliente;
  double saldo;
  int aniversario;

  ContaPoupanca({
    required this.numero,
    required this.agencia,
    required this.cliente,
    required this.saldo,
    required this.aniversario,
  }) : super(agencia: agencia, numero: numero, cliente: cliente, saldo: saldo);
}
