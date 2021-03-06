class Details {
  int? id;
  String? first_name;
  String? last_name;
  String? username;
  String? last_seen_time;
  String? avatar;
  String? status;
  int? message;

  Details(
      {this.id,
      this.avatar,
      this.first_name,
      this.last_name,
      this.username,
      this.last_seen_time,
      this.status,
      this.message});

  Details.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    avatar = json['avatar'];
    first_name = json['first_name'];
    last_name = json['last_name'];
    username = json['username'];
    last_seen_time = json['last_seen_time'];
    status = json['status'];
    message = json['messages'];
  }
}
