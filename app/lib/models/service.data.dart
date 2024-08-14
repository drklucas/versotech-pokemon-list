import 'dart:convert';

class ServiceData {
  bool ok;
  String msg;
  dynamic data;
  ServiceData({
    required this.ok,
    required this.msg,
    required this.data,
  });

  ServiceData copyWith({
    bool? ok,
    String? msg,
    dynamic? data,
  }) {
    return ServiceData(
      ok: ok ?? this.ok,
      msg: msg ?? this.msg,
      data: data ?? this.data,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'ok': ok,
      'msg': msg,
      'data': data,
    };
  }

  factory ServiceData.fromMap(Map<String, dynamic> map) {
    return ServiceData(
      ok: map['ok'] ?? false,
      msg: map['msg'] ?? '',
      data: map['data'] ?? null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ServiceData.fromJson(String source) => ServiceData.fromMap(json.decode(source));

  @override
  String toString() => 'ServiceData(ok: $ok, msg: $msg, data: $data)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ServiceData &&
      other.ok == ok &&
      other.msg == msg &&
      other.data == data;
  }

  @override
  int get hashCode => ok.hashCode ^ msg.hashCode ^ data.hashCode;
}
