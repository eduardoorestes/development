IMAGEM
    <%= image_tag endereco_imagem, size: "20x20" %>

LINK
    <%= link_to 'texto', path %>
    <%= link_to 'texto', path, method: :delete, data: { confirm: 'Are you sure?' } %>
    <%= link_to 'texto', path, class:'btn btn-primary, role:'button' %>
    
DATA
    <%= Date.today.strftime('%d/%m/%Y') %>

HASH (chave específica mais o valor)
    var = {nome: 'fulano', curso: 'ads'}
    var[:nome] -> 'fulano'
    var[:curso] -> 'ads'

EACH (loop)
    <% @elementos.each do |elemento| %>
        <%= elemento.id %>
        <%= elemento.name %>
        ...
    <% end %>

FORM (RAILS 5)
    <%= form_with(model: name_model, local: true) do |form| %>
        <%= form.label :description %>
        <%= form.text_field :description %> 
    <% end %>

SELECT
    adicionar no before_action da action(metodo :new, :edit, :update, :create) o metodo criado no private
    private
    def set_name
        @content = Model.all.pluck(:description, :id)
    end

    <%= form_with(model: name_model, local: true) do |form| %>
        <%= form.label :name_field %>
        <%= form.select('name_field_id', @content , { include_blank: true }) %> (pode ser collect ou map)
    <%= end %>
    { include_blank: true } -> vai deixar o usario escolher uma opção em branco
    { include_blank: 'Selecione...' } -> preenche com selecione

Objeto.where(field: 'conteudo') - retorna como ARRAY
Objeto.find(id) - retorna apenas um elemento, mas deve passar o ID
Objeto.find_by(field: 'conteudo') - retorna apenas um elemento, passa a condição

Metodo MAP e PLUCK - retornam um ARRAY
    c.map { |coin| [coin.description, coin.acronym]}    =   c.pluck(:description, :acronym)
    se for apenas um campo
    c.map([&:description])  =   c.pluck(:desciption)
