# coerção (converter para integer .to_i, string .to_s, float .to_f)
puts 'digite idade: '
# .chomp - remove a quebra de linha após inserir um valor
var1 = gets.chomp
var2 = var1.to_i + 1
puts "idade ano que vem é: #{var2}"