import 'package:isar/isar.dart';

part 'app_settings.g.dart';

@Collection()
class AppSettting {
  Id id = Isar.autoIncrement;
  DateTime? firstLaunchDate;
}
