import 'package:e_demand/app/generalImports.dart';

abstract class AppleLoginState {}

class AppleLoginInitialState extends AppleLoginState {}

class AppleLoginInProgressState extends AppleLoginState {}

class AppleLoginSuccessState extends AppleLoginState {
  final User? userDetails;
  final String message;

  AppleLoginSuccessState({
    required this.message,
    this.userDetails,
  });
}

class AppleLoginFailureState extends AppleLoginState {
  String errorMessage;

  AppleLoginFailureState({required this.errorMessage});
}

class AppleLoginCubit extends Cubit<AppleLoginState> {
  AppleLoginCubit() : super(AppleLoginInitialState());
  AuthenticationRepository _authenticationRepository =
      AuthenticationRepository();

  Future<void> loginWithApple() async {
    //
    emit(AppleLoginInProgressState());
    //
    try {
      final Map<String, dynamic> response =
          await _authenticationRepository.signInWithApple();

      if (!response["isError"]) {
        print("userData: in applelogin ${response["userDetails"]}");
        emit(
          AppleLoginSuccessState(
              message: response["message"],
              userDetails: response["userDetails"] as User),
        );
      } else {
        emit(AppleLoginFailureState(errorMessage: response["message"]));
      }
    } catch (e) {
      emit(
        AppleLoginFailureState(errorMessage: e.toString()),
      );
    }
  }
}
