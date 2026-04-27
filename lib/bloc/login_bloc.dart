import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_event.dart';
import 'login_state.dart';
import '../repository/auth_repository.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository authRepository;

  LoginBloc(this.authRepository) : super(LoginInitial()) {
    on<LoginButtonPressed>((event, emit) async {
      emit(LoginLoading());

      try {
        final success = await authRepository.login(
          event.email,
          event.password,
        );

        if (success) {
          emit(LoginSuccess());
        }
      } catch (e) {
        emit(LoginFailure(e.toString()));
      }
    });
  }
}