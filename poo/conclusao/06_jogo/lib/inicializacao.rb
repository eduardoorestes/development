class Inicializacao
    def self.inicializando
        # comando SO - vai limpar a tela
        system('clear')
        print "Inicializando."
        3.times do |i|
            sleep 1
            print "."
        end
        puts "."
    end
end