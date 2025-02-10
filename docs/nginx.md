<!--
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-08-12 17:10:38
-->
## Nginx

### 安装nginx后，在nginx.conf最下面加入
  - `include project/flutter_temp/build/web/vhosts/*`;
  
### nginx配置
  - `lib/config/nginx_config.json`
 
### 其他说明
  - type分为3种类型：cdn、host、proxy
  - cdn：主要用于静态文件分发
  - host：主要用于build后nginx配置指向
  - proxy：一般用于开发环境`make start`启动