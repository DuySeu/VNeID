class Information {
  late int id;
  String name;
  String date;
  String infoNo;
  String location;
  late Sex sex;
  late InfoType infoType;
  Information(
      {required this.name,
      required this.date,
      required this.infoNo,
      required this.location,
      required this.sex,
      required this.infoType});
}

enum Sex { male, female }
enum InfoType { id, carlisence, bhyt }
