class AddUserToElections < ActiveRecord::Migration[5.2]
  def change
    add_reference :elections, :user, foreign_key: true
  end
end
