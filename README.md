<!--
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-04-15 09:59:05
-->
# flutter_temp

## 项目架构
- 抽象层（Abstract）：抽象层主要职责是定义类接口，定义的接口由其他地方实现，例如Entity接口它由领域层（Domain）层实现、Service接口由适配器层（Service）实现，Store接口由数据层（Provider）实现等等。
  
- 领域层（Domain）：领域层描述了应用程序的核心业务逻辑和主题领域。它包括实体（Entity）和数据之间的关系，以及对数据进行转换和处理的代码。

- 应用层（Application）：应用层描述了应用程序的用例或场景，例如添加商品到购物车、用户注册等。在这一层中，会实现各种用例所需的具体逻辑。

- 适配器层（Service）：适配器层主要负责与外部服务进行通信，并将外部服务的数据转换为应用程序内部能够理解的格式。这些外部服务可能包括数据库、API、第三方服务等。适配器层的存在可以帮助应用程序与外部环境进行解耦，从而提高系统的灵活性和可维护性。

- 数据层（Provider）：这一层包含了应用程序中的各种实体数据的实现，通常对应于业务模型中的对象。这些实体可能包括用户、产品、订单等。数据层主要负责存储和处理数据，提供对数据的基本操作和管理。
  
- UI层（views）：组件、页面，这个不用细说了。
  
## 依赖原则
- 领域必须独立。
- 应用层可以依赖领域：在应用层，我们不仅要描述用例本身，也要通过依赖注入的方式调用外部服务或者内部服务，这里依赖注入的是抽象层（Abstract）定义的接口。
- 其他层可以依赖任何东西。
  
## 架构说明
- 清晰的分层结构：通过将应用程序分为抽象层、领域层、应用层、适配器层和数据层，使得每个层次的职责清晰明确，有利于代码的组织和维护。
  
- 高内聚低耦合：每个层次都有明确定义的职责和接口，各层之间通过接口进行交互，从而实现了高内聚低耦合的设计原则，提高了代码的可维护性和可测试性。
  
- 分离关注点：通过将业务逻辑和数据处理分离到不同的层次中，使得各个部分可以独立开发、测试和部署，降低了代码变更的风险，并且便于团队协作。
  
- 可扩展性：由于各个层次之间的清晰划分，当需要引入新的功能或者改变现有功能时，可以根据需求在相应的层次进行扩展或修改，而不会对其他部分造成影响。
  
- 可替换性：每个层次都有明确定义的接口，可以轻松地替换实现，例如可以更换适配器层中的外部服务实现，而不影响应用层的逻辑。
  
- 可测试性：代码分层清晰，各个层级之间的依赖关系明确，有利于编写单元测试和集成测试，提高了代码的质量和稳定性
  
## 例子
```
  /// 抽象层
  /// lib/abstracts/user_abstract.dart

  // 定义一个User适配器的Service接口
  abstract class IUserService {
    Future<ICreateUserResponse?> create(ICreateUserRequest user);
    Future<IUpdateUserResponse?> update(IUpdateUserRequest user);
  }

  /// 适配器层
  /// lib/services/user/user_service.dart

  // User适配器对Service接口功能的实现
  class UserService implements IUserService {
    @override
    Future<ICreateUserResponse?> create(ICreateUserRequest request) async {
      // 这里是api请求
      final result = await UserApi.create(request);

      final cart = Cart()
        ..id = 123
        ..name = "cart";

      result?.cart = cart;

      return result;
    }

    @override
    Future<IUpdateUserResponse> update(IUpdateUserRequest request) async {
      // 这里是api请求
      final result = UpdateUserResponse()
        ..id = request.id
        ..name = request.name
        ..email = request.email;

      return result;
    }
  }

  /// 应用层
  /// 在应用层的User用例中通过接口服务注入的方式对UserService进行调用
  /// lib/applications/user/user_use_case.dart

  // UserUseCase用例
  class UserUseCase {
    final IUserService? userService;
    final IUserStore? userStore;

    UserUseCase({
      this.userService,
      this.userStore,
    });

    // 创建用户
    Future<(bool, String)> create(ICreateUserRequest request) async {
      // setp01
      final user = await userService?.create(request);
      if (user.isEmpty) {
        return (false, "user is empty");
      }

      // 修改user缓存数据
      userStore?.user = user;

      // setp02

      // setp03

      print("user ${jsonEncode(user)}");
      return (true, "");
    }

    // 更新用户 未做流程处理，直接忽略
    Future<IUpdateUserResponse?> update(IUpdateUserRequest request) async {
      return await userService?.update(request);
    }
  }

```

### 目录结构
```
lib/
|-- abstracts             # 抽象类（接口）：统一在这里定义
|-- applications          # 应用层
|-- domains               # 领域层
|-- providers             # 数据层
|-- services              # 适配器层
|-- views/                # 表示层
|   |-- pages             # 屏幕/页面
|   |-- widgets           # 可复用的UI组件
|-- utils                 # 工具类
|-- main.dart             # 应用入口文件
|-- providers_setup.dart  # 数据文件设置入口
|-- routes.dart           # 路由入口文件

```
### 辅助
- 修改领域层（domains）里面的Entity后，执行代码生成命令： `dart run build_runner build`
- 测试 [常用断言类型](./docs/test.md)
  
### 代理
```
# export http_proxy=http://127.0.0.1:1087
# export https_proxy=http://127.0.0.1:1087
```