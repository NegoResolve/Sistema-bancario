import 'model/agencia.dart';
import 'model/conta.dart';
import 'model/conta_corrente.dart';
import 'model/conta_poupanca.dart';
import 'model/endereco.dart';
import 'model/gerente.dart';
import 'model/cliente.dart';

void main() {
  Endereco endereco1 = Endereco(
      estado: "RS",
      cidade: "Porto Alegre",
      bairro: "Santa Teresa",
      numero: "403 ac 04",
      rua: "Avenida Moab Caldas");

  Endereco endereco2 = Endereco(
      numero: "23",
      bairro: "Ponta Nova",
      cidade: "Caxias do Sul",
      rua: "B",
      estado: "RS");

  Gerente gerente1 = Gerente(
      nome: "Allysson Azeredo Moura",
      matricula: "23452345t",
      email: "allysson.moura.azeredo@gmail.com",
      telefone: "(51) 98440-1849",
      ramal: 255,
      endereco: endereco1);

  Agencia agencia1 = Agencia(45, endereco2, gerente1);

  Cliente cliente1 = Cliente(
      nome: "Allysson Azeredo Moura",
      RG: "2344004859",
      CPF: "4958274950",
      telefone: "(51) 98440-1849",
      email: "allysson.moura.azeredo@gmail.com",
      endereco: endereco1);

  Cliente cliente2 = Cliente(
      nome: "Marta Gabriela Costa Duarte",
      RG: "8274023856",
      CPF: "82650487609",
      telefone: "(51) 98440-1849",
      email: "marta.moura.azeredo@gmail.com",
      endereco: Endereco(
          rua: "Avenida Edgar Pires de Castro",
          numero: "160 - A",
          bairro: "Restinga",
          cidade: "Porto Alegre",
          estado: "RS"));

  ContaCorrente contac = ContaCorrente(
      agencia: agencia1,
      cliente: cliente2,
      numero: 90,
      saldo: 954.00,
      limite: 400.00);

  ContaPoupanca contap = ContaPoupanca(
      numero: 23423,
      agencia: agencia1,
      cliente: cliente2,
      saldo: 5345,
      aniversario: 02);

  String saldo;

  print("Depositar R\$ 100");
  contac.Depositar(100);
  print("Obtendo o saldo atual:");
  saldo = contac.obterSaldo();
  print(saldo);
  print("Sacando R\$ 50");
  contac.Sacar(50);
  print("Obtendo saldo atual:");
  saldo = contac.obterSaldo();
  print(saldo);
}
