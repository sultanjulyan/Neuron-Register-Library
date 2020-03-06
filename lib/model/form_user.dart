class FormUser {
  String username;
  String password;
  String name;
  String phone;

  FormUser({this.username, this.password, this.name, this.phone});

  FormUser.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['password'] = this.password;

    return data;
  }
}