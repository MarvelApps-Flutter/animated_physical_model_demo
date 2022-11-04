class ListModelData {
  String? index;
  String? title;

  ListModelData({this.index, this.title});
}

List<ListModelData> listData = [
  ListModelData(index: "1.", title: "Car"),
  ListModelData(index: "2.", title: "Exterior"),
  ListModelData(index: "3.", title: "Interior"),
  ListModelData(index: "4.", title: "Autopilot")
];
