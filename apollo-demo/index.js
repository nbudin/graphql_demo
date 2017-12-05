import { ApolloClient } from 'apollo-client';
import { HttpLink } from 'apollo-link-http';
import { InMemoryCache } from 'apollo-cache-inmemory';
import fetch from 'node-fetch';
import gql from 'graphql-tag';

const client = new ApolloClient({
  link: new HttpLink({ uri: 'http://localhost:8000/graphql', fetch: fetch }),
  cache: new InMemoryCache()
});

const topicsQuery = gql`
query {
  topics {
    title

    posts {
      content
    }
  }
}
`;

client.query({ query: topicsQuery }).then((response) => {
  console.log(response.data.topics[0].posts[0].content);
});
