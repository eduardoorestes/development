# SELF - é uma palavra reservada que dá acesso ao objeto corrente
# ao usarmos obs.meth - estamos enviando o método ao objeto

class Teste
    def ola
        # SELF - nesse contexto é a própria classe
        puts "Esse é o self: #{self}"
    end
end

class Teste1
    def test_self
        # SELF - nesse contexto é a própria classe
        puts "Esse é o self: #{self}"
    end
end

t = Teste.new
t.ola

t1 = Teste1.new
t1.test_self