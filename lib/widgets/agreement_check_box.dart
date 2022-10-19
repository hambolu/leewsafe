import 'package:flutter/material.dart';

// import '../wallet_setup.dart';
class AgreementCheckBox extends StatefulWidget {
  const AgreementCheckBox({Key? key}) : super(key: key);


  @override
  State<AgreementCheckBox> createState() => _AgreementCheckBoxState();
}


class _AgreementCheckBoxState extends State<AgreementCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const SizedBox(width: 10), //SizedBox
        /** Checkbox Widget **/
        Checkbox(
      checkColor: const Color.fromARGB(255, 193, 187, 1),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    ),//Checkbox
        const SizedBox(
          width: 30,
        ), //SizedBox
        const Text(
          'I understand that DeGe cannot recover \n this password for me. Learn more: ',
          style: TextStyle(fontSize: 12.0),
        ), //Text
      ], //<Widget>[]
    ); //Row
  }
}
