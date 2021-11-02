import 'package:flutter/material.dart';
import 'package:store/pages/widget/carousel.dart';
import 'package:store/pages/widget/categories_widget.dart';
import 'package:store/pages/widget/categoryModle.dart';
import 'package:store/pages/widget/letest_products.dart';
import 'package:store/pages/widget/mydrawer.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color.fromRGBO(11, 32, 139, 1),
        ),
        title: Image.asset(
          'assets/images/logo.jpg',
          height: 40,
        ),
        centerTitle: true,
        elevation: 2,
        backgroundColor: Colors.white,
        actions: [
          IconButton(icon: Icon(Icons.shopping_basket), onPressed: () {}),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              return showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('محتاج ايه؟'),
                    content: TextFormField(
                      decoration: InputDecoration(hintText: 'بتدور على ايه ؟'),
                    ),
                    actions: [
                      FlatButton(
                        onPressed: () {},
                        child: Text('ابحث هنا'),
                      ),
                      FlatButton(
                        onPressed: () {
                          return Navigator.of(context).pop();
                        },
                        child: Text('إلغاء'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
      drawer: MyDrawer(),
      body: ListView(
        children: [
          Slide(),
          CategoriesWidget(),
          LetesetProdacts(),
        ],
      ),
    );
  }
}
