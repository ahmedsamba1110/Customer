// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UpdateUserDetails {
  final String? username;
  final String? email;
  final String? phone;
  final String? countryCode;
  final String? countryCodeName;
  final String? loginType;
  final String? uid;

  final dynamic image;

  UpdateUserDetails({
    this.username,
    this.email,
    this.phone,
    this.countryCode,
    this.image,
    this.countryCodeName,
    this.loginType,
    this.uid,
  });

  UpdateUserDetails copyWith({
    final String? username,
    final String? email,
    final String? phone,
    final String? countryCode,
    final String? countryCodeName,
    final String? loginType,
    final String? uid,
    final image,
  }) =>
      UpdateUserDetails(
        username: username ?? this.username,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        countryCode: countryCode ?? this.countryCode,
        countryCodeName: countryCodeName ?? this.countryCodeName,
        uid: uid ?? this.uid,
        loginType: loginType ?? this.loginType,
        image: image ?? this.image,
      );

  Map<String, dynamic> toMap() => <String, dynamic>{
        "username": username,
        "email": email,
        "phone": phone,
        "country_code": countryCode,
        "image": image,
        "uid": uid,
        "loginType": loginType,
      };

  String toJson() => json.encode(toMap());

  factory UpdateUserDetails.fromMap(final Map<String, dynamic> map) =>
      UpdateUserDetails(
        username: map["username"] != null ? map["username"] as String : null,
        email: map["email"] != null ? map["email"] as String : null,
        phone: map["phone"] != null ? map["phone"] as String : null,
        countryCode:
            map["country_code"] != null ? map["country_code"] as String : null,
        loginType: map["loginType"] != null ? map["loginType"] as String : null,
        uid: map["uid"] != null ? map["uid"] as String : null,
        image: map["image"] as dynamic,
      );

  factory UpdateUserDetails.fromJson(final String source) =>
      UpdateUserDetails.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(final Object other) {
    if (identical(this, other)) return true;

    return other is UpdateUserDetails &&
        other.username == username &&
        other.email == email &&
        other.phone == phone &&
        other.image == image;
  }

  @override
  int get hashCode =>
      username.hashCode ^ email.hashCode ^ phone.hashCode ^ image.hashCode;
}
