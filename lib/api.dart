import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:minidictionary/dummydata.dart';

class MyMealsCategory extends StatefulWidget {
  const MyMealsCategory({super.key});

  @override
  State<MyMealsCategory> createState() => _MyMealsCategoryState();
}

class _MyMealsCategoryState extends State<MyMealsCategory> {
  final url = "https://www.themealdb.com/api/json/v1/1/categories.php";
  List<MealCategory> allcategories = <MealCategory>[];
  void getFoodCategories() async {
    final response = await get(Uri.parse(url));
    final jsonData = jsonDecode(response.body);
    List meals = jsonData["categories"];
    setState(() {
      for (Map<String, dynamic> meal in meals) {
        allcategories.add(MealCategory.fromJson(meal));
      }
    });
  }

  @override
  void initState() {
    super.initState();
    getFoodCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Name & description'),
        backgroundColor: Colors.green,
        elevation: 0.0,
      ),
      body: ListView.builder(
          itemCount: allcategories.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                    ),
                    height: MediaQuery.of(context).size.height*0.15,
                    width: MediaQuery.of(context).size.width*1,
                    child: Row(
                      children: [
                        Text(
                          ' ${allcategories[index].idCategory}. ',
                        ),
                        Text(allcategories[index].strCategory),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width*0.5,
                            child: Image(image: NetworkImage(allcategories[index].strCategoryThumb)),
                          ),
                        ),
                        TextButton(
                          onPressed: (){},
                          child: Text(
                            'See description'
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          }
        )
     );
  }
}
