import 'package:flutter/cupertino.dart';
import 'package:graphql_flutter/graphql_flutter.dart';


class GraphQlConfiguration {
  static HttpLink httpLink = HttpLink(
      "https://examplegraphql.herokuapp.com/graphql"
  );

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: httpLink,
      cache: GraphQLCache()
    )
  );

  GraphQLClient clientToQuery() {
    return GraphQLClient(
      cache: GraphQLCache(),
      link: httpLink,
    );
  }

}