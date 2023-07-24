#nessa classe realizo a chamada das outras classe para realizar a chamada no endpoint

Dado('que possuo acesso ao endpoint') do
  @response = enumerationsvrpat.get_response()
end
#realizo uma validação para imprimir o erro em caso de erro, retorne outro status diferente de 200
Quando('faço uma requisição GET para o serviço') do
  if @response.code != 200
    puts @response
  end
end

#realizo a validação se a api retornou status igual a 200 e valido se retornou o objeto typeOfEstablishment e por ultimo realizão a impressao de um restaurante
Então('o serviço retorne statusCode igual {int} e retorne o objeto {string}') do |code, objeto|
  expect(@response.code).to eq code
  expect(@response["#{objeto}"]).not_to be_empty
  puts @response["#{objeto}"][0]
end
