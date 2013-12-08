# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# encoding: UTF-8
FoodCategory.delete_all
FoodCategory.create(name: "test1")
FoodCategory.create(name: "test2")
FoodCategory.create(name: "test3")
FoodCategory.create(name: "test4")