import 'package:ease_the_error/activities/activities_provider/activities_provider.dart';
import 'package:ease_the_error/activities/activities_widget/activity_tile.dart';
import 'package:flutter/material.dart';

class ActivityGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final activitiesList = ActivityProvider().activitiesList;

    return GridView.builder(
      physics: ScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      padding: const EdgeInsets.all(10),
      itemCount: activitiesList.length,
      itemBuilder: (ctx, index) => ActivityTile(
        text: activitiesList[index].text,
        imageAsset: activitiesList[index].asssetImage,
        materialRoute: activitiesList[index].materialRoute,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2.5,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
