/* 
  ISP - INTERFACE SEGREGATION PRINCIPLE
  EXEMPLO VIOLANDO
  o robo é forçado a implementar o método comer
 */

/* abstract class Funcionario{
  void trabalhar();
  void comer();
}
class Robo implements Funcionario{
  @override
  void trabalhar() {
    print("Robô trabalhando");
  }
  @override
  void comer() {
    throw Exception("Robô não come");
  }
} */

/* 
  Solução
  interfaces menores, cada classe implementa apenas o que precisa
 */
abstract class Funcionario{
  void trabalhar();
}

abstract class Alimentador{
  void comer();
}

class Robo implements Funcionario{
  @override
  void trabalhar() {
    print("Robô trabalhando");
  }
}

class Humano implements Funcionario, Alimentador{
  @override
  void trabalhar() {
    print("Humano trabalhando");
  }

  @override
  void comer(){
    print("Humano comendo");
  }
}