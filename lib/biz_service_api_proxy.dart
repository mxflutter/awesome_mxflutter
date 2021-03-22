import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'biz_service_api.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerBizServiceApiSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_bizServiceApi.funName] = _bizServiceApi;
  m[_bizServiceApi_instance.funName] = _bizServiceApi_instance;
  m[_bizServiceApi_requestBizData.funName] = _bizServiceApi_requestBizData;
  m[_bizServiceApi_requestBizDataAsync.funName] =
      _bizServiceApi_requestBizDataAsync;
  m[_bizServiceApi_requestBizModel.funName] = _bizServiceApi_requestBizModel;
  m[_bizServiceApiModel.funName] = _bizServiceApiModel;
  m[_bizServiceApiSubModel.funName] = _bizServiceApiSubModel;
  return m;
}

var _bizServiceApi =
    MXFunctionInvoke("BizServiceApi", () => BizServiceApi(), []);

var _bizServiceApi_instance = MXFunctionInvoke(
    "BizServiceApi.instance", () => BizServiceApi.instance(), []);

var _bizServiceApi_requestBizData = MXFunctionInvoke(
    "BizServiceApi#requestBizData",
    ({
      BizServiceApi mirrorObj,
      String args,
    }) =>
        mirrorObj.requestBizData(
          args,
        ),
    [
      "mirrorObj",
      "args",
    ]);

var _bizServiceApi_requestBizDataAsync = MXFunctionInvoke(
    "BizServiceApi#requestBizDataAsync",
    ({
      BizServiceApi mirrorObj,
      String args,
    }) =>
        mirrorObj.requestBizDataAsync(
          args,
        ),
    [
      "mirrorObj",
      "args",
    ]);

var _bizServiceApi_requestBizModel = MXFunctionInvoke(
    "BizServiceApi#requestBizModel",
    ({
      BizServiceApi mirrorObj,
      String args,
    }) =>
        mirrorObj.requestBizModel(
          args,
        ),
    [
      "mirrorObj",
      "args",
    ]);

var _bizServiceApiModel = MXFunctionInvoke(
    "BizServiceApiModel",
    ({
      String name,
      String desc,
    }) =>
        BizServiceApiModel(
          name,
          desc,
        ),
    [
      "name",
      "desc",
    ]);

var _bizServiceApiSubModel = MXFunctionInvoke(
    "BizServiceApiSubModel",
    ({
      int price,
      String name,
      String desc,
    }) =>
        BizServiceApiSubModel(
          price,
          name,
          desc,
        ),
    [
      "price",
      "name",
      "desc",
    ]);
