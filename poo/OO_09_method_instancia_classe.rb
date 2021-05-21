# METODO DE NSTANCIA X METODO DE CLASSE
class Teste
    # METODO DE INSTANCIA - porque precisa ser instanciado com o Teste.new
    def ola
        "Olá..."
    end

    # METODO DE CLASSE - porque não precisa instanciar
    def self.hello
        "Hello..."
    end
end

# t é um objeto
t = Teste.new
puts t.ola

puts "---------"

puts Teste.hello