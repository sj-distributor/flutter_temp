/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-05-01 15:23:39
 */
import 'rule_utils.dart';

class ValidatorUtils {
  static final Map<String, bool Function(String)> validators = {
    'email': RuleUtils.email,
    'phone': RuleUtils.phone,
    'password': RuleUtils.password,
    'identity': RuleUtils.identity,
    'bank': RuleUtils.bank,
    'creditCard': RuleUtils.creditCard,
    'smsCode': RuleUtils.smsCode,
    'money': RuleUtils.money,
    'date': RuleUtils.date,
    'integer': RuleUtils.integer,
    'images': RuleUtils.images,
    'http': RuleUtils.http,
  };

  static bool validate(String key, String value) {
    var validatorFunction = validators[key];
    if (validatorFunction != null) {
      return validatorFunction(value);
    } else {
      throw Exception('Validator for key "$key" not found');
    }
  }
}
