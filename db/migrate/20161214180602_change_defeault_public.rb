class ChangeDefeaultPublic < ActiveRecord::Migration
  def change
    change_column :posts, :public, :boolean, default: false
    change_column :posts, :likecount, :integer, default: 0
    change_column :posts, :dislikecount, :integer, default: 0
    change_column :posts, :reportcount, :integer, default: 0
    change_column :posts, :commentcount, :integer, default: 0
    change_column :posts, :category, :string, default: nil

  end
end
