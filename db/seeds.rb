# encoding: UTF-8

User.delete_all
user0 = User.create(name: "李紫豪", email: "lizihao945@gmail.com",
	password: 123123, password_confirmation: 123123, image_url: 'james_avatar.gif')
user1 = User.create(name: "张译元", email: "zyy@gmail.com",
	password: 123123, password_confirmation: 123123, image_url: 'monchhichi_avatar.png')
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
food0 = Food.create(name: "法式焗蜗牛", description: "简直就是人间美味的最高境界", image_url: "food0.jpg", main_user: user0,
	detail: "法国人早在几百年前就知道了蜗牛的美味，他们从那时起开始食用蜗牛，并以蜗牛为原料制作各种菜肴。由于原先生活在勃艮第地区的野生蜗牛非常多，所以当时蜗牛只是法国农民餐桌上的家常菜而已。但是，随着人们食量的增大，以及杀虫剂在农业中的广泛使用，几乎所有的野生蜗牛都被杀死了，蜗牛越来越稀少，价格自然也就随着行情水涨船高了。现在，法国人开始人工饲养蜗牛，但蜗牛仍是供不应求，如今就只能从匈牙利进口蜗牛来满足法国人的口舌之欲。  
\n\n
正是因为历史悠久和原料稀少，蜗牛在法国就变得愈发名贵，最终成为有钱人在隆重场合才能享用的佳肴，并升级成为法国的“国菜”。  
\n\n
食用蜗牛的工具和礼仪  
\n\n
食用蜗牛需要配备钳子和双齿叉。就餐时，用右手拿钳子夹住蜗牛壳，左手用叉子将蜗牛肉挑出食用。吃蜗牛没有特别的礼仪讲究，但是蜗牛最好趁热吃，这样蜗牛肉才会比较容易从壳内取出，否则可能就要费些力气了。当然，只要熟练使用钳子和叉子，即使是蜗牛这样的带壳动物，吃起来也同样可以姿态优雅，像朱丽娅 罗伯茨在电影《漂亮女人》中表演的那种蜗牛飞出的夸张场面，在法餐厅中几乎从未出现过。")
food1 = Food.create(name: "日式料理", description: "看着就流口水", image_url: "food1.jpg", main_user: user1)
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