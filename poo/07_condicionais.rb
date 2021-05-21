# condicionais

# if ... elsif ... else (uso do then é opcional)
puts 'if ... elsif ... else'
puts 'digite: '
var1 = gets.chomp.to_i
if var1 > 10 then
    puts 'maior que 10'
elsif var1 == 10
    puts 'igual a 10'
else
    puts 'menor que 10'
end

puts '-----------------------'

# unless - negação (a menos que)
puts 'unless'
puts 'digite: '
var2 = gets.chomp.to_i
unless var2 >= 10
    puts 'menor que 10'
else
    puts 'maior ou igual 10'
end

puts '-----------------------'

# case ... when
puts 'case ... when'
puts 'Escolha um numero entre 1 e 3'
var3 = gets.chomp.to_i

case var3
    when 1
        puts 'opção 1' 
    when 2
        puts 'opção 2' 
    when 3
        puts 'opção 3'
    else
        puts 'opção inválida'
end