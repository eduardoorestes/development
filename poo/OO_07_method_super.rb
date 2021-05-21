# Super - serve basicamente para invocar o método correspondente na classe Pai

class Franquia
    def descricao
        "Franquia..."
    end
end

class Franqueado < Franquia
    def descricao
        # invoca o mesmo metodo da classe superior
        # com o SUPER vai rodar o Franquia.descricao e depois dar sequencia...
        # quando for a mesma quantiade de paramestros, nao precisa informar no SUPER
        puts super
        "Franqueado..."
    end
end


f = Franquia.new
puts f.descricao

ff = Franqueado.new
puts ff.descricao  

##########################################
##########################################

class Conta
    attr_reader :numero, :saldo

    def initialize(numero, saldo = 0)
        @numero = numero
        @saldo = saldo
    end
end

class ContaEspecial < Conta
    attr_reader :limite_especial

    def initialize(numero, saldo, limite_especial)
        # poderia atribuir as variaves de instancia
        # @numero = numero
        # @saldo = saldo
        # MAS VAMOS APENAS CHAMAR O METODO SUPER QUE VAI CHAMAR O INIALIZER DA CLASSE PAI (Conta)
        super(numero, saldo)
        @limite_especial = limite_especial
    end
end

c = Conta.new("001", 100)
puts c.numero
puts c.saldo

puts "##############"

ce = ContaEspecial.new("002", 200, 1000)
puts ce.numero
puts ce.saldo
puts ce.limite_especial