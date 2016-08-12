Deface::Override.new(:virtual_path => 'spree/admin/products/_form',
  :name => 'add_sale_price_to_product_edit',
  :insert_after => "erb[loud]:contains('text_field :price')",
  :text => "
    <%= f.field_container :sakhat_price do %>
      <%= f.label :sakhat_price, raw(Spree.t(:sakhat_price) + content_tag(:span, ' *')) %>
      <%= f.text_field :sakhat_price, :value =>
        number_to_currency(@product.sakhat_price, :unit => '') %>
      <%= f.error_message_on :sakhat_price %>
    <% end %>
  ")