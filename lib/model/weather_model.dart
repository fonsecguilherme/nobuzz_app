class Weather {
  Result? result;

  Weather({this.result});

  Weather.fromJson(Map<String, dynamic> json) {
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
  List<Estados>? estados;

  Result({this.estados});

  Result.fromJson(Map<String, dynamic> json) {
    if (json['estados'] != null) {
      estados = <Estados>[];
      json['estados'].forEach((v) {
        estados!.add(Estados.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (estados != null) {
      data['estados'] = estados!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Estados {
  String? estado;
  List<Dias>? dias;

  Estados({this.estado, this.dias});

  Estados.fromJson(Map<String, dynamic> json) {
    estado = json['estado'];
    if (json['dias'] != null) {
      dias = <Dias>[];
      json['dias'].forEach((v) {
        dias!.add(Dias.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['estado'] = estado;
    if (dias != null) {
      data['dias'] = dias!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Dias {
  List<Dia>? segunda;
  List<Dia>? terca;
  List<Dia>? quarta;
  List<Dia>? quinta;
  List<Dia>? sexta;
  List<Dia>? sabado;
  List<Dia>? domingo;

  Dias(
      {this.segunda,
      this.terca,
      this.quarta,
      this.quinta,
      this.sexta,
      this.sabado,
      this.domingo});

  Dias.fromJson(Map<String, dynamic> json) {
    if (json['segunda'] != null) {
      segunda = <Dia>[];
      json['segunda'].forEach((v) {
        segunda!.add(Dia.fromJson(v));
      });
    }
    if (json['terca'] != null) {
      terca = <Dia>[];
      json['terca'].forEach((v) {
        terca!.add(Dia.fromJson(v));
      });
    }
    if (json['quarta'] != null) {
      quarta = <Dia>[];
      json['quarta'].forEach((v) {
        quarta!.add(Dia.fromJson(v));
      });
    }
    if (json['quinta'] != null) {
      quinta = <Dia>[];
      json['quinta'].forEach((v) {
        quinta!.add(Dia.fromJson(v));
      });
    }
    if (json['sexta'] != null) {
      sexta = <Dia>[];
      json['sexta'].forEach((v) {
        sexta!.add(Dia.fromJson(v));
      });
    }
    if (json['sabado'] != null) {
      sabado = <Dia>[];
      json['sabado'].forEach((v) {
        sabado!.add(Dia.fromJson(v));
      });
    }
    if (json['domingo'] != null) {
      domingo = <Dia>[];
      json['domingo'].forEach((v) {
        domingo!.add(Dia.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (segunda != null) {
      data['segunda'] = segunda!.map((v) => v.toJson()).toList();
    }
    if (terca != null) {
      data['terca'] = terca!.map((v) => v.toJson()).toList();
    }
    if (quarta != null) {
      data['quarta'] = quarta!.map((v) => v.toJson()).toList();
    }
    if (quinta != null) {
      data['quinta'] = quinta!.map((v) => v.toJson()).toList();
    }
    if (sexta != null) {
      data['sexta'] = sexta!.map((v) => v.toJson()).toList();
    }
    if (sabado != null) {
      data['sabado'] = sabado!.map((v) => v.toJson()).toList();
    }
    if (domingo != null) {
      data['domingo'] = domingo!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Dia {
  List<Info>? manha;
  List<Info>? tarde;
  List<Info>? noite;

  Dia({this.manha, this.tarde, this.noite});

  Dia.fromJson(Map<String, dynamic> json) {
    if (json['manha'] != null) {
      manha = <Info>[];
      json['manha'].forEach((v) {
        manha!.add(Info.fromJson(v));
      });
    }
    if (json['tarde'] != null) {
      tarde = <Info>[];
      json['tarde'].forEach((v) {
        tarde!.add(Info.fromJson(v));
      });
    }
    if (json['noite'] != null) {
      noite = <Info>[];
      json['noite'].forEach((v) {
        noite!.add(Info.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (manha != null) {
      data['manha'] = manha!.map((v) => v.toJson()).toList();
    }
    if (tarde != null) {
      data['tarde'] = tarde!.map((v) => v.toJson()).toList();
    }
    if (noite != null) {
      data['noite'] = noite!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Info {
  String? tempo;
  dynamic graus;

  Info({this.tempo, this.graus});

  Info.fromJson(Map<String, dynamic> json) {
    tempo = json['tempo'];
    graus = conversion(json['graus']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['tempo'] = tempo;
    data['graus'] = graus;
    return data;
  }

  String conversion(dynamic value) {
    if (value == null) {
      return '';
    } else if (value.runtimeType == int) {
      return value.toString();
    } else {
      return value;
    }
  }
}
