List<Map<String, dynamic>> replaceMap(List<Map<String, dynamic>> currentList, Map<String, dynamic> newVal, String key) {
  List<Map<String, dynamic>> tmp = currentList;

  return tmp = tmp.map((e) {
    if (key == e.keys.first) {
      return {...e, key: newVal.values.first};
    }
    return e;
  }).toList();
}
