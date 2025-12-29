import 'dart:nativewrappers/_internal/vm/lib/ffi_native_type_patch.dart';

class Messages {
  final String text;
  final DateTime date;
  final Bool isSentbyme;

  const Messages({
    required this.text,
    required this.date,
    required this.isSentbyme,
  });
}
