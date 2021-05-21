# operadores lógicos

var1 = 1
var2 = 2
var3 = 3
var4 = 4


# && - e
puts 'E'
if (var2 > var1) && (var3 < var4)
    puts 'condição atendida nos dois casos'
else
    puts 'condição não atendida nos dois casos'
end

# || - ou
puts 'OU'
if (var2 > var1) || (var3 > var4)
    puts 'condição atendida em pelo menos um caso'
else
    puts 'condição não atendida nenhum dos casos'
end

# ! - negação
puts 'NEGAÇÃO - não é binaria'
if !(var1 < var2)
    puts 'NEGAÇÃO atendida'
else
    puts 'NEGAÇÃO NÃO atendida'
end