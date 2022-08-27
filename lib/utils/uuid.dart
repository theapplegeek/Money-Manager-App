import 'package:uuid/uuid.dart';

class UUID {
  static String generate() {
    return const Uuid().v4();
  }
}