import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class MobileFormField extends FormField<PhoneNumber> {
  PhoneNumber initialValue;
  String number;
  final double width;
  final double height;

  MobileFormField({
    Key key,
    this.initialValue,
    this.number,
    this.width = 320,
    this.height = 50,
  }) : super(
    initialValue: initialValue,
    builder: (FormFieldState<PhoneNumber> state) {
      void onPhoneNumberChange(PhoneNumber number) {
        if (number != null && state.mounted) {
          state.didChange(number);
        }
      }

      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          InternationalPhoneNumberInput(
            key: ObjectKey(initialValue),
            onInputChanged: onPhoneNumberChange,
            ignoreBlank: false,
            errorMessage: null,
            countries: ['NG'],
            selectorTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 12,
            ),
            initialValue: initialValue,
            inputBorder: InputBorder.none,
            textStyle: TextStyle(fontSize: 13),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text(
              state.hasError ? state.errorText : '',
              style: TextStyle(color: Colors.red, fontSize: 12),
            ),
          ),
        ],
      );
    },
  );

  @override
  _MobileFormField createState() => _MobileFormField();
}

class _MobileFormField extends FormFieldState<PhoneNumber> {
  Map<String, String> initialValues = {};
  PhoneNumber initNumber = new PhoneNumber(isoCode: 'NG');


  @override
  void initState() {
    initialValues = initialValues;
    super.initState();
    initNumber = new PhoneNumber(isoCode: 'NG', phoneNumber: initialValues['mobile'] ?? '', dialCode: '+234');
  }

  @override
  MobileFormField get widget => super.widget as MobileFormField;

  @override
  void didChange(PhoneNumber value) {
    super.didChange(value);
  }

  @override
  void didUpdateWidget(MobileFormField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialValue != oldWidget.initialValue) {
      setValue(widget.initialValue);
    }
  }
}
