class BallotSerializer < ActiveModel::Serializer
  attributes :id, :voter_name, :selections, :notes, :expiration
end
