class AppUser {
  final String? email;
  final String? firstName;
  final String? lastName;

  const AppUser({
    this.email,
    this.firstName,
    this.lastName,
  });

  @override
  String toString() {
    return 'User(email: $email)';
  }

  factory AppUser.fomJson(Map<String, dynamic> json) {
    return AppUser(
      email: json['email'],
      firstName: json['first_name'],
      lastName: json['last_name'],
    );
  }
}
