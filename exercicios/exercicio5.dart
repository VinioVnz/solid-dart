/* DIP - Refatore para que RelatorioService dependa de uma abstração (interface) e não da classe concreta. */

/* class MySQLDatabase {
  void salvar(String dado) {
    print('Salvando "$dado" no MySQL');
  }
}

class RelatorioService {
  final MySQLDatabase db;

  RelatorioService(this.db);

  void gerarRelatorio(String conteudo) {
    db.salvar(conteudo);
  }
} */

abstract class Database{
  void salvar(String dado);
}

class Mysql implements Database{
  @override
  void salvar(String dado){
    print('Salvando "$dado" no MySQL');
  }
}

class RelatorioService {
  final Database database;

  RelatorioService(this.database);

  void gerarRelatorio(String conteudo){
      database.salvar(conteudo);
  }

}

void main(List<String> args) {
  RelatorioService database = RelatorioService(Mysql());
  
  database.gerarRelatorio("Mensagem massa");

}