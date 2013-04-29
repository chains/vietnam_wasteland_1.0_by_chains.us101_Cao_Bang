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
["Ex41", "uns_ex41", 250, 25],
["Ak47", "uns_ak47", 135, 25],
["RPK","uns_rpk", 230, 25]
];

//Gun Store Ammo List
//Text name, classname, buy cost
ammoArray = [

["Mac10mag", "uns_mac10mag", 5],
["Mat49mag", "uns_mat49mag", 10],
["Thompsonmag", "uns_thompsonmag_30", 5],
["Ithaca37mag", "uns_ithaca37mag", 15],
["M870mag", "uns_m870mag", 15],
["Barmag", "uns_barmag", 15],
["M16 Ammo", "uns_m16mag_30", 15],
["M60mag", "uns_m60mag", 15],
["Ex41mag", "uns_ex41mag", 15],
["Ak47mag", "uns_ak47mag", 15],
["Rpkmag", "uns_rpkmag", 25]

];

//Gun Store Equipment List
//Text name, classname, buy cost
accessoriesArray = [
	["Useless radio","UNS_ItemRadio",500],
	["Binoculars","Binocular",500]
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
		["Town_0",200,"Cao Bang Wilderness"],
		["Town_1",200,"Cao Bang Wilderness"],
		["Town_2",200,"Cao Bang Wilderness"],
		["Town_3",200,"Cao Bang Wilderness"],
		["Town_4",200,"Cao Bang Wilderness"],
		["Town_5",200,"Cao Bang Wilderness"],
		["Town_6",200,"Cao Bang Wilderness"],
		["Town_7",200,"Cao Bang Wilderness"],
		["Town_9",200,"Cao Bang Wilderness"],
		["Town_23",200,"Cao Bang Wilderness"],
		["Town_24",200,"Cao Bang Wilderness"],
		["Town_25",200,"Cao Bang Wilderness"],
		["Town_26",200,"Cao Bang Wilderness"],
		["Town_28",200,"Cao Bang Wilderness"],
		["Town_29",200,"Cao Bang Wilderness"],
		["Town_30",200,"Cao Bang Wilderness"],
		["Town_31",200,"Cao Bang Wilderness"],
		["Town_32",200,"Cao Bang Wilderness"],
		["Town_33",200,"Cao Bang Wilderness"],
		["Town_34",200,"Cao Bang Wilderness"],
		["Town_35",200,"Cao Bang Wilderness"],
		["Town_36",200,"Cao Bang Wilderness"],
		["Town_37",200,"Cao Bang Wilderness"],
		["Town_41",200,"Cao Bang Wilderness"],
		["Town_44",200,"Cao Bang Wilderness"],
		["Town_45",200,"Cao Bang Wilderness"]
];
cityLocations = [];
