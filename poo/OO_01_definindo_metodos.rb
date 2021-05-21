=begin
CLASSE - Pessoa
ATRIBUTOS
    - nome: string
    - idade: integer
METODOS
    + gritar();
    + agradecer();
=end

#file definindo_metodos.rb

class Pessoa

    def gritar
    #não é necessário usar o return, ele é opcional
        'gritando...'
    end

    def agradecer
        puts 'agradecendo...'
    end

    # caso não for passado nada quando chama o metodo, sera impresso "grito padrao"
    def gritar_parametro(var = "grito padrao")
        puts "... #{var} ..."
    end
end

obj1 = Pessoa.new                           # estancia a class

puts obj1.gritar                            # chama o metodo e exibe o que retorna dele devido ao puts

result = obj1.gritar                        # atribui o resultado do metodo a variavel result
puts result                                 # exibe a variavel result

obj1.agradecer                              # chama o metodo
obj1.gritar_parametro('gritando isso')      # chama o metodo e passa o parametro