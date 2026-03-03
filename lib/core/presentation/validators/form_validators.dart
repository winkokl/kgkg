import 'package:form_field_validator/form_field_validator.dart';
import 'package:intl/intl.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';

class FormValidators {
  static MultiValidator emailValidator([bool isRequired = true]) {
    return MultiValidator([
      EmailValidator(errorText: '*Enter a valid email address'),
      if (isRequired) RequiredValidator(errorText: '*This field is required.'),
    ]);
  }

  static MultiValidator passwordValidator() {
    return MultiValidator([
      RequiredValidator(errorText: '*This field is required.'),
      MinLengthValidator(6, errorText: 'အနည်းဆုံး အက္ခရာ 6 လုံးရှိရမည်။'),

      // PatternValidator('/[0-9a-zA-Z]{6,}/', errorText: 'at least 6 characters')
      // PatternValidator(r'(?=.*?[#?!@$%^&*-])',
      //     errorText: 'must have at least one special character')
    ]);
  }

  static MatchValidator passwordMatchValidator() {
    return MatchValidator(errorText: 'passwords do not match');
  }

  static MultiValidator phoneValidator([bool isRequired = true]) {
    return MultiValidator([
      if (isRequired) RequiredValidator(errorText: '*This field is required.'),
      PatternValidator(r'(^\+?09[0-9]{7,9}$)', errorText: '*Enter a valid Phone Number'),
    ]);
  }

  static RequiredValidator requiredValidator() {
    return RequiredValidator(errorText: '*This field is required.');
  }

  static MultiValidator numericValidator() {
    return MultiValidator([
      RequiredValidator(errorText: '*This field is required.'),
      PatternValidator(r'[^0]+', errorText: '*Input value should be greater than zero.'),
    ]);
  }

  static MultiValidator productValidator(String availableQty, bool needToCheckAvailableQty, [String? extraCheckQty, String? errorTitle]) {
    return MultiValidator([
      RequiredValidator(errorText: '*This field is required.'),
      PatternValidator(r'[^0]+', errorText: '*Input value should be greater than zero.'),
      if (needToCheckAvailableQty) ProductAvailableValidator(availableQty, extraCheckQty, errorText: '*Quantity should be less than or equal to ${errorTitle ?? 'Available'} Quantity.'),
    ]);
  }

  static MultiValidator dateBeforeValidator(String date, String dateName) {
    return MultiValidator([
      RequiredValidator(errorText: '*This field is required.'),
      DateBeforeValidator(date, errorText: '*Input date should be before $dateName.'),
    ]);
  }

  static MultiValidator amountValidator() {
    return MultiValidator([
      RequiredValidator(errorText: '*This field is required.'),
      PatternValidator(r'[^0]+', errorText: '*Input value should be greater than zero.'),
    ]);
  }
}

class ProductAvailableValidator extends TextFieldValidator {
  final String availableQty;
  final String? extraCheckQty;

  ProductAvailableValidator(this.availableQty, this.extraCheckQty, {required String errorText}) : super(errorText);

  @override
  bool get ignoreEmptyValues => false;

  @override
  bool isValid(String? value) {
    print("Available Qty in Validator: $availableQty");
    print("Extra Check Qty in Validator: $extraCheckQty");
    print("Value in Validator: $value");
    if (value != null && int.tryParse(value) != null && int.tryParse(availableQty) != null) {
      int intValue = int.parse(value);

      if (extraCheckQty != null) {
        final qty = int.tryParse(extraCheckQty!) ?? 0;
        if (qty <= 0) return false;
      }

      if (intValue > int.parse(availableQty)) {
        return false;
      }
    }
    return true;
  }
}

class DateBeforeValidator extends TextFieldValidator {
  final String date;

  DateBeforeValidator(this.date, {required String errorText}) : super(errorText);

  @override
  bool get ignoreEmptyValues => false;

  @override
  bool isValid(String? value) {
    if (value == null) {
      return false;
    }
    if (date.isEmpty) {
      return true;
    }
    DateFormat inputFormat = DateFormat(customDateFormat);
    DateTime parsedDate = inputFormat.parse(value);

    String formattedDate = dateFormat(parsedDate);
    if (DateTime(int.parse(formattedDate.split('-')[0]), int.parse(formattedDate.split('-')[1]), int.parse(formattedDate.split('-')[2])).isBefore(DateTime.parse(date))) {
      return false;
    }
    return true;
  }
}

//  validator: (v) {
//                   if (v == null || v.isEmpty) {
//                     return "*This field is required.";
//                   } else if (
// (
// DateTime(
//                           int.parse(v.split('-')[0]),
//                           int.parse(v.split('-')[1]),
//                           int.parse(v.split('-')[2]))
//                       .isBefore(DateTime.parse(saleDate)))
//) {
//                     return "Invalid Date";
//                   }
//                   return null;
//                 },