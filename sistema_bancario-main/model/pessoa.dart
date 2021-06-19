import 'endereco.dart';

abstract class Pessoa {
  String nome;
  String telefone;
  String email;
  Endereco endereco;

  Pessoa({
    required this.nome,
    required this.telefone,
    required this.email,
    required this.endereco,
  });
}
