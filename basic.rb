# strings
    var = 'text...'

    # interpolação ideal
        var = "the #{var}"

# coerção
    # converter para integer .to_i, string .to_s, float .to_f
    var = 10,5.to_i

# operadores
    # modulo
        5 % 2 = 1
        4 % 2 = 0
    # esponenciação - um número elevado
        2 ** 2 = 4
        2 ** 3 = 8
        2 ** 2 = 9

# operadores relacionais
    # > maior
    # < menor
    # >= maior e igual
    # <= menor e igual
    # == igual
    # != diferente

    =begin
        <=> spacechip
        elementos iguais retorna 0
        elemento da esquerda é menor, retorna -1
        elemento da direita é menor, retorna 1
    =end

# operadores atribuição
    # = atribui
        var = 2
    # += adição
        var += 2
    # -= subtração
        var -= 2
    # *= multiplicação
        var *= 2
    # /= divisão
        var /= 2
    # %= modulo
        var %= 2 # var = var % 2
    # **= esponenciação
        var **= 2 # var = var ** 2

# condicionais
    #  IF - uso do THEN é opcional
        if 10 > 9 then
        ...
        elsif 10 == 10 then
        ...
        end

    # UNLESS - a menos que
        unless 10 > 9
        ...
        else
        ...
        end

    # CASE - WHEN
        case var
            when 1
            ...
            when 2
            ...
            else
            ...
            end

# operadores lógicos
    #  && - e
        if (var1 > var2) && (var3 < var4)

    # || - ou
        if (var1 > var2) || (var3 < var4)

    # ! - negação
        if !(var1 > var2)

# repetição
    # while
        while i <= 10
        ...
        end

    # until
        until i < 1
        ...
        end

    # each
        var = [10, 20, 30]
        var.each { |element| puts element }
        ...
        var.each do |element|
            puts element
        end # vai repetir até que acabe os elementos do array VAR

        # de 1 ao 4
            (1...5).each { |element| puts element }
        # de 1 ao 5
            (1..5).each { |element| puts element }

    # times - repetições fixas
        5.times { puts 'vezes' }

        # VAR vai começar do ZERO
            5.times { |var| puts "#{var} vezes" }

# vetor / array - numerados pelos indices
    var = [10, 20, 30]

# hash - define o indice/chave
    var = {a: '10', b: '20', c: '30'}
