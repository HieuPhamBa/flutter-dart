import 'dart:io';
import 'dart:convert';
import '../tiengviet-master/lib/tiengviet.dart';

mixin Supplier {
  String _supplierId, _supplierAddress, _supplierName;

  String get supplierId => _supplierId;
  set supplierId(String value) => {_supplierId = value};
  String get supplierAddress => _supplierAddress;
  set supplierAddress(String value) => {_supplierAddress = value};
  String get supplierName => _supplierName;
  set supplierName(String value) => {_supplierName = value};
}

mixin Author {
  String _authorId, _authorName;

  String get authorId => _authorId;
  set authorId(String value) => {_authorId = value};
  String get authorName => _authorName;
  set authorName(String value) => {_authorName = value};
}

class Book with Author, Supplier {
  String _bookId, _bookName, _categoryName;
  int _numOfEdition, _publishYear;
  double _priceBook;

  String get bookId => _bookId;
  set bookId(String value) => {_bookId = value};
  String get bookName => _bookName;
  set bookName(String value) => {_bookName = value};
  String get categoryName => _categoryName;
  set categoryName(String value) => {_categoryName = value};

  int get numOfEdition => _numOfEdition;
  set numOfEdition(int value) => {_numOfEdition = value};

  int get publishYear => _publishYear;
  set publishYear(int value) => {_publishYear = value};

  double get priceBook => _priceBook;
  set priceBook(double value) => {_priceBook = value};

  Book(bookId, bookName, cateName, numOfEdit, publishYear, priceBook,
      supplierId, supplierName, supplierAdd, authorId, authorName) {
    this.authorId = authorId;
    this.authorName = authorName;

    this.supplierAddress = supplierAdd;
    this.supplierId = supplierId;
    this.supplierName = supplierName;

    this.bookId = bookId;
    this.bookName = bookName;
    this.categoryName = cateName;
    this.numOfEdition = numOfEdit;
    this.publishYear = publishYear;
    this.priceBook = priceBook;
  }
}

class DataAction {
  static var _dataList = List<Book>();

  DataAction() {}

  List<Book> addDataToList() {
    List<Book> list = new List<Book>();
    list.add(new Book('S-0001', 'Dế mèn phiêu lưu kí', 'Thiếu nhi', 4, 2007,
        49.000, ' XB-0023', 'Thiếu nhi', 'Ha Noi', 'TG-0043', 'To Hoai'));

    list.add(new Book('S-0033', 'Mắt biệc', 'Tình cảm', 54, 2012, 58.000,
        ' XB-0225', 'Thiếu nhi', 'Ha Noi', 'TG-0043', 'To Hoai'));

    list.add(new Book('S-0009', 'Tony buổi sáng-trên đường băng', 'Kỹ năng', 4,
        2018, 52.000, ' XB-0023', 'NXB-trẻ', 'Ha Noi', 'TG-0087', 'Tony'));

    list.add(new Book(
        'S-0386',
        ' Tuổi Trẻ Đáng Giá Bao Nhiêu',
        'Kỹ năng',
        1,
        2020,
        52.000,
        ' XB-0748',
        'Nhã Nam',
        'Ha Noi',
        'TG-4336',
        'Đặng Nguyễn Đông Vy'));

    list.add(new Book(
        'S-94538',
        ' Cuộc Sống "Đếch" Giống Cuộc Đời',
        'Kỹ năng',
        1,
        2020,
        63.000,
        ' XB-0748',
        'NXB Hà Nội',
        'Ha Noi',
        'TG-0087',
        ' Hoàng Hải Nguyễn'));

    list.add(new Book('S-0075', ' Tôi Là Bêtô', 'truyện dài', 45, 2007, 39.000,
        ' XB-0225', 'NXB-trẻ', 'Ha Noi', 'TG-0005', 'Nguyễn Nhật Ánh'));

    list.add(new Book('S-0538', 'Cô Gái Đến Từ Hôm Qua', 'truyện dài', 39, 2007,
        50.000, ' XB-0225', 'NXB-trẻ', 'Ha Noi', 'TG-0005', 'Nguyễn Nhật Ánh'));

    return list;
  }

  List<Book> searchBookByName(List<Book> listBook, String key) {
    if (listBook != null) {
      List<Book> listSearch = listBook
          .where((obj) =>
              tiengviet(obj.bookName).toLowerCase().contains(tiengviet(key).toLowerCase()) ||
              tiengviet(obj.authorName).toLowerCase().contains(tiengviet(key).toLowerCase()) ||
              tiengviet(obj.supplierName).toLowerCase().contains(tiengviet(key).toLowerCase()))
          .toList();

      if (listSearch == null) {
        return new List<Book>();
      }
      return listSearch;
    }
    return new List<Book>();
  }

  List<Book> searchBookByPrice(List<Book> listBook, double price) {
    if (listBook != null) {
      List<Book> listSearch =
          listBook.where((obj) => obj.priceBook <= price).toList();

      if (listSearch == null) {
        return new List<Book>();
      }
      return listSearch;
    }
    return new List<Book>();
  }

  List<Book> updateBook(List<Book> listBook, String bookId) {
    if (listBook != null) {
      Book currBook = listBook.where((obj) => obj.bookId == bookId).first;

      if (currBook != null) {
        print('Mời mức giá bạn muốn tìm: \n');
        String strPrice =
            stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
        double price = double.parse(strPrice);
        int indexBook = listBook.indexOf(currBook);

        currBook.priceBook = price;
        listBook[indexBook] = currBook;
      }
      return listBook;
    }
    return new List<Book>();
  }

  void printMenu() {
    print('/----------------------Quan ly sach------------------/\n');
    print('/1. Tim theo tên sách, tên nhà xuất bản, tên tác giả./\n');
    print('/2. Tim theo giá.                                    /\n');
    print('/3. cập nhật giá.                                    /\n');
    print('/----------------------------------------------------/\n');
  }

  void printListBook(List<Book> list) {
    if (list != null && list.length != 0) {
      list.forEach((element) => print("Tên: " +
          element.bookName +
          "  --- Giá: " +
          element.priceBook.toString()));
    } else {
      print('Khong tim thấy cuốn sách nào');
    }
  }

  void actionHandle() {
    _dataList = addDataToList();
    while (true) {
      List<Book> lstBook = new List();
      printMenu();
      print('Moi chon: ');
      String inputKey =
          stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
      switch (inputKey) {
        case '1':
          print('Mời nhập tên bạn muốn tìm: \n');
          String nameInput =
              stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
          lstBook = searchBookByName(_dataList, nameInput);
          printListBook(lstBook);
          break;
        case '2':
          print('Mời mức giá bạn muốn tìm: \n');
          String strPrice =
              stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
          double price = double.parse(strPrice);
          lstBook = searchBookByPrice(_dataList, price);
          printListBook(lstBook);
          break;
        case '3':
          print('Mời nhập mã sách: \n');
          String bookId =
              stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
          lstBook = updateBook(_dataList, bookId);
          printListBook(lstBook);
          break;
        default:
          break;
      }
    }
  }
}

void main() async {
  DataAction action = new DataAction();
  action.actionHandle();
}

/*&
void main(){
  stdout.write("Enter your name : ");
  var name = stdin.readLineSync();
  stdout.write(name);
}*/
