class CreateElections < ActiveRecord::Migration[5.2]
  def change
    create_table :elections do |t|
      t.boolean :is_profile
      t.boolean :has_previews
      t.string :noms_opts
      t.string :voter_opts
      t.string :privacy_opts
      t.datetime :close_time
      t.string :group
      t.string :name, null: false
      t.string :description
      t.string :voting_method
      t.string :result

      t.timestamps
    end
  end
end
