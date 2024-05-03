/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-05-01 15:21:17
 */

class RuleUtils {
  // Check if the string is empty
  static bool isEmpty(String? value) {
    return value == null || value.isEmpty;
  }

  // Email validation
  static bool email(String value) {
    RegExp pattern =
        RegExp(r'^([a-z0-9+_-]+)(\.[a-z0-9+_-]+)*@([a-z0-9-]+\.)+[a-z]{2,6}$');
    return isEmpty(value) ? false : pattern.hasMatch(value);
  }

  // U.S. phone number validation
  static bool phone(String value) {
    RegExp pattern = RegExp(
        r'^(\([2-9][0-9]{2}\)\s?|[2-9][0-9]{2}[-.]?)[2-9][0-9]{2}[-.]?[0-9]{4}$');
    return isEmpty(value) ? false : pattern.hasMatch(value);
  }

  // Password validation
  static bool password(String value) {
    RegExp pattern = RegExp(r'^(?=.*\d)(?=.*[a-zA-Z]).{8,16}$');
    return isEmpty(value) ? false : pattern.hasMatch(value);
  }

  // Identity card validation
  static bool identity(String value) {
    RegExp pattern = RegExp(
        r'^\d{6}(18|19|20)?\d{2}(0[1-9]|1[012])(0[1-9]|[12]\d|3[01])\d{3}(\d|X|x)$');
    return isEmpty(value) ? false : pattern.hasMatch(value);
  }

  // Bank card validation
  static bool bank(String value) {
    RegExp pattern = RegExp(r'^(\d{16,19})$');
    return isEmpty(value) ? false : pattern.hasMatch(value);
  }

  // Credit card validation
  static bool creditCard(String value) {
    RegExp pattern = RegExp(r'^(\d{15,19})$');
    return isEmpty(value) ? false : pattern.hasMatch(value);
  }

  // SMS code validation
  static bool smsCode(String value) {
    RegExp pattern = RegExp(r'^[0-9]{6}$');
    return isEmpty(value) ? false : pattern.hasMatch(value);
  }

  // Money validation
  static bool money(String value) {
    RegExp pattern =
        RegExp(r'^(([1-9][0-9]*)|(([0]\.\d{1,2}|[1-9][0-9]*\.\d{1,2})))$');
    return isEmpty(value) ? false : pattern.hasMatch(value);
  }

  // Date validation
  static bool date(String value) {
    RegExp pattern = RegExp(
        r'^(([0-9]{3}[1-9]|[0-9]{2}[1-9][0-9]{1}|[0-9]{1}[1-9][0-9]{2}|[1-9][0-9]{3})-(((0[13578]|1[02])-(0[1-9]|[12][0-9]|3[01]))|((0[469]|11)-(0[1-9]|[12][0-9]|30))|(02-(0[1-9]|[1][0-9]|2[0-8]))))|((([0-9]{2})(0[48]|[2468][048]|[13579][26])|((0[48]|[2468][048]|[3579][26])00))-02-29)$');
    return isEmpty(value) ? false : pattern.hasMatch(value);
  }

  // Integer validation
  static bool integer(String value) {
    RegExp pattern = RegExp(r'^\+?[1-9][0-9]*$');
    return isEmpty(value) ? false : pattern.hasMatch(value);
  }

  // Image format validation
  static bool images(String value) {
    RegExp pattern = RegExp(r'^.*(gif|png|jpe?g)$');
    return isEmpty(value) ? false : pattern.hasMatch(value);
  }

  // HTTP/HTTPS URL validation
  static bool http(String value) {
    RegExp pattern = RegExp(r'^(http|https):\/\/([\w.]+\/?)\S*');
    return isEmpty(value) ? false : pattern.hasMatch(value);
  }
}
