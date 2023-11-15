class SingupWithEmailPasswordException {
  final String message;
  SingupWithEmailPasswordException(
      [this.message = "An unknown error occurred"]);

  factory SingupWithEmailPasswordException.code(String code) {
    switch (code) {
      case 'weak-password':
        return SingupWithEmailPasswordException(
            'Please enter a stronger password');
      case 'invalid-email':
        return SingupWithEmailPasswordException('Email is not valid');
      case 'email-already-in-use':
        return SingupWithEmailPasswordException(
            'An account alredy exists for that email');
      case 'opration-not-allowed':
        return SingupWithEmailPasswordException(
            'Opration is not allowed. Please contact support');
      case 'user-disabled':
        return SingupWithEmailPasswordException(
            'user has been disabled. Please contact support');

      default:
        return SingupWithEmailPasswordException('');
    }
  }
}
