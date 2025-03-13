import 'package:bookly/features/home/data/models/bookModel/ImageLinks.dart';
import 'package:bookly/features/home/data/models/bookModel/IndustryIdentifier.dart';
import 'package:bookly/features/home/data/models/bookModel/PanelizationSummary.dart';
import 'package:bookly/features/home/data/models/bookModel/ReadingModes.dart';

class VolumeInfo {
    String title;
    List<String> authors;
    String publisher;
    DateTime publishedDate;
    String description;
    List<IndustryIdentifier> industryIdentifiers;
    ReadingModes readingModes;
    int pageCount;
    String printType;
    List<String> categories;
    int averageRating;
    int ratingsCount;
    String maturityRating;
    bool allowAnonLogging;
    String contentVersion;
    PanelizationSummary panelizationSummary;
    ImageLinks imageLinks;
    String language;
    String previewLink;
    String infoLink;
    String canonicalVolumeLink;

    VolumeInfo({
        required this.title,
        required this.authors,
        required this.publisher,
        required this.publishedDate,
        required this.description,
        required this.industryIdentifiers,
        required this.readingModes,
        required this.pageCount,
        required this.printType,
        required this.categories,
        required this.averageRating,
        required this.ratingsCount,
        required this.maturityRating,
        required this.allowAnonLogging,
        required this.contentVersion,
        required this.panelizationSummary,
        required this.imageLinks,
        required this.language,
        required this.previewLink,
        required this.infoLink,
        required this.canonicalVolumeLink,
    });

}
