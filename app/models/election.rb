class Election < ApplicationRecord
  has_many :ballots, dependent: :destroy
  has_many :choices, dependent: :destroy
  belongs_to :user
end
