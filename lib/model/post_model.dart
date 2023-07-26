class User {
  String? name;
  double? salary;
  int? age;
  int? id;

  User(
      {required this.id,
      required this.name,
      required this.salary,
      required this.age});

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        salary = json['salary'],
        age = json['age'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'salary': salary,
        'age': age,
      };
}
