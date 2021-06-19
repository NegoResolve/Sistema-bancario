import 'agencia.dart';
import 'cliente.dart';
import 'conta.dart';

class ContaCorrente extends Conta {
  int numero;
  Agencia agencia;
  Cliente cliente;
  double saldo;
  double limite;

  ContaCorrente(
      {required this.numero,
      required this.agencia,
      required this.cliente,
      required this.saldo,
      required this.limite})
      : super(numero: numero, agencia: agencia, cliente: cliente, saldo: saldo);
}
