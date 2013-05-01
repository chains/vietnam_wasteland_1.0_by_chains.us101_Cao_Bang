//	@file Version: 1.0
//	@file Name: midGroup.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy
//	@file Created: 08/12/2012 21:58
//	@file Args:

if(!X_Server) exitWith {};

private ["_group","_pos","_leader","_man2","_man3","_man4","_man5","_man6","_man7"];

_group = _this select 0;
_pos = _this select 1;

//Anti Vehicle
_leader = _group createunit ["Priest", [(_pos select 0) + 10, _pos select 1, 0], [], 0.5, "Form"];
_leader addMagazine "uns_rpg7grenade";
_leader addMagazine "uns_rpg7grenade";
_leader addWeapon "uns_rpg7";
_leader addMagazine "uns_ak47mag";
_leader addMagazine "uns_ak47mag";
_leader addMagazine "uns_ak47mag";
_leader addWeapon "uns_ak47bayo";

//Support
_man2 = _group createunit ["CIV_EuroMan02_EP1", [(_pos select 0) - 30, _pos select 1, 0], [], 0.5, "Form"];
_man2 addMagazine "uns_rpkmag";
_man2 addMagazine "uns_rpkmag";
_man2 addWeapon "uns_rpk";

//Rifle_man
_man3 = _group createunit ["CIV_EuroMan01_EP1", [_pos select 0, (_pos select 1) + 30, 0], [], 0.5, "Form"];
_man3 addMagazine "uns_ak47mag";
_man3 addMagazine "uns_ak47mag";
_man3 addMagazine "uns_ak47mag";
_man3 addWeapon "uns_ak47";

//Rifle_man
_man4 = _group createunit ["RU_Citizen1", [_pos select 0, (_pos select 1) + 40, 0], [], 0.5, "Form"];
_man4 addMagazine "uns_ak47mag";
_man4 addMagazine "uns_ak47mag";
_man4 addMagazine "uns_ak47mag";
_man4 addWeapon "uns_ak47";

//Rifle_man
_man5 = _group createunit ["Rocker1", [_pos select 0, (_pos select 1) + 40, 0], [], 0.5, "Form"];
_man5 addMagazine "uns_ak47mag";
_man5 addMagazine "uns_ak47mag";
_man5 addMagazine "uns_ak47mag";
_man5 addWeapon "uns_ak47";

//Sniper
_man6 = _group createunit ["Rocker2", [_pos select 0, (_pos select 1) - 30, 0], [], 0.5, "Form"];
_man6 addMagazine "uns_svdmag";
_man6 addMagazine "uns_svdmag";
_man6 addMagazine "uns_svdmag";
_man6 addWeapon "uns_svd";

//Grenadier
_man7 = _group createunit ["Woodlander3", [_pos select 0, (_pos select 1) - 40, 0], [], 0.5, "Form"];
_man7 addMagazine "uns_car15mag_30";
_man7 addMagazine "uns_car15mag_30";
_man7 addMagazine "uns_car15mag_30";
_man7 addMagazine "Uns_1Rnd_HE_M203";
_man7 addMagazine "Uns_1Rnd_HE_M203";
_man7 addMagazine "Uns_1Rnd_HE_M203";
_man7 addWeapon "uns_m203_30";

_leader = leader _group;
[_group, _pos] call defendArea;