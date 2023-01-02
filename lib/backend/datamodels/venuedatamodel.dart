import 'package:untitled/backend/venueList.dart';

class venueDatamodel {
  String venueName = '';
  String venueLocation = '';
  String venueImage = '';
  String venuePrice = '';
  String venueCategory = '';
  int venueId = 0;

  venueDatamodel(String venueName, String venueLocation, String venueImage,
      String venuePrice, String venueCategory, int venueId) {
    this.venueName = venueName;
    this.venueLocation = venueLocation;
    this.venueImage = venueImage;
    this.venuePrice = venuePrice;
    this.venueCategory = venueCategory;
    this.venueId = venueId;
    confirmvenueAdd();
  }
  void confirmvenueAdd(){
    print('venue added');
  }
}




