# INTRODUÇÃO

=begin

4 PILARES DA POO - ABSTRAÇÃO - ENCAPSULAMENTO - HERANÇA - POLIMORFISMO

* Abstração - imaginar o objeto
    identidade única
    atributos
    métodos

* Encapsulamento - esconder as propriedades(atributos) dos obejetos para obter mais segurança
    visão interna -> COMO o objeto faz
    visão externa -> O QUE o objeto faz

* Herança - permite o reuso de codigo

* Polimorfismo - capacidade de referenciar um objeto de várias formas diferentes

* Visibilidade
    publico +
    privado -
    protegido #


* Convenções
    * CLASSE - CamelCase    ExemploClasse (singular)
    * METODO - snake_case   exemplo_metodo
    * MODEL - CamelCase (singular)
    * CONTROLLER - snake_case (plural seguido de controller.rb - name_controller.rb)
    * VIEW - snake_case
    * VARIAVEIS - 
    * CAMPO DB - snake_case (singular?!)
    * TABELA DB - snake_case (plural)


* Variavel de instancia (tambem chamada de variavel de sessão)- variavel para cada objeto, é acessível em todos métodos
    Se ela está sendo usada no CONTROLLER, será acessivel na VIEW também, desde que:
        * o nome do CONTROLLER sejá o nome da pasta da VIEW e o nome do ACTION sejá o nome do arquivo da VIEW
    @var


* Metodo construtor
    - permite inicializar um objeto com dados "padrão"

=end

ESTRUTURA RAILS
{
    APP -> Contém os controladores, modelos, visualizações, ajudantes, mailers, canais, trabalhos e ativos para sua aplicação. Você se concentrará nesta pasta no restante deste guia.
    BIN -> Contém o script rails que inicia seu aplicativo e pode conter outros scripts que você usa para configurar, atualizar, implantar ou executar seu aplicativo.
    CONFIG -> Configure as rotas de seu aplicativo, banco de dados e muito mais. Isso é abordado com mais detalhes em Configurando aplicativos Rails.
    CONFIG.RU -> Configuração de rack para servidores baseados em rack usados ​​para iniciar o aplicativo. Para obter mais informações sobre o Rack, consulte o site do Rack.
    DB -> Contém seu esquema de banco de dados atual, bem como as migrações de banco de dados.
    Gemfile / Gemfile.lock -> Esses arquivos permitem que você especifique quais dependências de gem são necessárias para seu aplicativo Rails. Esses arquivos são usados ​​pela gem Bundler. Para obter mais informações sobre o Bundler, consulte o site do Bundler.
    LIB -> módulos estendidos para seu aplicativo.
    LOG -> arquivos de log do aplicativo.
    PACKAGE.JSON -> Este arquivo permite que você especifique quais dependências npm são necessárias para seu aplicativo Rails. Este arquivo é usado pelo Yarn. Para obter mais informações sobre o Yarn, consulte o site Yarn.
    PUBLIC -> A única pasta vista pelo mundo no estado em que se encontra. Contém arquivos estáticos e ativos compilados.
    RAKEFILE -> Este arquivo localiza e carrega tarefas que podem ser executadas na linha de comando. As definições de tarefas são definidas em todos os componentes do Rails. Em vez de alterar o Rakefile, você deve adicionar suas próprias tarefas adicionando arquivos ao diretório lib / tasks do seu aplicativo.
    README.MD -> Este é um breve manual de instruções para seu aplicativo. Você deve editar esse arquivo para informar a outras pessoas o que seu aplicativo faz, como configurá-lo e assim por diante.
    TESTE -> testes de unidade, acessórios e outros aparelhos de teste. Eles são abordados em Testando aplicativos Rails.
    TMP -> arquivos temporários (como arquivos de cache e pid).
    VENDOR -> Um local para todos os códigos de terceiros. Em um aplicativo Rails típico, isso inclui joias vendidas.
    .GITIGNORE -> Este arquivo diz ao git quais arquivos (ou padrões) ele deve ignorar. Consulte GitHub - Ignorando arquivos para obter mais informações sobre como ignorar arquivos.
    .RUBY-VERSION -> Este arquivo contém a versão padrão do Ruby.
}

CONFIG DB
    em config/database.yml
        pesquisa internet -> database.yml mysql
        quando criar a app - rails new nome_projeto --database=mysql


Módulos - são similares as classes em relação ao fato de que também armazenam uma coleção de métodos, constantes e outras definições de módulos e classes.
Diferente das classes, não pode criar objetos baseados em módulos nem pode criar módulos que herdam desse móduo, ao inés disso, 
é necessário especificar qual funcionalidade de um módulo específico você deseja adicionar a uma classe ou a um objeto específico.
É um bom lugar para armazenar constatntes em um local centralizado.
Eles agem como namespace, permitindo que você defina métodos cujos nomes não irão colidir com aqueles definidos em outras partes.
Eles também permitem compartilhar funcionalidades entre classes - se uma classe mistura (mixes in) um módulo (isto é, o inclui), todos os métodos de instância
do módulo se tornam dispóníveis como se estivessem sido definidos na classe.
ex.: 
{
    file file.rb //CONSTANTES
        module X
            CONST = 123
        end
    Na classe
        require_relative 'file.rb'
        include X // quando faz o include pode usar direto CONST caso não faça o include deve passar o caminho absoluto X::CONST

    file file.rb //METODO
        module X
            def metodo
                ...
            end
        end
    Na classe
        require_relative 'file.rb'
        include metodo // com include pode usar assim metodo(), sem o include X::metodo()

    file file.rb
        module X
            class Class
                def metodo
                    ...
                end
            end
        end
    Na classe
        require_relative 'file.rb'
        include X // com include pode usar Class.metodo(), sem o include X::Class.metodo()

    file file.rb
        module X
            module Y
                def metodo
                    ...
                end
            end
        end
    Na classe
        require_relative 'file.rb'
        include X::Y //com include pode usar metodo(), nesse caso não funciona sem o include mas pode usar X::Y::metodo()
}

GEM
    gem list
    gem list nameGem
    gem list nameGem --remote
    gem list nameGem --remote -all (pega todas as versões)
    gem install nameGem
    gem install nameGem -v versão - gem install rails -v 4.2.3
    gem uninstall nameGem
    gem uninstall nameGem -v versão
    gem cleanup - remove as versões antigas
    gem cleanup name gem
    gem cleanup -d - nao apaga, apenas verifica

    Para usar a GEM
        instalar a GEM
        require 'namgeGem'
        depois só chamar os metodos da GEM dentro do projeto
        caso estiver usando o Gemfile, rodar o bundle install

STACK - as tecnologias envolvidas no projeto (ruby, rails, mysql, sqlite,...)

CRUD usando SCAFFOLD
{
    Scaffold - um generator que permite criar um CRUD para uma determinada tabela. Gera as views, models, controllers, as migrations entre outros.
    rails generate scaffold MODEL campo:tipo campo:tipo ...
    ex.: rails g scaffold Tabela campo:string campo:string ...

    Tipos dos campos:
    O parâmetro type é normalmente um dos tipos nativos de migração, que é um dos seguintes: :primary_key, :string, :text, :integer, :bigint, :float, :decimal, :numeric, :datetime, :time, :date, :binary, :boolean.
    link -> https://api.rubyonrails.org/classes/ActiveRecord/ConnectionAdapters/SchemaStatements.html#method-i-add_column
}

RAILS CONSOLE
    rails dbconsole - é o comando usado para se conectar ao DB

    RAILS TASKS
        rails -T - exibe as tasks disponiveis
        rails -T db - exibe as tasks diposniveis com db
        rails g ou rails generate - mostra as opções de generators
        rails generate migration NameMigrationCamelCasePlural - cria a migration
        rails db:create - cria o db
        rails db:drop - apaga o db
        rails db:migrate - executa as migration
        rails db:rollback - desfaz a última migration
        rails g controller name_controller - cria o controller
        rails destroy name_controller_model_... - remove o controller, model ou o que for informado
        SE QUISER CRIAR UMA VIEW
        rails generate controller name_controller action01 action02 - vai criar o controlller e as action/view
    
    RAILS MODEL
        Model.first -> retorna o primeiro elemento
        Model.last -> retorna o último elemento
        Model.all -> retorna todos elementos (ARRAY)

MIGRATIONS
    O rails cria a primary key, o created at e updated at automaticamente, esses campos não precisam ser incluidos na migration.

HELPERS
    são métodos prontos que podem ser usados nas VIEWS. Faz com que menos código seja escrito para que se consiga o mesmo resultado.
    Ex.: link_to
        <%= link_to 'Texto', Path/Url %> (PATH/URL é verificado no INFO ROUTES Ex.: welcome_index_path) ->

    CRIANDO HELPERS
        Em app/helpers - se for para toda a aplicação, colocar no application_helper, se for para uma view, colar no helper com o nome da view.
        É semelhante ao método.

ROTAS
    HELPER - PATH / URL -> é o caminho do link para ser usado no código
    HTTP VERB -> o formato da request
    PATH -> é a url, que é usada no navegador
    CONTROLLER # ACTION -> é o controller e a action

    ROTA PARA O HOME/INDEX
        Em config/routes.rb adicionar
            root 'path_url_desejado'
    
    RESOURCES
        Em routes.rb
            resources :names (pode ser o nome pluralizado do model)
            vai criar todas as rotas para esse objeto, permitindo trabalhar com o CRUD
                GET - /names (lista todos nomes), /names/new (retorna um HTML FORM para criar um novo nome),
                /names/:id (exibe um nome especifico), /names/:id/edit (retorna um HTML FORM para editar um nome específico)
                POST - /names (cria um novo nome)
                PATCH/PUT - /names/:id (atualiza um nome especifico)
                DELETE - /names/:id (deleta uma nome)
        
    CRIANDO ROTAS ESPECÍFICAS
        get '/path', to: 'controller#action'
        caso o path seja igual ao controller#action, controller#action pode ser suprimido
        Ex.: get 'welcome/index', to: 'welcome#index'  =>  get 'welcome/index'

    ROTAS DO RAILS SÃO AUTOMATIZADAS
        -> Nas rotas onde elas esperam um ID, basta passar apenas o OBJETO, porque a rota vai pegar o ID dela.
        Ex.:
            objeto_path(objeto.id) == objeto
            <%= link_to 'Editar', edit_coin_path(objeto.id) %> => <%= link_to 'Editar', edit_coin_path(objeto) %>
        -> Quando passado apenas o OBJETO, ele entende que existe uma rota para ele adicionando o _path ocultamente
        Ex.:
            <%= link_to 'Mostrar', objeto_path(objecto.id) %> => <%= link_to 'Mostrar', objeto_path(objecto) %> => <%= link_to 'Mostrar', objeto %>
            Quando for para o delete, deve ser informado o metodo
            <%= link_to 'Apagar', objeto, method: :delete, data: { confirm: 'Are you sure?' } %>


AMBIENTE RAILS
    Produção
    Desenvolvimento
    Teste
    É possível verificar com Rails.env
        Ex.: Rails.env.production?

QUERY através de GET
    Depois da URL/ adicionar o ? e passar a chave=valor para ficar disponivel no CONTROLLER através de um HASH
    E para adicionar mais de um parametro, colocar o &
    Ex.:
        URL/?nome=fulano
        CONTROLLER -> @nome = params[:nome]

LAYOUT
    é um template padrão para as views. (em app/views/layouts/...)
    ele é definido no controller, com o layout padrão application
    Ex.:
        layout 'nome_layout'

PARTIALS
    permite renderizar uma VIEW dentro de outra.
    Ex.:
        pagina.html.erb
            chamar a partial <%= render 'partial' %>
            passando um params/variavel
                <%= render 'partial', objeto: @objeto %> 
        na mesma pasta:
            _partial.html.erb
                colocar o conteudo nessa PARTIAL

FILTERS
    São ações feitas antes ou depois de executar um método
    Ex.:
        before_action :metodo, only: [:show, :edit, :update, :destroy]

PERMISSÕES DE PARAMETROS
    Geralmente é criado um metodos x_params como PRIVATE no controller onde vão ser definidas as permissões

    Ex.:
    private
        def x_params
            params.require(:x).permit(:description, :state, :city)
        end
        faz um require de :x que vem dentro de params e permite alterar apenas description, state e city.

TASKS
    Para listar todas as tasks possíveis: rails -T
        rails db:drop
        rails db:migrate
    Para gerar uma tasks
        rails g task namespace name_task

DB/Seeds
    é usado para inserir dados iniciais no banco, quando é iniciada a aplicação ela pode precisar de algumas informações
    já inseridas no banco (ex.: estados, cidades...)
    Depois de inserir os dados, rodar no terminal 
        rails db:seed

YIELD
    blocos de código que é permitido passar para um outro local.
    Ex.:
        Se for muito grande
        metodo(var1, var2) do
            bloco de código que vai ser passado...
        end

        Se for pequeno ( uma única linha )
        metodo(var1, var2) { bloco de código }

        def metodo(var1, var2)
            ...
            yield (aqui vai entrar o bloco citado acima)
            ...
        end


