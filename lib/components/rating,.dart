import 'package:flutter/material.dart';

Widget Rating({double rating, Color color:Colors.white}) {
  return Container(
    padding: EdgeInsets.zero,
    margin: EdgeInsets.zero,
    alignment: Alignment.topLeft,
    height: 18,
    child: Row(
      children: [
        ListView.builder(
            shrinkWrap: true,
            itemCount: 5,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              if (rating > index && rating < index + 1)
                return Icon(Icons.star_half, color: Colors.yellow, size: 16);
              else if (index < rating)
                return Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 16,
                );

              return Icon(Icons.star_border, color: Colors.yellow, size: 16);
            }),
            SizedBox(width: 8,),
        Text(
          rating.toString(),
          style: TextStyle(
              color: color, fontSize: 14, fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}
