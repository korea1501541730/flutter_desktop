

class RegexUtil {
  /// Regex of simple mobile.
  static const String regexMobileSimple = "^[1]\\d{10}\$";

  /// Regex of exact mobile.
  /// <p>china mobile: 134(0-8), 135, 136, 137, 138, 139, 147, 150, 151, 152, 157, 158, 159, 178, 182, 183, 184, 187, 188, 198</p>
  /// <p>china unicom: 130, 131, 132, 145, 155, 156, 166, 171, 175, 176, 185, 186</p>
  /// <p>china telecom: 133, 153, 173, 177, 180, 181, 189, 199</p>
  /// <p>global star: 1349</p>
  /// <p>virtual operator: 170</p>
  static const String regexMobileExact =
      "^((13[0-9])|(14[5,7])|(15[0-3,5-9])|(16[6])|(17[0,1,3,5-8])|(18[0-9])|(19[8,9]))\\d{8}\$";

  /// Regex of telephone number.
  static const String regexTel = "^0\\d{2,3}[- ]?\\d{7,8}";

  /// Regex of id card number which length is 15.
  static const String regexIdCard15 =
      "^[1-9]\\d{7}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}\$";

  /// Regex of id card number which length is 18.
  static const String regexIdCard18 =
      "^[1-9]\\d{5}[1-9]\\d{3}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}([0-9Xx])\$";

  /// Regex of email.
  static const String regexEmail =
      "^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*\$";

  /// Regex of url.
  static const String regexUrl = "[a-zA-z]+://[^\\s]*";

  /// Regex of Chinese character.
  static const String regexZh = "[\\u4e00-\\u9fa5]";

  /// Regex of date which pattern is "yyyy-MM-dd".
  static const String regexDate =
      "^(?:(?!0000)[0-9]{4}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-8])|(?:0[13-9]|1[0-2])-(?:29|30)|(?:0[13578]|1[02])-31)|(?:[0-9]{2}(?:0[48]|[2468][048]|[13579][26])|(?:0[48]|[2468][048]|[13579][26])00)-02-29)\$";

  /// Regex of ip address.
  static const String regexIp =
      "((2[0-4]\\d|25[0-5]|[01]?\\d\\d?)\\.){3}(2[0-4]\\d|25[0-5]|[01]?\\d\\d?)";

  static const String REGEX_PWD2 = "^[a-zA-Z\\d]{6,16}\$";

  ///Return whether input matches regex of simple mobile.
  static bool isMobileSimple(String input) {
    return matches(regexMobileSimple, input);
  }

  ///Return whether input matches regex of exact mobile.
  static bool isMobileExact(String input) {
    return matches(regexMobileExact, input);
  }

  /// Return whether input matches regex of telephone number.
  static bool isTel(String input) {
    return matches(regexTel, input);
  }

  /// Return whether input matches regex of id card number which length is 15.
  static bool isIDCard15(String input) {
    return matches(regexIdCard15, input);
  }

  /// Return whether input matches regex of id card number which length is 18.
  static bool isIDCard18(String input) {
    return matches(regexIdCard18, input);
  }

  /// Return whether input matches regex of email.
  static bool isEmail(String input) {
    return matches(regexEmail, input);
  }

  /// Return whether input matches regex of url.
  static bool isURL(String input) {
    return matches(regexUrl, input);
  }

  /// Return whether input matches regex of Chinese character.
  static bool isZh(String input) {
    return '〇' == input || matches(regexZh, input);
  }

  /// Return whether input matches regex of date which pattern is "yyyy-MM-dd".
  static bool isDate(String input) {
    return matches(regexDate, input);
  }

  /// Return whether input matches regex of ip address.
  static bool isIP(String input) {
    return matches(regexIp, input);
  }


  //检验密码格式
  static bool isFormatPwd(String input) {
//        return isMatch(REGEX_PWD, input);
    return matches(REGEX_PWD2, input);
  }

  static bool matches(String regex, String input) {
    if (input == null || input.isEmpty) return false;
    return RegExp(regex).hasMatch(input);
  }
}