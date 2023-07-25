class Post {
  String? name;
  double? salary;
  int? age;
  int? id;

  Post({
    this.name,
    this.salary,
    this.age,
    this.id,
  });

  Post.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        salary = json['salary'],
        age = json['age'],
        id = json['id'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'salary': salary,
        'age': age,
        'id': id,
      };
}
