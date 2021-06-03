import 'package:wemap_store_app/imports.dart';
import 'components/body.dart';

class EditUserInfoScreen extends StatelessWidget {
  static String routeName = "/edit-user-info";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Body(),
    );
  }
}
