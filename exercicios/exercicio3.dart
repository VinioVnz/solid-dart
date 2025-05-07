/* LSP - Refatore para que Quadrado não quebre o comportamento esperado do Retangulo. Ou, se necessário, crie uma hierarquia adequada. */

/* class Retangulo {
  double largura;
  double altura;

  Retangulo(this.largura, this.altura);

  double area() => largura * altura;
}

class Quadrado extends Retangulo {
  Quadrado(double tamanho) : super(tamanho, tamanho);
} */

abstract class Forma{
  double area();
}
class Retangulo implements Forma{
  double altura;
  double largura;

  Retangulo(this.altura, this.largura);

  double area() => altura * largura;
}
class Quadrado implements Forma{
  double tamanho;
  Quadrado(this.tamanho);
  
  double area() => tamanho * tamanho;
}