class CreateBallots < ActiveRecord::Migration[5.2]
  def change
    create_table :ballots do |t|
      t.string :voter_name
      t.string :selections, null: false
      t.string :notes
      t.datetime :expiration

      t.timestamps
    end
  end
end
