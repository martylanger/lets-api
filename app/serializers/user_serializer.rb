# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :elections
  has_many :elections
end
