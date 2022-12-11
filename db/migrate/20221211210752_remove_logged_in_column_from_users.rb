class RemoveLoggedInColumnFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :logged_in
  end
end
