# FUNCIONA JUNTO COM O ARQUIVO OO_12.1_mixins.rb - OO_12.2_mixins.rb - OO_12.3_mixins.rb

=begin
 HERANÇA MÚLTIPLA

B herda A
C herda A
D herda B e C (consequentemente herda A também)
=end

# Mixins - permite que façamos uma pseudo herança múltipla

module A
    def a1
        puts "module A metodo a1"
    end

    def a2
        puts "module A metodo a2"
    end
end