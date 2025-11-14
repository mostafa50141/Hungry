class ApiError {
  final String message;
  final int? statesCode;

  ApiError({required this.message, this.statesCode});

  @override
  String toString() {
    return 'Error is: $message (StatesCode is $statesCode)';
  }
}
