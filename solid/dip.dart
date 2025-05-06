/* 
  DIP - DEPENDENCY INVERSION PRINCIPLE
  VIOLANDO A DIP
  o UsuarioService depende diretamente de uma classe concreta
 */

/* 
class MysqlDatabase{
  void conectar(){
    print("conectado ao banco de dados");
  }
}

class UsuarioService{
  final MysqlDatabase database;

  UsuarioService(this.database);

  void executar(){
    database.conectar();
  }
} */

/* 
  Solução
  UsuarioService depende da abstração (Database), não da implementação específica
 */

abstract class Database{
  void conectar();
}

class Mysql implements Database{
  @override
  void conectar(){
    print("Mysql conectado");
  }
}

class UsuarioService{
  final Database database;

 UsuarioService(this.database); 

  void executar(){
    database.conectar();
  }
}