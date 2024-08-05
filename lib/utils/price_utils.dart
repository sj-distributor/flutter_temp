/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-08-02 14:02:10
 */
class PriceUtils {
  /// 均等分金额
  static List<double> divideAmount(double totalAmount, int numberOfParts) {
    // 计算每份的基本值
    double basicValue =
        double.parse((totalAmount / numberOfParts).toStringAsFixed(2));

    // 初始化结果数组
    List<double> parts = List.filled(numberOfParts, 0.00);

    // 分配基本值
    for (int i = 0; i < numberOfParts; i++) {
      parts[i] = basicValue;
    }

    // 计算实际分配的总额和剩余部分
    double totalAllocated = parts.reduce((a, b) => a + b);
    double remaining =
        double.parse((totalAmount - totalAllocated).toStringAsFixed(2));

    // 将剩余部分全部分配给最后一个元素
    parts[numberOfParts - 1] += remaining;

    // 保证每个部分的金额精确到两位小数
    for (int i = 0; i < numberOfParts; i++) {
      parts[i] = double.parse(parts[i].toStringAsFixed(2));
    }

    return parts;
  }
}
