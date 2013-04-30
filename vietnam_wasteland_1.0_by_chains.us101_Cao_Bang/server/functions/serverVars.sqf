//	@file Version: 1.0
//	@file Name: serverVars.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, [404] Pulse
//	@file Created: 20/11/2012 05:19
//	@file Args:
// --------------------------------------------------------------------------------------------------- \\
// ----------  !DO NOT CHANGE ANYTHING BELOW THIS POINT UNLESS YOU KNOW WHAT YOU ARE DOING!	---------- \\
// ----------																				---------- \\
// ----------			404Games are not responsible for anything that may happen 			---------- \\
// ----------			 as a result of unauthorised modifications to this file.			---------- \\
// --------------------------------------------------------------------------------------------------- \\
#include "setup.sqf"
if(!X_Server) exitWith {};

diag_log format["WASTELAND SERVER - Initilizing Server Vars"];

CVG_weapons = [];
CVG_weapons = CVG_rifles;
CVG_weapons = CVG_weapons + CVG_Scoped;
CVG_weapons = CVG_weapons + CVG_Heavy;
CVG_weapons = CVG_weapons + CVG_pistols;
CVG_weapons = CVG_weapons + CVG_Launchers;

#ifdef __A2NET__
missionStartTime = 0;
netTime = 0;
#endif

sideMissionPos = "";
mainMissionPos = "";

currentVehicles = [];
publicVariable "currentVehicles";
pvar_teamSwitchList = [];
publicVariable "pvar_teamSwitchList";
pvar_teamKillList = [];
publicVariable "pvar_teamKillList";
pvar_beaconListBlu = []; 
publicVariable "pvar_beaconListBlu";
pvar_beaconListRed = []; 
publicVariable "pvar_beaconListRed";
clientMissionMarkers = [];
publicVariable "clientMissionMarkers";
clientRadarMarkers = [];
publicVariable "clientRadarMarkers";
currentDate = [];
publicVariable "currentDate";
currentInvites = [];
publicVariable "currentInvites";
                  
"PlayerCDeath" addPublicVariableEventHandler {_id = (_this select 1) spawn server_playerDied};

currentStaticHelis = []; // Storage for the heli marker numbers so that we don't spawn wrecks on top of live helis

//Civilian Vehicle List - Random Spawns
civilianVehicles = [
					"Lada2",
					"V3S_Civ",
					"MMT_Civ",
					"Lada1_TK_CIV_EP1",
					"Old_moto_TK_Civ_EP1",
					"S1203_TK_CIV_EP1",
					"UAZ_Unarmed_TK_CIV_EP1",
//UNS Stuff			"uns_willys",
					"uns_truck_open",
					"uns_M43",
					"uns_m37b1",
					"uns_nvatruck_open"
					];

//Military Vehicle List - Random Spawns
militaryVehicles = [
					"UAZ_CDF",
					"uns_willys",
					"uns_truck_open"
					
					];

//Armed Military Vehicle List - Random Spawns
armedMilitaryVehicles = [
						"uns_willys",
						"uns_willysmg",
						"uns_truck_open"
						];

//Item Config
pickupList = ["Satelit",
				"EvMoney",
				"Suitcase",
				"Fuel_can"];

//Object List - Random Spawns.
objectList = ["Land_Barrel_water",
				"Land_prebehlavka",
				"Land_leseni2x",
                "Fort_Crate_wood",
                "Land_CamoNet_NATO",
				"Land_Barrel_water",
				"Land_stand_small_EP1",
                "Land_stand_small_EP1",
				"Base_WarfareBBarrier10xTall",
				"Base_WarfareBBarrier10x",
				"Base_WarfareBBarrier5x",
                "Base_WarfareBBarrier10xTall",
                "Base_WarfareBBarrier10x",
                "Base_WarfareBBarrier5x",
				"Land_Misc_deerstand",
				"Fort_Barricade",
				"Concrete_Wall_EP1",
                "Concrete_Wall_EP1",
                "Land_fort_bagfence_long",
                "Land_fort_bagfence_long",
                "Land_fort_bagfence_round",
                "Land_fort_bagfence_corner",
                "Land_BagFenceLong",
                "Land_BagFenceLong",
                "Land_fort_artillery_nest",
				"Land_fortified_nest_small_EP1",
				"Land_Misc_deerstand",
                "Land_fort_rampart",
                "Land_fort_rampart_EP1",
				"Land_HBarrier_large",
                "Land_HBarrier_large",
				"Land_Misc_Scaffolding",
				"Land_Fort_Watchtower_EP1",
                "Land_Fort_Watchtower",
				"Land_fortified_nest_big",
				//"RampConcrete",
				"WarfareBDepot",
				"WarfareBCamp",
                "Hedgehog",
                //"Land_ConcreteRamp",
                "Land_CncBlock_Stripes",
                "Land_Campfire_burning",
                "Land_GuardShed",
                "Land_tent_east"	
				];
                                         
//Object List - Random Spawns.
staticWeaponsList = [
				"uns_dshkhmg",
				"uns_m2hb",
				"uns_m1919"
				];

//Object List - Random Helis.
staticHeliList = ["UH1H_TK_GUE_EP1",
				"Mi17_Civilian",
                "MV22",
                "CH_47F_EP1",
                "MH6J_EP1",
                "UH60M_MEV_EP1",
                "AH6X_EP1"];

//Random Weapon List - Change this to what you want to spawn in cars.
vehicleWeapons = [
				"uns_coltcmdr",
				"uns_m1911",
				"uns_l34a1",
				"uns_m3a1",
				"uns_m3sd",
				"uns_m45",
				"uns_mac10",
				"uns_mac10sd",
				"uns_mat49",
				"uns_thompson",
				"uns_ithaca37",
				"uns_m870",
				"uns_bar",
				"uns_m14",
				"uns_m14a",
				"uns_mas36",
				"uns_mas4956",
				"uns_mas4956s",
				"uns_car15e1_20",
				"uns_car15e2_20",
				"uns_car15e2_30",
				"uns_l1a1",
				"uns_m16a1_20",
				"uns_m16a1_30",
				"uns_m60",
				"uns_m63a",
				"uns_m60shorty",
				"uns_ex41",
				"uns_m203_20",
				"uns_m203_30",
				"uns_makarov",
				"uns_tokarev",
				"uns_k50m",
				"uns_k50mdrum",
				"uns_m1897",
				"uns_m1897riot",
				"uns_ppsh41",
				"uns_thompsonvc",
				"uns_mosin",
				"uns_sks",
				"uns_sksbayo",
				"uns_svd",
				"uns_ak47",
				"uns_ak47bayo",
				"uns_ct56",
				"uns_ct56bayo",
				"uns_ct56ws",
				"uns_rpd",
				"uns_rpdsog",
				"uns_rpk"
				];
                
MissionSpawnMarkers = [
            ["Mission_1",false],
            ["Mission_2",false],
            ["Mission_3",false],
            ["Mission_4",false],
            ["Mission_5",false],
            ["Mission_6",false],
            ["Mission_7",false],
            ["Mission_8",false],
            ["Mission_9",false],
            ["Mission_10",false],
            ["Mission_11",false],
            ["Mission_12",false],
            ["Mission_13",false],
            ["Mission_14",false],
            ["Mission_15",false],
            ["Mission_16",false],
            ["Mission_17",false],
            ["Mission_18",false],
            ["Mission_19",false],
            ["Mission_20",false],
            ["Mission_21",false],
            ["Mission_22",false],
            ["Mission_23",false],
            ["Mission_24",false],
            ["Mission_25",false],
            ["Mission_26",false],
            ["Mission_27",false],
            ["Mission_28",false],
            ["Mission_29",false],
            ["Mission_30",false],
            ["Mission_31",false],
            ["Mission_32",false],
            ["Mission_33",false],
            ["Mission_34",false],
            ["Mission_35",false],
            ["Mission_36",false],
            ["Mission_37",false],
            ["Mission_38",false],
            ["Mission_39",false],
            ["Mission_40",false],
            ["Mission_41",false],
            ["Mission_42",false],
            ["Mission_43",false],
            ["Mission_44",false],
            ["Mission_45",false],
            ["Mission_46",false],
            ["Mission_47",false],
            ["Mission_48",false],
            ["Mission_49",false],
            ["Mission_50",false]
];