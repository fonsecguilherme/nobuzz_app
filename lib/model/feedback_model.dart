class FeedbackRes {
  Result? result;

  FeedbackRes({this.result});

  FeedbackRes.fromJson(Map<String, dynamic> json) {
    result = json['result'] != null ? Result.fromJson(json['result']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (result != null) {
      data['result'] = result!.toJson();
    }
    return data;
  }
}

class Result {
  List<String>? estados;

  Result({this.estados});

  Result.fromJson(Map<String, dynamic> json) {
    estados = json['estados'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['estados'] = estados;
    return data;
  }
}
