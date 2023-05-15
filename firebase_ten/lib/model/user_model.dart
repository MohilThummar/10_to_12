class UserModel {
  final String? fullName;
  final List<int>? listData;
  final String? company;
  final int? id;
  final int? age;

  UserModel({
    this.fullName,
    this.listData,
    this.company,
    this.id,
    this.age,
  });

  UserModel.fromJson(Map<String, dynamic> json)
      : fullName = json['full_name'] as String?,
        listData = (json['list_data'] as List?)?.map((dynamic e) => e as int).toList(),
        company = json['company'] as String?,
        id = json['id'] as int?,
        age = json['age'] as int?;

  Map<String, dynamic> toJson() => {
        'full_name': fullName,
        'list_data': listData,
        'company': company,
        'id': id,
        'age': age,
      };
}
