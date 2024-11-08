import 'dart:typed_data';

import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:encrypt/encrypt.dart';

class EncryptUtils {
  static const String _key = '0123456789ABHAEE';
  static const String _ivValue = '1c29882d3ddfcfde';

  static Future<List<int>> encode(List<int> value) async {
    final key = encrypt.Key.fromUtf8(_key);
    final iv = encrypt.IV.fromUtf8(_ivValue);
    final encrypter = encrypt.Encrypter(
      encrypt.AES(
        key,
        mode: encrypt.AESMode.cbc,
      ),
    );

    final encrypted = encrypter.encryptBytes(value, iv: iv);

    return encrypted.bytes;
  }

  static Uint8List decode(Uint8List encryptedImageData) {
    try {
      final key = encrypt.Key.fromUtf8(_key);
      final iv = encrypt.IV.fromUtf8(_ivValue);
      final encrypter = encrypt.Encrypter(
        encrypt.AES(key, mode: encrypt.AESMode.cbc),
      );

      final decrypted = encrypter.decryptBytes(
        Encrypted(Uint8List.fromList(encryptedImageData)),
        iv: iv,
      );
      return Uint8List.fromList(decrypted);
    } catch (e) {
      return encryptedImageData;
    }
  }
}
