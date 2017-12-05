Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :topics, !types[Types::TopicType] do
    description "All the topics in our discussion board"
    resolve ->(obj, args, ctx) {
      Topic.all
    }
  end
end
