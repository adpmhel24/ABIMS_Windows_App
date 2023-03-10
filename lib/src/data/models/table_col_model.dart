class ColumnName<T> {
  String name;
  double width;
  T value;

  ColumnName({required this.name, required this.width, required this.value});
}

class ColumnModel {
  final String colName;
  double width;
  String mapName;

  ColumnModel({
    required this.colName,
    required this.width,
    required this.mapName,
  });
}
