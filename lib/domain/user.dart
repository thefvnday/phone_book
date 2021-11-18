
class User {
    User({
        required this.id,
        required this.name,
        required this.email,
        required this.token,
    });

    int id;
    String name;
    String email;
    String token;

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "token": token,
    };
}
