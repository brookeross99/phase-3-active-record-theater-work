char1 = Role.create(character_name:"Char1")
char2 = Role.create(character_name:"Char2")
char3 = Role.create(character_name:"Char3")

brooke = Audition.create(actor: "Brooke Ross", location:"Broomfield",phone:9999999999, hired:false, role_id:char1.id)
bob = Audition.create(actor: "Bob Ross", location:"Richmond",phone:123456789, hired:false, role_id:char2.id)
diana = Audition.create(actor: "Diana Ross", location:"Florida",phone:767676767, hired:true, role_id:char2.id)
betsy = Audition.create(actor: "Betsy Ross", location:"Washington",phone:232323232, hired:true, role_id:char3.id)