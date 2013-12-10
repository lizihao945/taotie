# encoding: UTF-8

User.delete_all
user0 = User.create(name: "李紫豪", email: "lizihao945@gmail.com",
	password: 123123, password_confirmation: 123123, image_url: 'default_avatar.png')
user1 = User.create(name: "张译元", email: "zyy@gmail.com",
	password: 123123, password_confirmation: 123123, image_url: 'default_avatar.png')
user2 = User.create(name: "刘沅畅", email: "lyc@gmail.com",
	password: 123123, password_confirmation: 123123, image_url: 'default_avatar.png')
user3 = User.create(name: "匡麒", email: "kq@gmail.com",
	password: 123123, password_confirmation: 123123, image_url: 'default_avatar.png')

FoodCategory.delete_all
food_category0 = FoodCategory.create(name: "江南菜")
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
food0 = Food.create(name: "法式焗蜗牛", description: "简直就是人间美味的最高境界", image_url: "food0.jpg", main_user: user0)
food1 = Food.create(name: "日式料理", description: "看着就流口水", image_url: "food1.jpg")
food2 = Food.create(name: "蘑菇肉", description: "难以置信！这么简单的原料也能做出上等的菜肴", image_url: "food2.jpg")

FoodFoodCategoryship.delete_all
FoodFoodCategoryship.create(food_id: food1.id, food_category_id: food_category3.id)
FoodFoodCategoryship.create(food_id: food1.id, food_category_id: food_category8.id)
FoodFoodCategoryship.create(food_id: food1.id, food_category_id: food_category10.id)

Restaurant.delete_all
restaurant0 = Restaurant.create(name: "北航合一楼", description: "味道好极了，物美价廉，学生时代佳选！", user: user1)

UserFoodship.delete_all
UserFoodship.create(user: user0, food: food0)
UserFoodship.create(user: user1, food: food0)