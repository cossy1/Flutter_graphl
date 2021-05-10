import 'package:flutter/material.dart';
import 'package:flutter_graphql/auth/createAccount.dart';
import 'package:flutter_graphql/screens/homepage/splashScreen.dart';
import 'file:///C:/Users/voomsway/AndroidStudioProjects/flutter_graphql/lib/auth/welcome.dart';
import 'file:///C:/Users/voomsway/AndroidStudioProjects/flutter_graphql/lib/auth/verifyAccount.dart';
import 'file:///C:/Users/voomsway/AndroidStudioProjects/flutter_graphql/lib/graphQl/conf.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

final GraphQlConfiguration graphQlConfiguration = GraphQlConfiguration();

void main() async => runApp(
  GraphQLProvider(
    client: graphQlConfiguration.client,
    child: CacheProvider(child: MyApp(),),
  )
);

var initPage = '/';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hagglex',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
      ),
      initialRoute: initPage,
      routes: {
        '/': (context) => SplashScreen(),
        '/welcome': (context) => WelcomeScreen(),
        '/createAccount': (context) => CreateAccount(),
        '/verifyAccount': (context) => VerifyAccount()
      },
    );
  }
}
