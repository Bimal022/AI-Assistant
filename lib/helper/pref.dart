import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class Pref {
  //For showing and not showing onboarding screen we use hive
  static late Box _box;
  static Future<void> initialise() async {
    Hive.defaultDirectory = (await getApplicationDocumentsDirectory()).path;
    _box = Hive.box(name: 'myData');
  }

  static bool get showWelcome => _box.get('showWelcome', defaultValue: true);
  static set showWelcome(bool v) => _box.put('showWelcome', v);
}
