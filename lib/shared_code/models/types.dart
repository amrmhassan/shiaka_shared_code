import 'package:json_annotation/json_annotation.dart';

// enum Sizes {
//   allSizes,
//   s,
//   m,
//   l,
//   xl,
//   2x,
//   3x,
// }

enum UserRole {
  @JsonValue('trader')
  trader,
  @JsonValue('normal')
  normal,
  @JsonValue('delivery')
  delivery,
}

enum UserGender {
  @JsonValue('male')
  male,
  @JsonValue('female')
  female,
}

enum SearchTypes {
  @JsonValue('product')
  product,
  @JsonValue('store')
  store,
  @JsonValue('storeProducts')
  storeProducts,
}

enum SnackBarType {
  info,
  error,
  success,
}

enum SignMethod {
  email,
  google,
  facebook,
}
