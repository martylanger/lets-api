class CreateChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :choices do |t|
      t.string :title, null: false
      t.string :description
      t.string :link

      t.timestamps
    end
  end
end
