module Spree
  Variant.class_eval do
    alias_method :orig_price_in, :price_in
    def price_in(currency)
      return orig_price_in(currency) unless sakhat_price.present?
      Spree::Price.new(:variant_id => self.id, :amount => self.sakhat_price, :currency => currency)
    end
  end
end