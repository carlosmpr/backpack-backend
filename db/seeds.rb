# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

# #####Locations ###############
Location.create(name:"New York" , country:'USA')
Location.create(name:"Florida" , country:'USA')
Location.create(name:"Mexico" , country:'MX')
Location.create(name:"Cabarete", country:'DR')
###############
Activity.create(location_id:1, name:"Red Mountain Hiking", description:'Discover the red mountains with adventures hiking', category:'hiking', state:"Buffalo", directions:'542 84nd')
Activity.create(location_id:2, name:"Miami beach", description:'Come to the beautifull beach of miami', category:'swimming', state:"Florida", directions:'600 850 nd')
Activity.create(location_id:3, name:"Cancun Beach", description:'Discover Cancun  the beautifull beach of Mexico', category:'swimming', state:"Cancun", directions:'900 700 nd')
Activity.create(location_id:4, name:"Pico duarte", description:'Explore the pico duarte', category:'hiking', state:"Jarabacoa", directions:'1000 8000 700 nd')

############# UserCreate #########
User.create(name:"Carlos", last_name:'Polanco', email:'carlos@email.com', phone:"999-999-9999", password:"carlosPass", swimming:true, hiking:true, walking:true, eating:true, touring:true , camping:true)
User.create(name:"Jeff", last_name:'Bezos', email:'Jeff@email.com', phone:"999-999-9999", password:"jeffPass", swimming:false, hiking:true, walking:true, eating:false, touring:true , camping:true)


# #####UserActivities
UserActivity.create(user_id:1, activity_id:1 , date:'8/5/2022')
UserActivity.create(user_id:1, activity_id:2 , date:'8/5/2022')
UserActivity.create(user_id:2, activity_id:3 , date:'7/4/2022')
UserActivity.create(user_id:2, activity_id:4 , date:'7/4/2022')


###############ActivityReview
ActivityReview.create(activity_id:1,  user_id:1, comment:'Amazing place')
ActivityReview.create(activity_id:2,  user_id:1, comment:'Incredible place')



################UserFriends
UserFriend.create(user_id:1, friend_id:2)
UserFriend.create(user_id:2, friend_id:1)



########### FriendsGoing
FriendsGoing.create(user_activity_id:1 , user_friend_id:1)


###############
ChatRoom.create(user_id:1 , user_id2:2)

Message.create(chat_room_id:1 , user_id:1 , message:'KLK Bezos')
Message.create(chat_room_id:1 , user_id:2 , message:'KLK Manito')
Message.create(chat_room_id:1 , user_id:2 , message:'Aqui en el Espacio')
