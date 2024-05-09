class GeneratedWallet {
  String? mnemonics;
  String? privateKey;
  String? publicKey;

  GeneratedWallet({
    this.mnemonics,
    this.privateKey,
    this.publicKey,
  });

  GeneratedWallet copyWith({
    String? mnemonics,
    String? privateKey,
    String? publicKey,
  }) {
    return GeneratedWallet(
      mnemonics: mnemonics ?? this.mnemonics,
      privateKey: privateKey ?? this.privateKey,
      publicKey: publicKey ?? this.publicKey,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'mnemonics': mnemonics,
      'private_key': privateKey,
      'public_key': publicKey,
    };
  }

  factory GeneratedWallet.fromJson(Map<String, dynamic> json) {
    return GeneratedWallet(
      mnemonics: json['mnemonics'] as String?,
      privateKey: json['private_key'] as String?,
      publicKey: json['public_key'] as String?,
    );
  }

  @override
  String toString() =>
      "GeneratedWallet(mnemonics: $mnemonics,privateKey: $privateKey,publicKey: $publicKey)";

  @override
  int get hashCode => Object.hash(mnemonics, privateKey, publicKey);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GeneratedWallet &&
          runtimeType == other.runtimeType &&
          mnemonics == other.mnemonics &&
          privateKey == other.privateKey &&
          publicKey == other.publicKey;
}
