// 上库代码先注释掉注解
@MXJSCCompileToApi("lib")
library BizServiceApi;

import 'dart:async';
import 'mx_src/mx_compiler_annotation.dart';

/// 这里是业务Api 需要mxc编译为 proxy api
///

// 上库代码先注释掉注解
//@MXJSCCompileToApi("Api")
class BizServiceApi {
  static BizServiceApi _instance = null;

  @MXJSCCompileToCode('instance')
  static BizServiceApi instance() {
    if (_instance == null) {
      _instance = BizServiceApi();
    }
    return _instance;
  }

  String requestBizData(String args) {
    return "Some sync + args: $args";
  }

  /// DemoApi
  Future<String> requestBizDataAsync(String args) async {
    return Future.delayed(Duration(seconds: 1), () {
      return "Some async Data + args: $args";
    });
  }

  BizServiceApiModel requestBizModel(String args) {
    var m = BizServiceApiSubModel(1, "sub model", "demo sub model + args: $args");
    return m;
  }
}

class BizServiceApiModel {
  BizServiceApiModel(this.name, this.desc);

  String name;
  String desc;
}

class BizServiceApiSubModel extends BizServiceApiModel {
  BizServiceApiSubModel(this.price, String name, String desc)
      : super(name, desc);

  int price;
}
