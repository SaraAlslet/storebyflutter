import 'package:flutter/material.dart';
import 'package:store/models/data.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'الاقسام',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'cairo',
          ),
        ),
        Container(
          //height: 120,
          //color:Colors.orange,
          child: FutureBuilder(
              future: getCategory(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Container(
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        List categories = snapshot.data;
                        var catTitle = categories[index]['cat_title'];
                        var imageUrl = categories[index]['image_url'];
                        return Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset('assets/images/categories/$imageUrl',width:70, height: 70 , fit:BoxFit.fill),
                            ),
                            Text(catTitle),
                          ],
                        );
                      },
                    ),
                  );
                }

                return CircularProgressIndicator();
              }),
        ),
      ],
    );
  }
}
