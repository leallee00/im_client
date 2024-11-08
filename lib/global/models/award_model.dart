class AwardModel {
  AwardModel({
    this.code,
    this.awardsUrl,
    this.name,
    this.desc,
    this.icon,
  });

  AwardModel.fromJson(Map<String, dynamic> json) {
    code = json['code'] as String?;
    awardsUrl = json['awardsUrl'] as String?;
  }

  String? code;
  String? awardsUrl;
  String? name;
  String? desc;
  String? icon;
}
