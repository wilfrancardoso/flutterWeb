import 'package:web_flutter/core/model/tag.dart';

class Processo {
  String name;
  String protocolNumber;
  String subject;
  List<Tag> tags = [];
  String date;
  bool hasAttachment;

  Processo({
    this.name = "",
    this.protocolNumber = "",
    this.subject = "",
    this.tags,
    this.date,
    this.hasAttachment = false,
  });
}
