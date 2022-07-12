import 'dart:convert';

List<ModelRecipes> modelRecipesFromJson(String str) {
  return List<ModelRecipes>.from(json.decode(str).map((item) {
    return ModelRecipes.fromJson(item);
  }));
}

String modelRecipesToJson(List<ModelRecipes> data) {
  return json.encode(List<dynamic>.from(data.map((item) {
    return item.toJson();
  })));
}

class Data {
  String? cheese;
  String? roti;
  String? daging;

  Data({
    this.cheese,
    this.roti,
    this.daging,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      cheese: json['cheese'],
      roti: json['roti'],
      daging: json['daging'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'cheese': cheese,
      'roti': roti,
      'daging': daging,
    };
  }
}

class ModelRecipes {
  bool? success;
  Data? data;

  ModelRecipes({
    this.success,
    this.data,
  });

  factory ModelRecipes.fromJson(Map<String, dynamic> json) {
    return ModelRecipes(
      success: json['success'],
      data: Data.fromJson(json['data']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'data': data?.toJson(),
    };
  }
}
