# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(name: "Gonzalo", email: "therialnews@gmail.com", password: "123456", password_confirmation: "123456", role: 1)
User.create(name: "Juanito", email: "juanito@gmail.com", password: "123456", password_confirmation: "123456")
User.create(name: "Pedrito", email: "pedrito@gmail.com", password: "123456", password_confirmation: "123456", role: 2)
User.create(name: "Carlitos", email: "carlitos@gmail.com", password: "123456", password_confirmation: "123456")

Trnpost.create(image: "https://www.thebalancemoney.com/thmb/AmVfGVPTkOqXRlN3gFRGURDs3cs=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Screen_Shot_2019-06-05_at_1.26.32_PM-dac1adde23c240a4825240d08bd977b0.jpg" , title: "Stonks", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", user_id: 1)
Trnpost.create(image: "https://www.thebalancemoney.com/thmb/u0GmEAYrt2qBrsLptqfGEDLk8C0=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/confusedstonks-cb743905a15b41ada79d4d3e4ecb5b94.jpg" , title: "Confused Stonks", description: "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", user_id: 1)
Trnpost.create(image: "https://www.thebalancemoney.com/thmb/0Uh4b14MWcjAwO5WnGI-xaGjpqU=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/notstonks-7d82ebccce6d4960b42b2bc6c1670463.jpeg" , title: "Non Stonks", description: "Nisl condimentum id venenatis a condimentum vitae. Vulputate dignissim suspendisse in est ante. Adipiscing commodo elit at imperdiet. At consectetur lorem donec massa. Massa tincidunt dui ut ornare. Scelerisque eu ultrices vitae auctor eu. Facilisis magna etiam tempor orci eu lobortis. In nisl nisi scelerisque eu ultrices vitae auctor eu augue. Vel facilisis volutpat est velit egestas dui.", user_id: 1)

Comment.create(content:"~Stonkss!!", user_id: 2, trnpost_id: 1)
Comment.create(content:"Non Stoonkkkss!", user_id: 2, trnpost_id: 3)
Comment.create(content:"How it's possible?!!!", user_id: 4, trnpost_id: 3)