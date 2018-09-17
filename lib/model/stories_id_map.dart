class StoriesIdMap {
  List responseJson;

  StoriesIdMap(this.responseJson);

  getType() {
    Type type = responseJson.runtimeType;
    print('TYPE OF RESPONSE: ${type}');
    responseJson.forEach((id){
      print(id.toString());
    });
  }
}
