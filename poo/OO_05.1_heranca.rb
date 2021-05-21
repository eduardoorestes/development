class Funcionario
    attr_accessor :nome, :cpf, :salario
end

# a classe Gerente tem seus atributos e herda os atributos da classe Funcionario
class Gerente < Funcionario
    attr_accessor :senha, :tempo_empresa
end


f = Funcionario.new
f.nome = "Funcionario Nome"
f.cpf = 00000000000
f.salario = 12.0

puts '--- Funcionario ---'
puts f.nome
puts f.cpf
puts f.salario

puts '---------'

g = Gerente.new
puts '--- Gerente ---'
g.nome = 'Gerente Nome'
g.cpf = 99999999999
g.salario = 13.0
g.senha = 1234
g.tempo_empresa = 5

puts g.nome
puts g.cpf
puts g.salario
puts g.senha
puts g.tempo_empresa