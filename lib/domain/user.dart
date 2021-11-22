
class User {
    User({
        required this.id,
        required this.name,
        required this.phone,
        required this.job,
        required this.company,
        required this.image,
        required this.email,
    });

    int id;
    String name;
    String phone;
    String job;
    String company;
    String image;
    String email;

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        phone: json["phone"],
        job: json["job"],
        company: json["company"],
        image: json["image"],
        email: json["email"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "phone": phone,
        "job": job,
        "company": company,
        "image": image,
        "email": email,
    };
    // static List<User> userId(Map data){
    //   return data.map((user) => User.fromJson(user)).toString();
    // }
}
