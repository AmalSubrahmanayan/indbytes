class User {
  final String uid;
  final String email;
  final String name;
  final String password;
  final String confirmpassword;

  User(
    this.email,
    this.uid,
    this.name,
    this.password,
    this.confirmpassword,
  );

  Map<String, dynamic> toJson() {
    return {
      'Email': email,
      'Name': name,
      'Password': password,
      'Confirmpassword': confirmpassword,
    };
  }
}
