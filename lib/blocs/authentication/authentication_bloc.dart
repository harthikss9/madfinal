import 'package:flutter_bloc/flutter_bloc.dart';
import 'authentication_event.dart';
import 'authentication_state.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationInitial());

  @override
  Stream<AuthenticationState> mapEventToState(AuthenticationEvent event) async* {
    if (event is SignInEvent) {
      yield AuthenticationLoading();
      try {
        // Simulate a network request
        await Future.delayed(Duration(seconds: 2));
        yield AuthenticationSuccess();
      } catch (e) {
        yield AuthenticationFailure(e.toString());
      }
    } else if (event is SignUpEvent) {
      yield AuthenticationLoading();
      try {
        // Simulate a network request
        await Future.delayed(Duration(seconds: 2));
        yield AuthenticationSuccess();
      } catch (e) {
        yield AuthenticationFailure(e.toString());
      }
    }
  }
}
