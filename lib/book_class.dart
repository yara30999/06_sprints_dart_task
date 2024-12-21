class Book {
  final int id;
  final String title;
  bool borrowed;

  Book(this.id, this.title) : borrowed = false;

  void displayInfo() {
    print('Book ID: $id');
    print('Title: $title');
    print('Status: ${borrowed ? "Borrowed" : "Available"}');
    print('------------------------');
  }
}
