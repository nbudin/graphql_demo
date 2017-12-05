Types::UserType = GraphQL::ObjectType.define do
  name "User"

  field :id, !types.Int
  field :username, !types.String
  field :registered_at, !types.String
  field :posts_count, !types.Int
  field :posts, !types[Types::PostType]
end
