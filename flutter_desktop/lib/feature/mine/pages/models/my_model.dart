class MineModel{
  String title;
  String imagePath;//2 WI-FI  0 Ethernet  1 3G/4G 根据物模型
  String text;

  MineModel({
    required this.title,
    this.imagePath = '',
    this.text = '',
  }) : super();

}