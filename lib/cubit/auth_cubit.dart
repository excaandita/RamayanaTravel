import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:travelapp/models/user_model.dart';
import 'package:travelapp/services/auth_service.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  void signUp({
    required String email,
    required String password,
    required String name,
    required String phone,
  }) async {
    try {
      emit(AuthLoading());

      UserModel user = await AuthService()
          .signUp(email: email, password: password, name: name, phone: phone);

      emit(AuthSuccess(user));
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }
}
