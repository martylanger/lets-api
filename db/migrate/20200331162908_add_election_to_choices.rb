class AddElectionToChoices < ActiveRecord::Migration[5.2]
  def change
    add_reference :choices, :election, foreign_key: true
  end
end
