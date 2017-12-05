Types::PostType = GraphQL::ObjectType.define do
  name "Post"

  field :id, !types.Int
  field :content, types.String
  field :created_at, types.String
  field :topic, !Types::TopicType
  field :user, !Types::UserType
end
