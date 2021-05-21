=begin
CLASSE - Pessoa
ATRIBUTOS
    - nome: string
    - idade: integer
METODOS
    + gritar();
    + agradecer();
    + nome=(nome);          ** o igual equivale ao set 
    + nome();               ** e sem igual equivale ao get
    + idade=(idade);
    + idade();
=end


class Pessoa
    # ATTR_ACCESSOR - é equivalente aos metodos (nome= nome idade= idade)
    # ATTR_READER   - é equivalente apenas aos metodos (nome idade)
    # ATTR_WRITER   - é equivalente apenas aos metodos (nome= idade=)
    # eles já tornam uma variavel de instancia
    attr_accessor :nome
    attr_accessor :idade

    # METODO CONSTRUTOR - é invocado quando a classe é instanciada (ex.: Pessoa.new)
    def initialize(nome, idade)
        @nome = nome
        @idade = idade
    end

    def gritar
        'gritando...'
    end

    def agradecer
        puts 'agradecendo...'
    end

    def gritar_parametro(var = "grito padrao")
        puts "... #{var} ..."
    end

end

# é permitido passar os parametros assim devido ao metodo initialize
pessoa1 = Pessoa.new("Eduardo", 30)
# pessoa1.nome = 'Eduardo'
# pessoa1.idade = 30

# é permitido passar os parametros assim devido ao metodo initialize
pessoa2 = Pessoa.new("xxx", 99)
# pessoa2.nome = 'xxx'
# pessoa2.idade = 99


puts pessoa1.nome
puts pessoa1.idade

puts '-----------'

puts pessoa2.nome
puts pessoa2.idade