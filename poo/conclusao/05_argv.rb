# ARGV - argument vector
# ele pega o que vem depois da chamada do arquivo
# ex.: ruby 05_argv.rb teste alguma coisa 
# argv vai pegar o teste alguma coisa
# argv[1] vai pegar alguma

if ARGV.size > 0
    File.open(ARGV[0], 'r') do |arq|
        while line = arq.gets
            puts line
        end
    end
else
    puts "deve informar o nome do arquivo. Ex.: ruby 05_argv.rb teste.txt "
end
