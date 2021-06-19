import 'endereco.dart';
import 'pessoa.dart';

class Gerente extends Pessoa {
  String nome;
  String matricula;
  String email;
  String telefone;
  int? ramal;
  Endereco endereco;

  Gerente(
      {required this.matricula,
      this.ramal,
      required this.nome,
      required this.email,
      required this.telefone,
      required this.endereco})
      : super(nome: nome, endereco: endereco, email: email, telefone: telefone);

  String get getNome => this.nome;
  String get getMatricula => this.matricula;
  String get getEmail => this.email;
  String get getTelefone => this.telefone;
  int? get getRamal => this.ramal;
  Endereco get getEndereco => this.endereco;

  set setNome(String valor) => this.nome = valor.trim();
  set setMatricula(String valor) => this.matricula.trim();
  set setEmail(String valor) => this.email.trim();
  set setTelefone(String valor) => this.telefone.trim();
  set setRamal(int valor) => this.ramal;
  set setEndereco(Endereco valor) => this.endereco;

  @override
  String toString() {
    return "O gerente $nome, que possui a matrícula $matricula, o email $email, o telefone $telefone e o ramal $ramal, reside no estado ${endereco.estado}, na cidade ${endereco.cidade}, no bairro ${endereco.bairro}, na rua ${endereco.rua} e nº ${endereco.numero}";
  }
}
