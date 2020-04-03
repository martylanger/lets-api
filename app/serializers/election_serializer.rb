class ElectionSerializer < ActiveModel::Serializer
  attributes :id, :is_profile, :has_previews, :noms_opts, :voter_opts, :privacy_opts, :close_time, :group, :name, :description, :voting_method, :result
  has_many :choices
  has_many :ballots
  belongs_to :user
end
