# FUNCIONA JUNTO COM O ARQUIVO OO_12_mixins.rb - OO_12.1_mixins.rb - OO_12.2_mixins.rb

# como está importando esse arquivo, automaticamente vai carregar A e o B
require_relative 'OO_12.2_mixins'

x = Exemplo.new

# MODULO A, METODOS A1 E A2
x.a1
x.a2

# MODULO B, METODOS B1 E B2
x.b1
x.b2

# CLASS EXEMPLO, METODO EX1
x.ex1