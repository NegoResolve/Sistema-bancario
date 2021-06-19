import 'endereco.dart';
import 'gerente.dart';

class Agencia {
  int _numero;
  Endereco _endereco;
  Gerente _gerente;

  Agencia(this._numero, this._endereco, this._gerente);

  int get numero => this._numero;
  Endereco get endereco => this._endereco;
  Gerente get gerente => this._gerente;

  set numero(int valor) => this._numero = valor;
  set endereco(Endereco valor) => this._endereco = valor;
  set gerente(Gerente valor) => this._gerente = valor;

  @override
  String toString() {
    return "A agência $numero fica localizada na cidade de ${endereco.cidade}, no bairro ${endereco.bairro}, na rua ${endereco.rua}, nº ${endereco.numero} e é gerenciado pelo(a) Sr(a). ${gerente.nome}.";
  }
}
