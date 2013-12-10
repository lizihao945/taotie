# encoding: UTF-8
FoodCategory.delete_all
food_category1 = FoodCategory.create(name: "粤菜")
food_category2 = FoodCategory.create(name: "川菜")
food_category3 = FoodCategory.create(name: "西餐")
food_category4 = FoodCategory.create(name: "甜点")
food_category5 = FoodCategory.create(name: "小吃")
food_category6 = FoodCategory.create(name: "甜品")
food_category7 = FoodCategory.create(name: "家常菜")
food_category8 = FoodCategory.create(name: "宴请")
food_category9 = FoodCategory.create(name: "快餐")
food_category10 = FoodCategory.create(name: "人间极品")

Food.delete_all
food1 = Food.create(name: "法式焗蜗牛", description: "简直就是人间美味的最高境界")

FoodFoodCategoryship.delete_all
FoodFoodCategoryship.create(food_id: food1.id, food_category_id: food_category3.id)
FoodFoodCategoryship.create(food_id: food1.id, food_category_id: food_category8.id)
FoodFoodCategoryship.create(food_id: food1.id, food_category_id: food_category10.id)
