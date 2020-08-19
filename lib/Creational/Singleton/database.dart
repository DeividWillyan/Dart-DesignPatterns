class Database {
  Database._internal();
  static final Database _singleton = Database._internal();
  factory Database() => _singleton;
}
