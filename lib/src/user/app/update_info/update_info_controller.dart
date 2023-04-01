import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_package/shared_package.dart';

import '../../../authentication/app/auth_provider.dart';
import '../../../authentication/data/auth_service.dart' as auth_service;
import '../../../authentication/domain/i_auth.dart';
import '../../../authentication/domain/user.dart';
import '../../../authentication/domain/value_objects.dart';

part 'update_info_controller.freezed.dart';
part 'update_info_controller.g.dart';
part 'update_info_state.dart';

@riverpod
class UpdateInfoController extends _$UpdateInfoController {
  late IAuthApi authApi;
  @override
  UpdateInfoState build() {
    _init();
    return UpdateInfoState.initial();
  }

  Future<Unit> _init() async {
    final userFailureOrSuccess = await auth_service.getCurrentUser().run(ref.read(authApiProvider));
    state = UpdateInfoState.hasUser(userFailureOrSuccess);
    return unit;
  }

  Unit firstNameChanged(String value) {
    state = state.copyWith(firstName: value);
    return unit;
  }

  Unit lastNameChanged(String value) {
    state = state.copyWith(firstName: value);
    return unit;
  }

  Unit emailChanged(String value) {
    state = state.copyWith(email: EmailAddress(value));
    return unit;
  }

  Future<Unit> submit() async {
    if (!state.shouldShowErrorMessages) {
      state = state.copyWith(shouldShowErrorMessages: true);
    }
    if (state.firstName.isEmpty ||
        state.lastName.isEmpty ||
        state.email.isInvalid() ||
        state.profilePicture.path.isEmpty) {
      return unit;
    }
    return unit;
  }
}
