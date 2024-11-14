import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/authentication/authentication_bloc.dart';
import 'routes/app_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthenticationBloc(),
      child: MaterialApp.router(
        routeInformationParser: appRouter.routeInformationParser,
        routerDelegate: appRouter.routerDelegate,
      ),
    );
  }
}
