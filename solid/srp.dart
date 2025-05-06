/* 
  SINGLE RESPONSABILITY PRINCIPLE
  VIOLANDO SRP
  neste exemplo a classe RelatorioService tem duas responsabilidades:
  gerar e enviar relatorio
 */

class RelatorioService {

  void gerarRelatorio() {
    print("Relatório gerado");
  }

  void enviarEmail() {
    print("Email enviado");
  }
}

/* 
  SOLUÇÃO
  separamos as responsabilidades: uma classe gera o relatorio e a outro apenas envia
 */

class RelatorioGerador{
  void gerar(){
    print("Relatório gerado");
  }
}

class enviadorEmail{
  void enviar(){
    print("Email enviado");

  }
}