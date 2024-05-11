class AddLikesCountToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :comments_count, :integer
    add_column :users, :private, :boolean
  end
end
