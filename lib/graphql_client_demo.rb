require "graphql/client"
require "graphql/client/http"

module GraphqlClientDemo
  HTTP = GraphQL::Client::HTTP.new("http://localhost:8000/graphql")
  Schema = GraphQL::Client.load_schema(HTTP)
  Client = GraphQL::Client.new(schema: Schema, execute: HTTP)

  TopicsQuery = Client.parse <<-GRAPHQL
  query {
    topics {
      title

      posts {
        content
      }
    }
  }
  GRAPHQL
end
