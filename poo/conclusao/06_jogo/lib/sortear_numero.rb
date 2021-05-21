class SortearNumero
    def self.sortear
        v = []
        # Random.rand(1..5)
        # abrir o arquivo que tem os numeros a serem selecionados
        
        # File.expand_path - cria um caminho a partir de __FILE__
        # __FILE__ - é onde está (então ele vai a partir de sorter_numero.rb)
        File.open(File.expand_path('../../numeros.txt', __FILE__), 'r') do |arq|
            while line = arq.gets
                v.push(line.to_i)
            end
        end
        # vetor.sample - pega uma amostra do que tem dentro do vetor (aleatória -  tipo Random)
        v.sample
    end
end