class JobPost{
  final String image;
  final String time;
  final String title;
  final double price;
  final bool favourite;
  JobPost({required this.image, required this.time, required this.title, required this.price,required this.favourite });

  JobPost copyWith({
    bool? favorite
  })
  {
    return JobPost(image: this.image, time: this.time, title: this.title, price: this.price, favourite: favorite??this.favourite);
  }
}