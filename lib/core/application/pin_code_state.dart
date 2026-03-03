class PinCodeState {
  final String enteredPin;
  final String renteredPin;
  final String? storedPin;
  final bool isConfirmingPin;
  final String? errorMessage;
  final String? successMessage;

  PinCodeState({
    this.enteredPin = '',
    this.renteredPin = '',
    this.storedPin,
    this.isConfirmingPin = false,
    this.errorMessage,
    this.successMessage,
  });

  PinCodeState copyWith({
    String? enteredPin,
    String? renteredPin,
    bool? isConfirmingPin,
    String? errorMessage,
    String? successMessage,
  }) {
    return PinCodeState(
      enteredPin: enteredPin ?? this.enteredPin,
      renteredPin: renteredPin ?? this.renteredPin,
      isConfirmingPin: isConfirmingPin ?? this.isConfirmingPin,
      errorMessage: errorMessage ?? this.errorMessage,
      successMessage: successMessage ?? this.successMessage,
    );
  }
}
