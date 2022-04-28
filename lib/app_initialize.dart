part of 'main.dart';

Future _preInitializations() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  // setWindowsSize();
  // final StorageService storageService = StorageService.instance;
  // await storageService.openDatabaseStore();
}
