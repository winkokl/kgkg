import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mgkaung_dms_mobile/core/application/pin_code_state.dart';
import 'package:mgkaung_dms_mobile/core/helpers/shared_preferences.dart';
part 'pin_code_notifier.g.dart';

@riverpod
class PinCodeNotifier extends _$PinCodeNotifier {
  @override
  PinCodeState build(bool hasOperation) {
    return PinCodeState(storedPin: SharedPrefs.getString("storedPin") ?? '1111');
  }

  void insertText(String myText) {
    if (!state.isConfirmingPin) {
      // Entering the first PIN
      if (state.enteredPin.length < 4) {
        state = state.copyWith(enteredPin: state.enteredPin + myText);
        if (state.enteredPin.length == 4) {
          if (hasOperation) {
            state = state.copyWith(isConfirmingPin: true); // Move to confirmation step
          } else {
            validatePin(); // Validate immediately if not setting a new PIN
          }
        }
      }
    } else {
      // Re-entering PIN for confirmation
      if (state.renteredPin.length < 4) {
        state = state.copyWith(renteredPin: state.renteredPin + myText);
        if (state.renteredPin.length == 4) {
          if (state.renteredPin == state.enteredPin) {
            state = state.copyWith(
              successMessage: "PIN change successfully!",
              errorMessage: null,
            );
            SharedPrefs.setString("storedPin", state.renteredPin);
          } else {
            state = state.copyWith(
              errorMessage: "PINs do not match",
              successMessage: null,
              enteredPin: '',
              renteredPin: '',
              isConfirmingPin: false,
            );
          }
        }
      }
    }
  }

  void validatePin() {
    final storedPin = SharedPrefs.getString("storedPin") ?? '1111';
    if (state.enteredPin == storedPin) {
      state = state.copyWith(successMessage: "PIN is correct!", errorMessage: null);
    } else {
      state = state.copyWith(errorMessage: "Incorrect PIN", successMessage: null);
    }
  }

  void backspace() {
    if (!state.isConfirmingPin) {
      if (state.enteredPin.isNotEmpty) {
        state = state.copyWith(
          enteredPin: state.enteredPin.substring(0, state.enteredPin.length - 1),
        );
      }
    } else {
      if (state.renteredPin.isNotEmpty) {
        state = state.copyWith(
          renteredPin: state.renteredPin.substring(0, state.renteredPin.length - 1),
        );
      }
    }
  }

  void reset() => state = PinCodeState();
}
