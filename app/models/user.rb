# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :elections
  has_many :choices, through: :elections
  has_many :ballots, through: :elections
end
