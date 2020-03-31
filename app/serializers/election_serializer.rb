class ElectionSerializer < ActiveModel::Serializer
  attributes :id, :is_profile, :has_previews, :noms, :voter_opts, :privacy_opts, :close_time, :group, :name, :description, :voting_method, :result
end
