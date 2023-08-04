class WebtoonModel {
  final String title, thumb, id;

  WebtoonModel.fromJson(Map<String,dynamic> json) :
  title = json['title'],
  thumb = json['thumb'],
  id = json['thumb'];
  // WebtoonModel({
  //   required this.title,
  //   required this.thumb,
  //   required this.id,
  // });
}
