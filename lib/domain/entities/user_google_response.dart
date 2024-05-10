class UserGoogleResponse {
  String? displayName;
  String? email;
  String? id;
  String? photoUrl;
  String? serverAuthCode;

  UserGoogleResponse({
    this.displayName,
    this.email,
    this.id,
    this.photoUrl,
    this.serverAuthCode,
  });

  UserGoogleResponse copyWith({
    String? displayName,
    String? email,
    String? id,
    String? photoUrl,
    String? serverAuthCode,
  }) {
    return UserGoogleResponse(
      displayName: displayName ?? this.displayName,
      email: email ?? this.email,
      id: id ?? this.id,
      photoUrl: photoUrl ?? this.photoUrl,
      serverAuthCode: serverAuthCode ?? this.serverAuthCode,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'displayName': displayName,
      'email': email,
      'id': id,
      'photoUrl': photoUrl,
      'serverAuthCode': serverAuthCode,
    };
  }

  factory UserGoogleResponse.fromJson(Map<String, dynamic> json) {
    return UserGoogleResponse(
      displayName: json['displayName'] as String?,
      email: json['email'] as String?,
      id: json['id'] as String?,
      photoUrl: json['photoUrl'] as String?,
      serverAuthCode: json['serverAuthCode'] as String?,
    );
  }

  @override
  String toString() =>
      "UserGoogleResponse(displayName: $displayName,email: $email,id: $id,photoUrl: $photoUrl,serverAuthCode: $serverAuthCode)";

  @override
  int get hashCode =>
      Object.hash(displayName, email, id, photoUrl, serverAuthCode);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserGoogleResponse &&
          runtimeType == other.runtimeType &&
          displayName == other.displayName &&
          email == other.email &&
          id == other.id &&
          photoUrl == other.photoUrl &&
          serverAuthCode == other.serverAuthCode;
}
