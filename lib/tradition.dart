

import 'package:traditions_ui/utils/images.dart';

class Tradition{

  String location;
  String imgPath;

  Tradition({this.location,this.imgPath});
}


List<Tradition> list_tradition = [
  Tradition(
    location: 'Kolkata, India',
    imgPath: Images.KOLKATA
  ),
  Tradition(
    imgPath: Images.DUPREE,
    location: 'Dupree, United States',
  ),
  Tradition(
    imgPath: Images.OSAKA,
    location: 'OSAKA, Japan',
  ),
  Tradition(
    imgPath: Images.BALI,
    location: 'Bali, Indonesia',
  ),
  Tradition(
    imgPath: Images.DUPREE,
    location: 'Hiroshima, Japan',
  ),


];


