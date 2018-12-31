class AddConfirmationsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :confirmed_at, :datetime
    add_column :users, :confirmation_token, :string, index: true
  end
end
