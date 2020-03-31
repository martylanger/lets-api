class ChoiceSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :link
  belongs_to :election
end
