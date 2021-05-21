# trabalhando com arquivos
# ruby-doc.org

# abrindo um arquivo para o modo de escrita ('w') write / caso não exista, será criado
File.open('teste.txt', 'w') do |arquivo|
    # escrevendo dentro do arquivo aberto
    arquivo.puts "conteudo do arquivo..."
    arquivo.puts "linha 1..."
    arquivo.puts "linha 2..."
    arquivo.puts "linha 3..."
end

# para ler o arquivo teste.txt ('r') read
File.open('teste.txt', 'r') do |arq|
    # enquanto conseguir pegar uma linha 
    while line = arq.gets
        # vai exibir a linha
        puts line
    end
end