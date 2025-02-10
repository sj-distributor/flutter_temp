<!--
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2025-01-02 14:21:32
-->
# OxygenX

### 目录结构
```
lib/
|-- abstracts             # 抽象类（接口）：统一在这里定义
|-- applications          # 应用层
|-- common                # 公共文件夹：放一些共用文件
    |-- enums             # 枚举
    |-- extensions        # 扩展
    |-- l10n              # 国际化配置
|-- domains               # 领域层
|-- config                # 配置文件夹
|-- middleware            # 中间件文件夹
|-- providers             # 数据层
|-- routes                # 自定义路由文件夹
|-- services              # 服务层
|-- theme                 # 自定义模板文件夹
|-- utils                 # 工具类文件夹
|-- views/                # 表示层
    |-- pages             # 屏幕/页面
    |-- widgets           # 可复用的UI组件
|-- main.dart             # 应用入口文件
|-- providers_setup.dart  # 数据文件设置入口
|-- routes.dart           # 路由入口文件

```

### 开发
  - git clone代码后，去`pubspec.yaml`暂时删除`flutter_oxygen`包，然后执行一次：`make init`或者`make module`
  - 安装依赖：`flutter pub get`
  - 修改领域层（domains）里面的Entity后，执行代码生成命令：`make code`
  - 修改`lib/common/l10n/language.json`后，执行命令生成多语言：`make l10n`
  - 修改`assets/fonts/*`后，执行命令生成字体文件：`make icon`
  - 测试 [常用断言类型](./docs/test.md)
