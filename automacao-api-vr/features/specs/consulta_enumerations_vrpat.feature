# language: pt
# encoding: utf-8

@tpEstabelecimentos
Funcionalidade: Tipos de estabelecimentos
    Validar o retorno de estabelecimentos

    @tpEstabelecimentos1 @RegressivoVR
    Cenário: Realizar a validação que o objeto typeOfEstablishment esteja retornando com sucesso
       Dado que possuo acesso ao endpoint
       Quando faço uma requisição GET para o serviço
       Então o serviço retorne statusCode igual 200 e retorne o objeto "typeOfEstablishment"
