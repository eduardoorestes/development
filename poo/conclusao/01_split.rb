# SPLIT - separa o conteudo em um array

# vai separar no espaço
x = "conteudo do arquivo"
puts x.split

# vai separar pelo que foi passado entre parenteses (nesse caso, a falta de espaço)
x = "conteudo"
puts x.split('')

# vai separar pela /
x = "conteudo/do/texto/com/barra"
puts x.split('/')