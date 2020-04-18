class Book {
  String title,
      writer,
      price,
      image,
      description =
          'Selamat datang';
 
  double rating;

  Book(
      this.title, this.price, this.image, this.rating);
}

final List<Book> books = [
  Book('sejarah indonesia', 
      'Rp 50.000', 'assets/sejarah.jpg', 5.0),
  Book('pendidikan Kewarganegaraan',  'Rp 55.000',
      'assets/pkn.jpg', 5.0),
  Book('Bahasa Indo', 'Rp 60.000', 'assets/indo.jpg', 5.0),
  Book('Biologi',  'Rp 58.000',
      'assets/biologi.jpg', 5.0),
  Book('Seni Budaya','Rp 90.000', 'assets/budaya.jpg', 5.0),
  Book('Matematika', 'Rp 57.000', 'assets/matematika.jpg', 5.0),
  
];