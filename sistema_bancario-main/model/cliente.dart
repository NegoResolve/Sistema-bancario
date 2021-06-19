import 'endereco.dart';
import 'pessoa.dart';

class Cliente extends Pessoa {
  String nome;
  String RG;
  String CPF;
  String telefone;
  String email;
  Endereco endereco;

  Cliente(
      {required this.nome,
      required this.RG,
      required this.CPF,
      required this.telefone,
      required this.email,
      required this.endereco})
      : super(nome: nome, endereco: endereco, email: email, telefone: telefone);

  String get getNome => this.nome;
  String get getRG => this.RG;
  String get getCPF => this.CPF;
  String get getTelefone => this.telefone;
  String get getEmail => this.email;
  Endereco get getEndereco => this.endereco;

  set setNome(String valor) => this.nome = valor.trim();
  set setRG(String valor) => this.RG = valor.trim();
  set setCPF(String valor) => this.CPF = valor.trim();
  set setTelefone(String valor) => this.telefone = telefone.trim();
  set setEmail(String valor) => this.email = valor.trim();
  set seteEndereco(Endereco valor) => this.endereco = valor;

  @override
  String toString() {
    return "O cliente $nome possuidor do RG $RG, do CPF $CPF, do telefone $telefone e do email $email, reside no estado ${endereco.estado}, na cidade ${endereco.cidade}, no bairro ${endereco.bairro}, na rua ${endereco.rua} nº ${endereco.numero}";
  }
}
