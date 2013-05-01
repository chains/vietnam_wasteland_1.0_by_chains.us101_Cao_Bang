//	@file Version: 1.0
//	@file Name: config.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy
//	@file Created: 20/11/2012 05:13
//	@file Description: Main config.

// --------------------------------------------------------------------------------------------------- \\
// ----------  !DO NOT CHANGE ANYTHING BELOW THIS POINT UNLESS YOU KNOW WHAT YOU ARE DOING!	---------- \\
// ----------																				---------- \\
// ----------			404Games are not responsible for anything that may happen 			---------- \\
// ----------			 as a result of unauthorised modifications to this file.			---------- \\
// --------------------------------------------------------------------------------------------------- \\
                                                                                                
//Gunstore Weapon List - Gun Store Base List
// Text name, classname, buy cost, sell amount
weaponsArray = [

["MAC10", "uns_mac10", 150, 25],
["Mat49", "uns_mat49", 200, 25],
["Thompson", "uns_thompson", 75, 25],
["Ithaca37", "uns_ithaca37", 120, 25],
["M870", "uns_m870", 120, 25],
["BAR", "uns_bar", 140, 25],
["M16A1", "uns_m16a1_30", 170, 25],
["M60", "uns_m60", 250, 25],
["Ak47", "uns_ak47", 135, 25],
["RPG7", "uns_rpg7", 350, 25],
["RPK","uns_rpk", 230, 25]
];

//Gun Store Ammo List
//Text name, classname, buy cost
ammoArray = [

["Mac10 mag", "uns_mac10mag", 5],
["Mat49 mag", "uns_mat49mag", 10],
["Thompson mag", "uns_thompsonmag_30", 5],
["Ithaca37 mag", "uns_ithaca37mag", 15],
["M870 mag", "uns_m870mag", 15],
["Bar mag", "uns_barmag", 15],
["M16 Ammo", "uns_m16mag_30", 15],
["M60 mag", "uns_m60mag", 15],
["Ex41 mag", "uns_ex41mag", 15],
["Ak47 mag", "uns_ak47mag", 15],
["RPG Ammo", "uns_rpg7grenade", 120],
["Rpk mag", "uns_rpkmag", 25],
["SVD Ammo", "uns_svdmag", 35],
["Ppsh mag","uns_ppshmag", 25],
["k50 mag","uns_k50mag", 25],
["Mp40 mag","uns_mp40mag", 25],
["Sks mag","uns_sksmag", 25],
["Ct56 mag","uns_ct56mag", 25],
["Mosin mag","uns_mosinmag", 25],
["Mk4 mag","uns_mk4mag", 25],
["M3a1 mag","uns_m3a1mag", 25],
["M45 mag","uns_m45mag", 25],
["Mat49 mag","uns_mat49mag", 25],
["Sten mag","uns_stenmag", 25],
["M1carbine mag","uns_m1carbinemag", 25],
["M2carbine mag","uns_m2carbinemag", 25],
["Garand mag","uns_garandmag", 25],
["M14 mag","uns_m14mag", 25],
["M21 mag","uns_m21mag", 25],
["Mas36 mag","uns_mas36mag", 25],
["Springfield mag","uns_springfieldmag", 25],
["Model70 mag","uns_model70mag", 25],
["M1897 mag","uns_m1897mag", 25],
["M63 mag","uns_m63mag", 25]
];

//Gun Store Equipment List
//Text name, classname, buy cost
accessoriesArray = [
	["Jukebox","UNS_ItemRadio",10000],
	["Binoculars","Binocular", 300]
];

//General Store Item List
//Display Name, Class Name, Description, Picture, Buy Price, Sell Price.
generalStore = [
	["Water","water",localize "STR_WL_ShopDescriptions_Water","client\icons\water.paa",30,15],
	["Canned Food","canfood",localize "STR_WL_ShopDescriptions_CanFood","client\icons\cannedfood.paa",30,15],
	["Repair Kit","repairkits",localize "STR_WL_ShopDescriptions_RepairKit","client\icons\briefcase.paa",1000,500],
	["Medical Kit","medkits",localize "STR_WL_ShopDescriptions_MedKit","client\icons\medkit.paa",400,200],
	["Jerry Can (Full)","fuelFull",localize "STR_WL_ShopDescriptions_fuelFull","client\icons\jerrycan.paa",150,75],
    ["Jerry Can (Empty)","fuelEmpty",localize "STR_WL_ShopDescriptions_fuelEmpty","client\icons\jerrycan.paa",50,25],
	["Spawn Beacon","spawnBeacon",localize "STR_WL_ShopDescriptions_spawnBeacon","",3000,1500],
    ["Camo Net", "camonet", localize "STR_WL_ShopDescriptions_Camo", "",300,150]  
];

// Chernarus town and city array
//Marker Name, Radius, City Name
cityList = [
		["Town_0",200,"Southern Forest"],
		["Town_1",200,"East Fishing Village"],
		["Town_2",200,"Middle Swamp Village"],
		["Town_3",200,"South East Fishing Village"],
		["Town_4",200,"Eastern Fishing Village"],
		["Town_5",200,"Western Fishing Village"],
		["Town_6",200,"Lang Tra North"],
		["Town_7",200,"Northen Paddys"],
		["Town_9",200,"Small Northern Village"],
		["Town_23",200,"Eastern Forest"],
		["Town_24",200,"Southern Forest Village"],
		["Town_25",200,"South West Forest Village"],
		["Town_26",200,"Middle Swamp Village"],
		["Town_28",200,"Lang Tra Guerilla Camp"],
		["Town_29",200,"Temple"],
		["Town_30",200,"Western Fishing Village"],
		["Town_31",200,"Northen Forest"],
		["Town_32",200,"Airbase"],
		["Town_33",200,"Eastern Camp"],
		["Town_34",200,"Northern Crossroads"],
		["Town_35",200,"North East Fishing Village"],
		["Town_36",200,"Middle Swamp Village"],
		["Town_37",200,"Eastern Forest Village"],
		["Town_41",200,"Thia Tran Thia Bac"],
		["Town_44",200,"River Delta Village"],
		["Town_45",200,"Lang Tra South"]
];
cityLocations = [];
