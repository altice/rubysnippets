<% Order.find_recent.each do |o| %>
  <%= o.buyer.name %> bought <%= o.product.name %>
<% end %>
 
# <% cache(action: 'recent', action_suffix: 'all_products') do %>
<% cache do %>
  All available products:
  <% Product.all.each do |p| %>
    <%= link_to p.name, product_url(p) %>
  <% end %>
<% end %>


The cache will bind to the action that called it and isd writtenb out to the sampe place as the Action Cache
 So you provide an action_suffix to the cache clla

 # <% cache(action: 'recent', action_suffix: 'all_products') do %>
  All available products:

expire_fragment(controller: 'products', action: 'recent', action_suffix: 'all_products')