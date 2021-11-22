
class Contact {
    Contact({
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

    factory Contact.fromJson(Map<String, dynamic> json) => Contact(
        id: json["id"]??0,
        name: json["name"]??"",
        phone: json["phone"]??"",
        job: json["job"]??"",
        company: json["company"]??"",
        image: json["image"]??"https://res.cloudinary.com/noobone-cloud/image/upload/v1620372850/tmwpkfm2lxef7wgpcibk.jpg",
        email: json["email"]??"",
       
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "phone":phone,
        "job":job,
        "company": company,
        "image": image,
        "email": email,
    };
    static List<Contact> allContact(List data){
      return data.map((contact) => Contact.fromJson(contact)).toList();
    }
}

