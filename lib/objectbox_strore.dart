import 'package:flutter_rwid/objectbox.g.dart';
import 'package:objectbox/objectbox.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

class ObjectBox {
  late final Store store;
  ObjectBox._create(this.store);
  static Future<ObjectBox> create() async {
    final docsDir = await getApplicationCacheDirectory();
    final store = await openStore(directory: p.join(docsDir.path, 'openbox'));

    return ObjectBox._create(store);
  }
}
