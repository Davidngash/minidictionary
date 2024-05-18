class MealCategory {
  final String idCategory;
  final String strCategory;
  final String strCategoryThumb;
  final String strCategoryDescription;

  MealCategory({
    required this.idCategory,
    required this.strCategory,
    required this.strCategoryThumb,
    required this.strCategoryDescription,
  });

  factory MealCategory.fromJson(Map<String, dynamic> json){
    return MealCategory(
      idCategory: json["idCategory"], 
      strCategory: json["strCategory"], 
      strCategoryThumb: json["strCategoryThumb"], 
      strCategoryDescription: json["strCategoryDescription"],
    );
  }
}

  // {
  //   "idCategory": "1",
  //   "strCategory": "Beef",
  //   "strCategoryThumb": "https://www.themealdb.com/images/category/beef.png",
  //   "strCategoryDescription":
  //       "Beef is the culinary name for meat from cattle, particularly skeletal muscle. Humans have been eating beef since prehistoric times.[1] Beef is a source of high-quality protein and essential nutrients.[2]"
  // },
