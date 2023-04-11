
import 'package:flutter/material.dart';
import 'package:getx/widgets/visitsSingleCard.dart';
import '../models/visit.dart';

class VisitsGridView extends StatelessWidget {
  final List<Visit> visits;


  const VisitsGridView({required this.visits});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemCount: visits.length,
        itemBuilder: (BuildContext builderContext,index){
          return VisitCard( visit: visits[index]);
        }
    );

  }
}


