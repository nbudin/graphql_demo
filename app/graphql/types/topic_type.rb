Types::TopicType = GraphQL::ObjectType.define do
  name "Topic"

  field :id, !types.Int
  field :title, !types.String
  field :posts, !types[Types::PostType]
end
