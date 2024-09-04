class
    FirstAPIModel
{
  int? user,
  id;
  String? title,
  body;

  FirstAPIModel({this.user, this.id, this.title, this.body});
  factory FirstAPIModel.mapToModel(m1)
  {
    return FirstAPIModel(title:
    m1["title"]
    ,id: m1["id"],
    user: m1["userId"],
        body:m1["body"] );

  }
}