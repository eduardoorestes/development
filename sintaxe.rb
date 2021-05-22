IMAGEM
    <%= image_tag endereco_imagem, size: "20x20" %>

LINK
    <%= link_to 'texto', path %>
    <%= link_to 'texto', path, method: :delete, data: { confirm: 'Are you sure?' } %>
    
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

