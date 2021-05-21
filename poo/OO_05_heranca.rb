class Pai
    attr_accessor :nome
    
    def falar(texto = "Alô...")
        texto
    end
end

# a classe filha herda da classe pai (classe filha tem acesso aos metodos da classe pai)
class Filha < Pai
end

p = Pai.new
p.nome = "Nome Pai"
puts p.nome
puts p.falar

puts '--------'

f = Filha.new
f.nome = "Nome Filha"
puts f.nome
puts f.falar("Hello...")