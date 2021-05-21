class AdivinharNumero
    attr_reader :numero
    attr_reader :venceu

    def initialize
        @numero = Random.rand(1..5) #Randow - classe do ruby / rand - metodo do Randow / (1..5) de 1 até 5  
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

jogo = AdivinharNumero.new

until jogo.venceu do
    puts "Digite um número: "
    numero =  gets.to_i 
    puts jogo.tentar_adivinhar(numero)
end