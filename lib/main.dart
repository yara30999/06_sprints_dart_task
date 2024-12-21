import 'package:sprints_dart_task_06/book_class.dart';
import 'package:sprints_dart_task_06/library_class.dart';
import 'package:sprints_dart_task_06/user_class.dart';

void main() {
  var library = Library();

  library.addBook(Book(1, "The Girl on the train"));
  library.addBook(Book(2, "The hunger games"));
  library.addBook(Book(3, "Sherlock Holmes"));

  library.addUser(User(1, "Yara"));
  library.addUser(User(2, "Noor"));

  print('=== Initial Library State ===');
  library.displayInfo();

  print('=== Performing Operations ===');
  library.borrowBook(1, 2);
  library.borrowBook(2, 1);
  library.borrowBook(1, 2);
  library.returnBook(2);
  library.borrowBook(2, 2);

  print('=== Final Library State ===');
  library.displayInfo();
}
