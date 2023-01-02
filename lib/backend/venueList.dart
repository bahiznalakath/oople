import 'package:untitled/backend/datamodels/venuedatamodel.dart';


List<venueDatamodel> venueList = [];

void addVenue(String vname, String vlocation, String vimage, String vprice, String vcategory, int vid){
  venueList.add(venueDatamodel(vname, vlocation, vimage, vprice, vcategory, vid));
}