import 'dart:io';
import 'parse.dart';

class CustomEnv {
  static Map<String, String> _map = {};

  static Future<Type> get<Type>({required String key}) async {
    if (_map.isEmpty) await _load();
    return _map[key]!.toType(Type);
  }

  static String _file = '.env';
  CustomEnv._();
  factory CustomEnv.FromFile(String file) {
    _file = file;
    return CustomEnv._();
  }

  static Future<void> _load() async {
    List<String> lines = (await _readFile()).split('\n');
    _map = {
      for (var l in lines)
        l.split('=')[0].trim(): l.split('=')[1].trim().replaceAll('\r', ''),
    };
  }

  static Future<String> _readFile() async {
    return await File(_file).readAsString();
  }
}
