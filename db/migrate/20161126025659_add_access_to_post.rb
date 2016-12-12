class AddAccessToPost < ActiveRecord::Migration
  def change
    add_column :posts, :access, :string, default: "personal"
  end
end
