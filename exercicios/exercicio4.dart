/* ISP - Divida a interface em interfaces menores para que cada classe implante apenas o que usa. */

/* abstract class Funcionario {
  void trabalhar();
  void comer();
}

class Robo implements Funcionario {
  @override
  void trabalhar() => print('Robô trabalhando');

  @override
  void comer() => throw Exception('Robô não come');
} */

abstract class Trabalhador{
  void trabalhar();
}

abstract class Alimentador{
  void alimentar();
}

class Robo implements Trabalhador{
  @override
  void trabalhar(){
    print("Robo trabalhando");
  }
}

class Humano implements Alimentador,Trabalhador{
  @override
  void trabalhar() {
    print("Humano trabalhando");
  }
  @override
  void alimentar(){
    print("humano se alimentando");
  }
}