module Spree
  Product.class_eval do
    delegate_belongs_to :master, :sakhat_price
  end
end