# FUNCIONA JUNTO COM O ARQUIVO OO_11.1_modulos.rb

=begin
    Módulos - similares as classes em relação ao fato de que também armazenam uma coleção de métodos,
    constantes, outras definições de módulos e classes
    O que torna diferente é que NÃO porde criar objetos baseados em módulos nem pode criar módulos
    que herdam desse módulo
    Módulo é um bom lugar para armazenar constantes em um local centralizado

    Agem como namespace, permitindo que você defina métodos cujos nomes não irão colidir com 
    aqueles definidos em outras partes de um programa
=end

module Pagamento
    EMPRESA = "Nome empresa"
    def pagar(bandeira, numero, valor)
        "Pagando com o cartão #{bandeira} número #{numero} o valor R$#{valor}"
    end

    class Visa
        def pagando
            "pagando..."
        end
    end
end

