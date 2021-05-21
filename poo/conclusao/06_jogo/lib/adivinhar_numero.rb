# as classes devem ficar na lib

# carregar o arquivo inicializacao.rb
require_relative 'inicializacao'
require_relative 'sortear_numero'

class AdivinharNumero
    attr_reader :numero
    attr_reader :venceu

    def initialize
        # chamar a classe e o metodo
        Inicializacao.inicializando
        # @numero = Random.rand(1..5) #Randow - classe do ruby / rand - metodo do Randow / (1..5) de 1 até 5  
        @numero = SortearNumero.sortear
        @venceu = false
    end

    def tentar_adivinhar(numero = 0)
        if numero == @numero
            @venceu = true
            return "Verdadeiro"
        elsif numero > @numero
            return "Número informado é maior"
        else
            return "Número informado é menor"
        end
    end
end