
import 'package:flutter/material.dart';
import '../models/visit.dart';



class VisitCard extends StatefulWidget {

  final Visit visit;

  const VisitCard({
    required this.visit,
  });

  @override
  State<VisitCard> createState() => _VisitCardState();
}

class _VisitCardState extends State<VisitCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(widget.visit.trxDate!),
        Text(widget.visit.billLocation!),
        Text(widget.visit.episodeNumber!),
        Text(widget.visit.patentName!),
        Text(widget.visit.suffix!),
        Text(widget.visit.description!),
      ],
    );
  }
}



