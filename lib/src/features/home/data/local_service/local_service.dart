import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class LocalService {
  Future<T> getDataByKey<T>({
    required String boxName,
    required String key,
  }) async {
    final box = await Hive.openBox(boxName);
    final data = await box.get(key);
    return data;
  }

  Future<T> getDataByIndex<T>({
    required String boxName,
    required int index,
  }) async {
    final box = await Hive.openBox(boxName);
    final data = await box.getAt(index);
    return data;
  }

  Future<List<T>> getAll<T>({required String boxName}) async {
    final box = await Hive.openBox(boxName);
    return box.values.toList().cast<T>();
  }

  Future<bool> containsKey({
    required String boxName,
    required String key,
  }) async {
    final box = await Hive.openBox(boxName);
    bool found = box.containsKey(key);
    return found;
  }

  Future<void> saveData<T>({
    required String boxName,
    String? key,
    required T data,
  }) async {
    final box = await Hive.openBox(boxName);
    await (key == null
        ? data is Iterable
            ? box.addAll(data)
            : box.add(data)
        : box.put(key, data));
    return;
  }

  Future<void> removeDataByKey({
    required String boxName,
    required String key,
  }) async {
    final box = await Hive.openBox(boxName);
    return box.delete(key);
  }

  Future<void> removeDataByIndex({
    required String boxName,
    required int index,
  }) async {
    final box = await Hive.openBox(boxName);
    return box.deleteAt(index);
  }

  Future<void> clearData({required String boxName}) async {
    final box = await Hive.openBox(boxName);
    box.clear();
  }
}
