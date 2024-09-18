/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-07-30 15:12:03
 */

import 'dart:io';

import '../lib/config/nginx_config.dart';

import '../generator/vhosts.dart';
import 'utils.dart';

const _print = print;

/// 生成vhosts文件
void generateVHosts() {
  // 输出路径
  Directory currentDirectory = Directory.current;
  final webBuildDir = "${currentDirectory.path}/build/web";

  // 改变配置
  if (NginxConfig.data['servers'] != null) {
    for (var item in NginxConfig.data['servers']) {
      item["cdn"] = false;
      item["host"] = false;
      item["proxy"] = false;
      item[item['type']] = true;
      item["root"] = webBuildDir;
    }
  }

  // 删除文件夹
  Utils.deleteDirectory("$webBuildDir/vhosts");
  final outputDir = Utils.checkAndCreateDirectory("$webBuildDir/vhosts");

  // 生成nginx配置文件
  final isOk = Vhosts.generate(
    data: NginxConfig.data,
    template: "generator/templates/vhosts/nginx.conf.hbs",
    output: "$outputDir/nginx.conf",
  );

  if (isOk) _print("output: $outputDir/nginx.conf");
}

void main() {
  generateVHosts();
}
