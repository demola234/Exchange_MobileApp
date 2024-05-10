class SwapTokens {
  List<Tokens>? tokens;

  SwapTokens({
    this.tokens,
  });

  SwapTokens copyWith({
    List<Tokens>? tokens,
  }) {
    return SwapTokens(
      tokens: tokens ?? this.tokens,
    );
  }

  @override
  String toString() => "SwapTokens(tokens: $tokens)";

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SwapTokens &&
          runtimeType == other.runtimeType &&
          tokens == other.tokens;
}

class Tokens {
  String? tokenAddress;
  String? token;
  String? tokenImage;

  Tokens({
    this.tokenAddress,
    this.token,
    this.tokenImage,
  });

  Tokens copyWith({
    String? tokenAddress,
    String? token,
    String? tokenImage,
  }) {
    return Tokens(
      tokenAddress: tokenAddress ?? this.tokenAddress,
      token: token ?? this.token,
      tokenImage: tokenImage ?? this.tokenImage,
    );
  }

  @override
  String toString() =>
      "Tokens(tokenAddress: $tokenAddress,token: $token,tokenImage: $tokenImage)";

  @override
  int get hashCode => Object.hash(tokenAddress, token, tokenImage);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Tokens &&
          runtimeType == other.runtimeType &&
          tokenAddress == other.tokenAddress &&
          token == other.token &&
          tokenImage == other.tokenImage;
}

List<SwapTokens> tokens = [
  SwapTokens(
    tokens: [
      Tokens(
        tokenAddress: "0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2",
        token: "USDT",
        tokenImage: "assets/icons/usdt.svg",
      ),
      Tokens(
        tokenAddress: "0xdAC17F958D2ee523a2206206994597C13D831ec7",
        token: "ETH",
        tokenImage: "assets/icons/ethereum.svg",
      ),
    ],
  ),
];
