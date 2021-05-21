# FUNCIONA JUNTO COM O ARQUIVO OO_12_mixins - OO_12.1_mixins.rb - OO_12.3_mixins.rb

# importa os dois arquivos e permite acessar o que eles possuem
require_relative 'OO_12_mixins'
require_relative 'OO_12.1_mixins'


class Exemplo
    include A # inclui o modulo A
    include B # inclui o modulo B

    def ex1
        puts "Class Exemplo metodo ex1"
    end
end