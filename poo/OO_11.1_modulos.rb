# FUNCIONA JUNTO COM O ARQUIVO OO_11.modulos.rb

# require - procura a biblioteca dentro da pasta ruby
# require_relative - quando está na mesma pasta

# importa o arquivo
require_relative 'OO_11_modulos'

# inclui o modulo Pagamento do arquivo OO_11_modulos
# include - somente para modulos
include Pagamento

# p = Pagamento::Visa.new
p = Visa.new
puts p.pagando

# equivalente a Pagamento::EMPRESA
puts EMPRESA

puts "Digite a bandeira: "
b = gets.chomp

puts "Digite o numero cartão: "
n = gets.chomp

puts "Digite o valor: "
v = gets.chomp

# Pagamento.pagar(b, n, v)
puts pagar(b, n, v)