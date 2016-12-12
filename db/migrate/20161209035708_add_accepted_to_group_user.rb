class AddAcceptedToGroupUser < ActiveRecord::Migration
  def change
    add_column :group_users, :accepted, :boolean, default:false
  end
end
