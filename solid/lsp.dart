/* 
LSP - LISKOV SUBSTITUITION PRINCIPLE
EXEMPLO VIOLANDO LSP
um pinguin não deve ser forçado a voar.Isso quebra o LSP
 */

/* 
class Ave{
  void voar(){
    print("ave voando");
  }
}

class Pinguin extends Ave{
  void voar(){
    throw Exception("Pinguins não voam");
  }
} */

/* 
  SOLUÇÃO
  agora pinguin não precisa implementar voo
 */

class Ave{
  void andar(){
    print("Ave andando");
  }
}

abstract class AveQvoa extends Ave{
  void voar(); //metodo abstrato
}

class Andorinha extends AveQvoa{
  void voar(){
    print("Andorinha voando");
  }
}

class Pinguin extends Ave{
  //pinguin não voa, portando não implementa voar
  @override
  void andar() {
    print("pinguin andando");
  }
}