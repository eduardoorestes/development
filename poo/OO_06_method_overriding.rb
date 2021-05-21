# Method OverRiding - sobrescrita de métodos (sobreescrever metodos da classe Pai)
class Calculadora
    def somar(n1, n2)
        n1 + n2
    end
end

# herda a classe Calculadora
class CalculadoraFashion < Calculadora
# Method OverRiding - vai sobreescrever o metodo da classe pai (Calculadora)
    def somar(n1, n2)
        "A soma é: #{n1 + n2}"
    end
end



c = Calculadora.new
puts c.somar(2,3)

cf = CalculadoraFashion.new
# utiliza o method overriding que está sobreescrevendo
puts cf.somar(2,3)