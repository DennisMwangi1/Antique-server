puts "Seeding......"

one = User.create(first_name:"George",last_name:"Kinyanjui",user_name:"Guchi",email:"George@1234",password:"guchi1",gender:"Male",age:21)

two = User.create(first_name:"Mark",last_name:"Njoroge",user_name:"Marky",email:"Mark@1234",password:"Mark1",gender:"Male",age:21)

three = User.create(first_name:"Lucy",last_name:"Kinyanjui",user_name:"Luccy",email:"Lucy@1234",password:"Lucy1",gender:"Female",age:23)

four = User.create(first_name:"Stella",last_name:"Kamau",user_name:"Nikistl",email:"Stella@1234",password:"Stella1",gender:"Female",age:25)

puts "Done seeding :)"

