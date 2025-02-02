import 'package:test/test.dart';
import 'package:color_simp/color_simp.dart'; // Adjust this import based on your package name

void main() {
  group('ColorfulString extension tests', () {
    test('Red color formatting', () {
      const text = "Hello";
      expect(text.red, equals('\x1B[31mHello\x1B[0m'));
    });

    test('Green color formatting', () {
      const text = "Success";
      expect(text.green, equals('\x1B[32mSuccess\x1B[0m'));
    });

    test('Yellow color formatting', () {
      const text = "Warning";
      expect(text.yellow, equals('\x1B[33mWarning\x1B[0m'));
    });

    test('Blue color formatting', () {
      const text = "Info";
      expect(text.blue, equals('\x1B[34mInfo\x1B[0m'));
    });

    test('Magenta color formatting', () {
      const text = "Important";
      expect(text.magenta, equals('\x1B[35mImportant\x1B[0m'));
    });

    test('Cyan color formatting', () {
      const text = "Note";
      expect(text.cyan, equals('\x1B[36mNote\x1B[0m'));
    });

    test('log() prints the correct output', () {
      const text = "Log Message";
      expect(() => text.red.log(), prints('\x1B[31mLog Message\x1B[0m\n'));
    });
  });
}
