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
    #VARIAVEL DE INSTANCIA
    #   @nome = nil
    #   @idade = nil

    # ATTR_ACCESSOR - é equivalente aos metodos (nome= nome idade= idade)
    # ATTR_READER   - é equivalente apenas aos metodos (nome idade)
    # ATTR_WRITER   - é equivalente apenas aos metodos (nome= idade=)
    # eles já tornam uma variavel de instancia
    attr_accessor :nome
    attr_accessor :idade


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

# FOI SUBSTITUIDO PELO ATTR ACCESSOR
=begin
    #def set_nome(nome) 
    def nome=(nome)         # o igual equivale ao set
        @nome = nome        # pega o nome passado no metodo e coloca na variavel de instancia
    end

    #def get_nome()
    def nome                # sem igual equivale ao get
        @nome
    end

    #def set_idade(idade)
    def idade=(idade)       # o igual equivale ao set
        @idade = idade
    end

    #def get_idade()
    def idade               # sem igual equivale ao get
        @idade
    end
=end

end

pessoa1 = Pessoa.new                           # estancia a class
pessoa1.nome = 'Eduardo'
pessoa1.idade = 30

pessoa2 = Pessoa.new                           # estancia a class
pessoa2.nome = 'xxx'
pessoa2.idade = 00


puts pessoa1.nome
puts pessoa1.idade

puts '-----------'

puts pessoa2.nome
puts pessoa2.idade