import 'package:chatt_app/constant.dart';

class Messages {
  final String message;
  final String id;
  Messages(this.message, this.id);

  factory Messages.fromJson(jsonData) {
    return Messages(jsonData[kMessage], jsonData['id']);
  }
}
