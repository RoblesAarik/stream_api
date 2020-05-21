class AddUserIdToStream < ActiveRecord::Migration[6.0]
  def change
    add_column :streams, :user_id, :integer
  end
end
