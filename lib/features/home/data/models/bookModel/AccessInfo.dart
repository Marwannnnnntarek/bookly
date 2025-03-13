import 'package:bookly/features/home/data/models/bookModel/Epub.dart';

class AccessInfo {
    String country;
    String viewability;
    bool embeddable;
    bool publicDomain;
    String textToSpeechPermission;
    Epub epub;
    Epub pdf;
    String webReaderLink;
    String accessViewStatus;
    bool quoteSharingAllowed;

    AccessInfo({
        required this.country,
        required this.viewability,
        required this.embeddable,
        required this.publicDomain,
        required this.textToSpeechPermission,
        required this.epub,
        required this.pdf,
        required this.webReaderLink,
        required this.accessViewStatus,
        required this.quoteSharingAllowed,
    });

}