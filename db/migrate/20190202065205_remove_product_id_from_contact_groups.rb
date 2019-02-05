class RemoveProductIdFromContactGroups < ActiveRecord::Migration[5.2]
  def change
    remove_column :contact_groups, :product_id, :integer
  end
end
