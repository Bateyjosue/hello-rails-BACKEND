class GreetingSerializer < ActiveModel::Serializer
  attributes :id, :greet, :created_at
end
