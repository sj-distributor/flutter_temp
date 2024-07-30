/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-07-30 15:32:27
 */
class NginxConfig {
  static Map<String, dynamic> data = {
    "servers": [
      {
        "type": "cdn",
        "port": 80,
        "domain": ["cdn.flutter-temp.com"],
      },
      {
        "type": "host",
        "port": 80,
        "entries": ["index.html"],
        "domain": ["test.flutter-temp.com"],
      },
      {
        "type": "proxy",
        "port": 80,
        "proxy_url": "localhost:1988",
        "domain": ["dev.flutter-temp.com"],
      },
    ],
  };
}
