// import 'dart:convert';
//
// class UserRole {
//   int? id;
//   String? name;
//   String? type;
//   DateTime? createdAt;
//
//   UserRole({
//     this.id,
//     this.name,
//     this.type,
//     this.createdAt,
//   });
//
//   factory UserRole.fromRawJson(String str) => UserRole.fromJson(json.decode(str));
//
//   String toRawJson() => json.encode(toJson());
//
//   factory UserRole.fromJson(Map<String, dynamic> json) => UserRole(
//     id: json["id"],
//     name: json["name"],
//     type: json["type"],
//     createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "name": name,
//     "type": type,
//     "created_at": createdAt?.toIso8601String(),
//   };
// }
