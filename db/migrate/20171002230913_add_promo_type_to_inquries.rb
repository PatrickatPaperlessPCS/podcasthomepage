class AddPromoTypeToInquries < ActiveRecord::Migration
  def change
    add_column :inquries, :promo_type, :string
  	remove_column :inquries, :type
  end
end
