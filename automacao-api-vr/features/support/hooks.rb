#nessa classe criei mais para demonstração, do que podemos fazer criar autenticação, gerar dados, etc

require 'faker'
require 'cpf_cnpj'

require_relative 'spec_helper/spec_rest.rb'


Before do
        
        #aqui por exemplo podemos gerar dados de massa antes de executar o cenário
        $cpf = CPF.generate

end