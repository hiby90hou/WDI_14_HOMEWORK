# Location.delete_all
# # delete everything without any rule
# locationArr = ["road","grass","water","volcano"]

# locationArr.each{|location|
# 	rand_num = rand(1..10)
# 	Location.create(
# 		name:location,
# 		rarity:rand_num
# 		)
# }



specieArr = [
	{
		name:"Bulbasaur",
		prototype:"Bulbasaur",
		evolute_level:"10",
		img_url:"001.jpg"
	},
	{
		name:"Ivysaur",
		prototype:"Bulbasaur",
		evolute_level:"30",
		img_url:"002.jpg"
	},
	{
		name:"Venusaur",
		prototype:"Bulbasaur",
		evolute_level:"50",
		img_url:"003.jpg"
	},
	{
		name:"Charmander",
		prototype:"Charmander",
		evolute_level:"10",
		img_url:"004.jpg"
	},
	{
		name:"Charmeleon",
		prototype:"Charmander",
		evolute_level:"30",
		img_url:"005.jpg"
	},
	{
		name:"Charizard",
		prototype:"Charmander",
		evolute_level:"50",
		img_url:"006.jpg"
	},
	{
		name:"Squirtle",
		prototype:"Squirtle",
		evolute_level:"10",
		img_url:"007.jpg"
	},
	{
		name:"Wartortle",
		prototype:"Squirtle",
		evolute_level:"30",
		img_url:"008.jpg"
	},
	{
		name:"Blastoise",
		prototype:"Squirtle",
		evolute_level:"50",
		img_url:"009.jpg"
	}
]

specieArr.each{|specie|
	Specie.create(
		name:specie[:name],
		prototype:specie[:prototype],
		evolute_level:specie[:evolute_level],
		img_url:("https://fevgames.net/wp-content/uploads/pokemon/" + specie[:img_url].to_s),
		rarity:rand(1..10),
		growth_rate:rand(3..10),
		min_level:(specie[:evolute_level].to_i - 9),
		max_level:(specie[:evolute_level].to_i - 1)
		)
}
