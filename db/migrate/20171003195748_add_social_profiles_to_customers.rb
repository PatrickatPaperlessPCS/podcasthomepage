class AddSocialProfilesToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :facebook, :string
    add_column :customers, :instagram, :string
    add_column :customers, :youtube, :string
    add_column :customers, :linkedin, :string
    add_column :customers, :other, :string
  end
end
