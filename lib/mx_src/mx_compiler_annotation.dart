

/// 生成正常的 JS 对等代码
class MXJSCCompileToCode{
  final String name;
  const MXJSCCompileToCode(this.name);
}

/// 生成Api的注解，Class内的函数会被转调到JS
///   示例：封装getMyAppName
///   Future getMyAppName(platform, {v})  {
///     var argument = MXMirrorObjMethodCall(
///         className: "MXMirrorExample",
///         funcName: "getMyAppName",
///         args: {
///           "platform": platform,
///           "v": v,
///         });
///
///     return invokeMirrorObjMethodAsync(argument);
///   }
class MXJSCCompileToApi{
  final String name;
  const MXJSCCompileToApi(this.name);
}



/// 生成MirrorObj的注解
/// 生成的JS类的的构造函数会被插入 _m_x_f_ctorArgs
///   if (!this._m_x_f_ctorArgs) {
///    this._m_x_f_ctorArgs = {k: k, f_test3: f_test3, key: key, data: data, size: size};
///  }
///
class MXJSCCompileToMirrorObj{
  final String name;
  const MXJSCCompileToMirrorObj(this.name);
}
