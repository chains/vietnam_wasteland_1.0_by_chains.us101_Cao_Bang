//	@file Version: 1.0
//	@file Name: largeGroup.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy
//	@file Created: 08/12/2012 21:58
//	@file Args:

if(!X_Server) exitWith {};

private ["_group","_pos","_leader","_man2","_man3","_man4","_man5","_man6","_man7","_man8","_man9","_man10"];

_group = _this select 0;
_pos = _this select 1;

//Anti Air no weapon
_leader = _group createunit ["Priest", [(_pos select 0) + 30, _pos select 1, 0], [], 0.5, "Form"];
_leader addMagazine "uns_rpg7grenade";
_leader addWeapon "uns_rpg7";
_leader addMagazine "uns_m16mag_30";
_leader addMagazine "uns_m16mag_30";
_leader addMagazine "uns_m16mag_30";
_leader addWeapon "uns_m16a1_30";

//Support
_man2 = _group createunit ["Woodlander4", [(_pos select 0) - 30, _pos select 1, 0], [], 0.5, "Form"];
_man2 addMagazine "uns_rpdsogmag";
_man2 addMagazine "uns_rpdsogmag";
_man2 addWeapon "uns_rpdsog";

//Rifle_man
_man3 = _group createunit ["Woodlander4", [_pos select 0, (_pos select 1) + 30, 0], [], 0.5, "Form"];
_man3 addMagazine "uns_m16mag_30";
_man3 addMagazine "uns_m16mag_30";
_man3 addMagazine "uns_m16mag_30";
_man3 addWeapon "uns_m16a1_30";

//Rifle_man
_man4 = _group createunit ["Woodlander4", [_pos select 0, (_pos select 1) + 40, 0], [], 0.5, "Form"];
_man4 addMagazine "uns_m16mag_30";
_man4 addMagazine "uns_m16mag_30";
_man4 addMagazine "uns_m16mag_30";
_man4 addWeapon "uns_m16a1_30";

//Sniper
_man5 = _group createunit ["Woodlander4", [_pos select 0, (_pos select 1) - 30, 0], [], 0.5, "Form"];
_man5 addMagazine "uns_svdmag";
_man5 addMagazine "uns_svdmag";
_man5 addMagazine "uns_svdmag";
_man5 addWeapon "uns_svd";

//Grenadier
_man6 = _group createunit ["Woodlander4", [_pos select 0, (_pos select 1) - 40, 0], [], 0.5, "Form"];
_man6 addMagazine "uns_car15mag_30";
_man6 addMagazine "uns_car15mag_30";
_man6 addMagazine "uns_car15mag_30";
_man6 addMagazine "Uns_1Rnd_HE_M203";
_man6 addMagazine "Uns_1Rnd_HE_M203";
_man6 addMagazine "Uns_1Rnd_HE_M203";
_man6 addWeapon "uns_m203_30";

//Support
_man7 = _group createunit ["Woodlander4", [(_pos select 0) - 40, _pos select 1, 0], [], 0.5, "Form"];
_man7 addMagazine "uns_rpdsogmag";
_man7 addMagazine "uns_rpdsogmag";
_man7 addWeapon "uns_rpdsog";

//Grenadier
_man8 = _group createunit ["Woodlander4", [_pos select 0, (_pos select 1) + 50, 0], [], 0.5, "Form"];
_man8 addMagazine "uns_car15mag_30";
_man8 addMagazine "uns_car15mag_30";
_man8 addMagazine "uns_car15mag_30";
_man8 addMagazine "Uns_1Rnd_HE_M203";
_man8 addMagazine "Uns_1Rnd_HE_M203";
_man8 addMagazine "Uns_1Rnd_HE_M203";
_man8 addWeapon "uns_m203_30";

//Sniper
_man9 = _group createunit ["Woodlander4", [_pos select 0, (_pos select 1) - 50, 0], [], 0.5, "Form"];
_man9 addMagazine "uns_svdmag";
_man9 addMagazine "uns_svdmag";
_man9 addMagazine "uns_svdmag";
_man9 addWeapon "uns_svd";

//Rifle_man
_man10 = _group createunit ["Woodlander4", [_pos select 0, (_pos select 1) + 30, 0], [], 0.5, "Form"];
_man10 addMagazine "uns_m16mag_30";
_man10 addMagazine "uns_m16mag_30";
_man10 addMagazine "uns_m16mag_30";
_man10 addWeapon "uns_m16a1_30";

_leader = leader _group;
[_group, _pos] call defendArea;