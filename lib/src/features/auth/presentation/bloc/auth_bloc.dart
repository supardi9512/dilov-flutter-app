import 'package:bloc/bloc.dart';
import 'package:dilov_app/src/features/auth/data/data_user_account_local.dart';
import 'package:dilov_app/src/features/auth/domain/user_account.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<RegisterAuthEvent>((event, emit) async {
      emit(AuthLoading());
      DataUserAccountLocal.setDataUserAccountToStorage(event.userAccount);
      UserAccountRegister.settUserAccountRegister(event.isRegister);
      await Future.delayed(const Duration(seconds: 2));
      emit(
        AuthSuccess(
          userAccount: event.userAccount,
          isRegister: event.isRegister,
        ),
      );
    });
  }
}
