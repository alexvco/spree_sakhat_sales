class AddSakhatPriceToSpreeVariants < ActiveRecord::Migration
  def change
    add_column :spree_variants, :sakhat_price, :decimal, :precision => 8, :scale => 2
  end
end
