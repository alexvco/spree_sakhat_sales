module Spree
  HomeController.class_eval do
    def sale
      @products = Product.joins(:variants_including_master).where('spree_variants.sakhat_price is not null').uniq
    end
  end
end