IMAGEM
    <%= image_tag endereco_imagem, size: "20x20" %>

LINK
    <%= link_to 'texto', path %>
    <%= link_to 'texto', path, method: :delete, data: { confirm: 'Are you sure?' } %>
    
DATA
    <%= Date.today.strftime("%d/%m/%Y") %>

