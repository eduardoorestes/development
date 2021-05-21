=begin
    POLIMORFISMO (muitas formas) - permite que referências de tipos de classes mais absstratas 
    representem o comportamento das classes concretas que referenciam.
    É caracterizado quando duas ou mais classes distintas têm métodos de mesmo nome, de forma que uma
    função possa utilizar um objeto de qualquer uma das classes polimórficas, sem necessidade de tratar
    de forma diferenciada conforme a classe do objeto.
        Ex.: OO_06_method_overriding.rb

    DUCK TYPING - "If it walks like a duck and quacks like a duck, I would call it a duck."
=end

class Pato
    def quack
        puts "Quack! Quack!"
    end
end

class PatoDoente
    def quack
        puts "Queeeck..."
    end
end

class Pessoa
    def apertar_pato(pato)
        pato.quack
    end
end

p1 = Pato.new
p2 = PatoDoente.new

p = Pessoa.new

# está sendo usado o mesmo método, mas o que mudou foi o elemento (p1 e p2)
puts p.apertar_pato(p1)
puts p.apertar_pato(p2)