import 'package:wemap_store_app/imports.dart';
import './components/body.dart';

class SettingsScreen extends StatelessWidget {
  static String routeName = "/settings";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
