class AddGroupIdToContactGroups < ActiveRecord::Migration[5.2]
  def change
    add_column :contact_groups, :group_id, :integer
  end
end
