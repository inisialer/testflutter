import 'package:intl/intl.dart';

class GlobalFunction {
  String formattedMoneyIDR(int money) {
    String value = NumberFormat("###,###,###.##", "id_id").format(money ?? 0);

    final moneyStr = (money ?? 0).toString();
    final moneys = moneyStr.split(".");

    if (moneys.length == 2) {
      if (moneys[1].length == 1 && moneys[1] != "0") {
        value = "${value}0";
      }
    }

    return value == "NaN" ? "0" : "Rp $value";
  }
}
