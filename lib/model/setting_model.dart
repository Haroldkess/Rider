class ProfileSettings {
  String title;
  String svgPath;
  ProfileSettings({required this.svgPath, required this.title});
}

List<ProfileSettings> setting = [
  ProfileSettings(
      svgPath: "assets/icon/track_delivery.svg", title: "Track Delivery"),
  ProfileSettings(
      svgPath: "assets/icon/location.svg", title: "Delivery Addresses"),
  ProfileSettings(svgPath: "assets/icon/help.svg", title: "Help & Support"),
  ProfileSettings(
      svgPath: "assets/icon/prime.svg", title: "Prime Subscription"),
  ProfileSettings(svgPath: "assets/icon/Setting.svg", title: "Settings"),
];

class DrawerModel {
  String title;
  String svgPath;
  DrawerModel({required this.svgPath, required this.title});
}

List<DrawerModel> drawerTiles = [
  DrawerModel(svgPath: "assets/icon/earning.svg", title: "Earnings"),
  DrawerModel(
      svgPath: "assets/icon/location.svg", title: "Delivery History"),
  DrawerModel(svgPath: "assets/icon/help.svg", title: "Help & Support"),
  DrawerModel(svgPath: "assets/icon/Setting.svg", title: "Settings"),
];
