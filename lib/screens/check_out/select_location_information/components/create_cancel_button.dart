import 'package:wemap_store_app/imports.dart';

class CreateAndCancelButton extends StatelessWidget {
  CreateAndCancelButton({
    Key key,
    @required GlobalKey<FormState> formKey,
    @required TextEditingController phoneNumberController,
    @required TextEditingController receiverNameController,
  })  : _formKey = formKey,
        _phoneNumberController = phoneNumberController,
        _receiverNameController = receiverNameController,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController _phoneNumberController;
  final TextEditingController _receiverNameController;
  var _userController = Get.find<UserController>();
  var _selectedLocation = Get.find<SelectLocationController>().location.value;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ButtonWithShadow(
            text: Text(
              "CREATE",
              style: TextStyle(
                fontSize: 24,
                color: kPrimaryColor,
              ),
            ),
            press: () {
              if (_formKey.currentState.validate()) {
                if (_selectedLocation != '') {
                  Locationn newLocation = Locationn(
                    phoneNumber: _phoneNumberController.text,
                    address: _selectedLocation,
                    receiverName: _receiverNameController.text,
                    length: Get.find<SelectLocationController>().length.value,
                  );
                  _userController.addNewLocation(newLocation);
                  Get.find<SelectLocationController>()
                      .saveLocationList(_userController.user.value.locations);
                  Get.back();
                }
              }
            },
          ),
          ButtonWithShadow(
            text: Text(
              "CANCEL",
              style: TextStyle(
                fontSize: 24,
                color: kSecondaryColor,
              ),
            ),
            press: () {
              Get.back();
            },
          ),
        ],
      ),
    );
  }
}
