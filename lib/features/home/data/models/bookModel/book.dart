import 'package:bookly/features/home/data/models/bookModel/AccessInfo.dart';
import 'package:bookly/features/home/data/models/bookModel/SaleInfo.dart';
import 'package:bookly/features/home/data/models/bookModel/SearchInfo.dart';
import 'package:bookly/features/home/data/models/bookModel/VolumeInfo.dart';

class Boook {
    String kind;
    String id;
    String etag;
    String selfLink;
    VolumeInfo volumeInfo;
    SaleInfo saleInfo;
    AccessInfo accessInfo;
    SearchInfo searchInfo;

    Boook({
        required this.kind,
        required this.id,
        required this.etag,
        required this.selfLink,
        required this.volumeInfo,
        required this.saleInfo,
        required this.accessInfo,
        required this.searchInfo,
    });

}