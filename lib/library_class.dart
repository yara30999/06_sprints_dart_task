import 'package:sprints_dart_task_06/book_class.dart';
import 'package:sprints_dart_task_06/user_class.dart';

class Library {
  List<Book> books;
  List<User> users;

  Library()
      : books = [],
        users = [];

  void addBook(Book book) {
    books.add(book);
    print('Book "${book.title}" added successfully.');
  }

  void addUser(User user) {
    users.add(user);
    print('User "${user.name}" added successfully.');
  }

  bool borrowBook(int userId, int bookId) {
    // Find the user and  the book
    User user = users.firstWhere((u) => u.id == userId);
    Book book = books.firstWhere((b) => b.id == bookId);

    if (book.borrowed) {
      print('Sorry Book is already borrowed.');
      return false;
    }

    book.borrowed = true;
    print('Book "${book.title}" has been borrowed by ${user.name}.');
    return true;
  }

  bool returnBook(int bookId) {
    // Find the book
    Book book = books.firstWhere((b) => b.id == bookId);

    if (!book.borrowed) {
      print('You haven\'t borrowed that book.');
      return false;
    }

    book.borrowed = false;
    print('Book "${book.title}" has been returned.');
    return true;
  }

  void displayInfo() {
    print('\n=== Library Information ===');
    print('\nRegistered Users:');
    for (var user in users) {
      user.displayInfo();
    }

    print('\nBooks Collection:');
    for (var book in books) {
      book.displayInfo();
    }
  }
}
