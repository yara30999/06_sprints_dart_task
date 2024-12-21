class User {
  final int id;
  final String name;

  User(this.id, this.name);

  void displayInfo() {
    print('User ID: $id');
    print('Name: $name');
    print('------------------------');
  }
}
