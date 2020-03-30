# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: '1@1.com', password:'123456!', name: 'A', 
    gender: '0', kid_gender: '1', birthdate: "1992-04-14", kid_birthdate: "2012-04-14")
User.create(email: '2@2.com', password:'123456!', name: 'B',
    gender: '0', kid_gender: '0', birthdate: "1991-04-14", kid_birthdate: "2013-04-14")
User.create(email: '3@3.com', password:'123456!', name: 'C',
    gender: '1', kid_gender: '1', birthdate: "1990-04-14", kid_birthdate: "2014-04-14")
User.create(email: '4@4.com', password:'123456!', name: 'D',
     gender: '0', kid_gender: '0', birthdate: "1989-04-14", kid_birthdate: "2015-04-14")
User.create(email: '5@5.com', password:'123456!', name: 'E',
    gender: '1', kid_gender: '1', birthdate: "1988-04-14", kid_birthdate: "2016-04-14")
User.create(email: '6@6.com', password:'123456!', name: 'F',
    gender: '0', kid_gender: '0', birthdate: "1987-04-14", kid_birthdate: "2017-04-14")
User.create(email: '7@7.com', password:'123456!', name: 'G',
    gender: '1', kid_gender: '1', birthdate: "1986-04-14", kid_birthdate: "2012-04-14")
User.create(email: '8@8.com', password:'123456!', name: 'H',
    gender: '0', kid_gender: '0', birthdate: "1985-04-14", kid_birthdate: "2013-04-14")
User.create(email: '9@9.com', password:'123456!', name: 'I',
     gender: '1', kid_gender: '1', birthdate: "1983-04-14", kid_birthdate: "2014-04-14")


Product.create(name: '유희왕', desc: 'aaa', sales_score: '100', first_class: '교구', second_class: '보드게임', third_class: '사고력')
Product.create(name: '뽀로로', desc: 'aaa', sales_score: '200', first_class: '교구', second_class: '장난감', third_class:'창의력')
Product.create(name: '아몬드봉봉', desc: 'aaa', sales_score: '300', first_class: '도서', second_class: '문제집', third_class:'사고력')
Product.create(name: '엄마는외계인', desc: 'aaa', sales_score: '400', first_class: '도서', second_class: '단행본', third_class:'논리력')
Product.create(name: '스크래치', desc: 'aaa', sales_score: '500', first_class: '교육프로그램', second_class: '초등용', third_class:'창의력')
Product.create(name: '엔트리', desc: 'aaa', sales_score: '600', first_class: '교육프로그램', second_class: '중등용', third_class:'문제해결력')

Review.create(product_id: '1', grade: '1', merits: '좋다', demerits: '나쁘다', user_id: '1')
Review.create(product_id: '1', grade: '2', merits: '좋다', demerits: '나쁘다', user_id: '2')
Review.create(product_id: '1', grade: '2', merits: '좋다', demerits: '나쁘다', user_id: '3')
Review.create(product_id: '1', grade: '2', merits: '좋다', demerits: '나쁘다', user_id: '4')
Review.create(product_id: '1', grade: '2', merits: '좋다', demerits: '나쁘다', user_id: '5')
Review.create(product_id: '1', grade: '4', merits: '좋다', demerits: '나쁘다', user_id: '6')

Review.create(product_id: '2', grade: '1', merits: '좋다', demerits: '나쁘다', user_id: '1')
Review.create(product_id: '2', grade: '1', merits: '좋다', demerits: '나쁘다', user_id: '2')
Review.create(product_id: '2', grade: '1', merits: '좋다', demerits: '나쁘다', user_id: '3')
Review.create(product_id: '2', grade: '1', merits: '좋다', demerits: '나쁘다', user_id: '4')
Review.create(product_id: '2', grade: '1', merits: '좋다', demerits: '나쁘다', user_id: '5')
Review.create(product_id: '2', grade: '4', merits: '좋다', demerits: '나쁘다', user_id: '6')

Review.create(product_id: '3', grade: '5', merits: '좋다', demerits: '나쁘다', user_id: '1')
Review.create(product_id: '3', grade: '2', merits: '좋다', demerits: '나쁘다', user_id: '2')
Review.create(product_id: '3', grade: '3', merits: '좋다', demerits: '나쁘다', user_id: '3')
Review.create(product_id: '3', grade: '4', merits: '좋다', demerits: '나쁘다', user_id: '4')
Review.create(product_id: '3', grade: '5', merits: '좋다', demerits: '나쁘다', user_id: '3')
Review.create(product_id: '3', grade: '4', merits: '좋다', demerits: '나쁘다', user_id: '4')

Review.create(product_id: '4', grade: '3', merits: '좋다', demerits: '나쁘다', user_id: '1')
Review.create(product_id: '4', grade: '2', merits: '좋다', demerits: '나쁘다', user_id: '2')
Review.create(product_id: '4', grade: '3', merits: '좋다', demerits: '나쁘다', user_id: '3')
Review.create(product_id: '4', grade: '4', merits: '좋다', demerits: '나쁘다', user_id: '4')
Review.create(product_id: '4', grade: '5', merits: '좋다', demerits: '나쁘다', user_id: '5')
Review.create(product_id: '4', grade: '4', merits: '좋다', demerits: '나쁘다', user_id: '6')

Review.create(product_id: '5', grade: '2', merits: '좋다', demerits: '나쁘다', user_id: '1')
Review.create(product_id: '5', grade: '2', merits: '좋다', demerits: '나쁘다', user_id: '2')
Review.create(product_id: '5', grade: '3', merits: '좋다', demerits: '나쁘다', user_id: '3')
Review.create(product_id: '5', grade: '5', merits: '좋다', demerits: '나쁘다', user_id: '4')
Review.create(product_id: '5', grade: '5', merits: '좋다', demerits: '나쁘다', user_id: '5')
Review.create(product_id: '5', grade: '4', merits: '좋다', demerits: '나쁘다', user_id: '6')

