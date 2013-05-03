//Random weapons and items spawning script for wasteland missions.
//Author : Ed!
 
_odd1 = 50;                                            //The odds that a building is selected to place loot.
_odd2 = 10;                                                     //The odds that the selected building's spots will have loot(almost like odds per room).
_itemtoweaponratio = 50;                        //The chances of an item like food,money etc. will spawn instead of a weapon.
randomweaponspawnminmoney = 50;         //The minimum amount of money that can spawn.
randomweaponspawnmaxmoney = 500;        //The maximum amount of money that can spawn.
randomweapontestint = 0.01;                     //Sets the intervals in which weaponpositions are tested. (Lower = slower, but more accurate. Higher = faster, but less accurate.)
 
 
randomweapon_weaponlist = [
    ["uns_mac10", "uns_mac10mag"],
	["uns_mat49", "uns_mat49mag"],
	["uns_thompson", "uns_thompsonmag_30"],
	["uns_ithaca37", "uns_ithaca37mag"],
	["uns_m870", "uns_m870mag"],
	["uns_bar", "uns_barmag"],
	["uns_m16", "uns_m16mag_30"],
	["uns_M60", "uns_m60mag"],
	["uns_Ex41", "uns_ex41mag"],
	["uns_Ak47", "uns_ak47mag"],
	["uns_RPG", "uns_rpg7grenade"],
	["uns_Rpk", "uns_rpkmag"],
	["uns_SVD", "uns_svdmag"],
	//["uns_Ppsh","uns_ppshmag"],
	["uns_k50","uns_k50mag"],
	["uns_Mp40","uns_mp40mag"],
	["uns_Sks","uns_sksmag"],
	["uns_Ct56","uns_ct56mag"],
	["uns_Mosin","uns_mosinmag"],
	["uns_Mk4","uns_mk4mag"],
	["uns_M3a1","uns_m3a1mag"],
	["uns_M45","uns_m45mag"],
	["uns_Mat49","uns_mat49mag"],
	["uns_Sten","uns_stenmag"],
	["uns_M14","uns_m14mag"],
	["uns_M21","uns_m21mag"],
	["uns_Mas36 ","uns_mas36mag"],
	["uns_Model70","uns_model70mag"],
	["uns_M1897","uns_m1897mag"],
	["uns_M63","uns_m63mag"]
];
 
randomweapon_itemlist = [
"Land_Teapot_EP1",                              //Water
"Land_Bag_EP1",                                 //Food
"EvMoney",                                              //Money
"Fuel_can",                                             //Fuel
"Suitcase"                                             //Repair kit

];
 
 
randomweaponspawnweapon = {
        _position = _this;
        _selectedgroup = (floor(random(count randomweapon_weaponlist)));
        _weapon = randomweapon_weaponlist select _selectedgroup select 0;
        _weaponholder = createVehicle ["WeaponHolder", _position, [], 0, "CAN_COLLIDE"];
        _weaponholder addWeaponCargoGlobal [_weapon, 1];
        if((count((randomweapon_weaponlist) select _selectedgroup)) > 1) then {
        for[{_rm = 0}, {_rm < (2 + floor(random(3)))}, {_rm = _rm + 1}] do {
        _mag = randomweapon_weaponlist select _selectedgroup select ((floor(random((count(randomweapon_weaponlist select _selectedgroup) - 1)))) + 1);
        _weaponholder addMagazineCargoGlobal [_mag, 1];  
        };
        };
        _weaponholder setPos _position;
};
 
randomweaponspawnitem = {
        _position = _this;
        _selectedgroup = (floor(random(count randomweapon_itemlist)));
        _class = randomweapon_itemlist select _selectedgroup;
        _item = createVehicle [_class, _position, [], 0, "CAN_COLLIDE"];
        if(_class == "EvMoney") then {
                _amountmoney = floor(random(randomweaponspawnmaxmoney - randomweaponspawnminmoney)) + randomweaponspawnminmoney;
                _item setVariable ["money", _amountmoney, true];
                _item setVariable ["owner", "world", true];
        };
        if(_class == "Land_Teapot_EP1") then {
                //nothing to do here
        };
        if(_class == "Land_Bag_EP1") then {
                //nothing to do here
        };
        if(_class == "Fuel_can") then {
                _item setVariable["fuel", true, true];
        };
        if(_class == "Suitcase") then {
                //nothing to do here
        };
        if(_class == "CZ_VestPouch_EP1") then {
                //nothing to do here
        };
        _item setPos _position;
};
 
 
_pos = [0,0];
randomweapon_buildings = nearestObjects [_pos, ["house"], 60000];
sleep 30;
{
        _building = _x;
        _buildingpos = [];
        _endloop = false;
        _poscount = 0;
        while {!_endloop} do {
                if(((_building buildingPos _poscount) select 0) != 0 && ((_building buildingPos _poscount) select 1) != 0) then {
                        _buildingpos = _buildingpos + [_building buildingPos _poscount];
                        _poscount = _poscount + 1;
                } else {
                        _endloop = true;
                };
        };
        _num = (random 100);
        if (_num < _odd1) then {
                if (count _buildingpos > 0) then
                {  
                        for[{_r = 0}, {_r < count _buildingpos}, {_r = _r + 1}] do
                        {
                                _num2 = (random 100);
                                if (_num2 < _odd2) then
                                {
                                        _pos = _buildingpos select _r;
                                        _posnew = _pos;
                                        if(_pos select 2 < 0) then
                                        {
                                                _pos = [_pos select 0, _pos select 1, 1];
                                        };
                                        _z = 0;
                                        _testpos = true;
                                        while {_testpos} do {
                                                if((!lineIntersects[ATLtoASL(_pos), ATLtoASL([_pos select 0, _pos select 1, (_pos select 2) - (randomweapontestint * _z)])]) && (!terrainIntersect[(_pos), ([_pos select 0, _pos select 1, (_pos select 2) - (randomweapontestint * _z)])]) && (_pos select 2 > 0)) then {
                                                        _posnew = [_pos select 0, _pos select 1, (_pos select 2) - (randomweapontestint * _z)];
                                                        _z = _z + 1;
                                                } else {
                                                        _testpos = false;
                                                };
                                        };
                                        _posnew = [_posnew select 0,_posnew select 1,(_posnew select 2) + 0.05];
                                        _woi = floor(random(100));
                                        if(_woi < _itemtoweaponratio) then {
                                                _posnew call randomweaponspawnitem;
                                        } else {
                                                _posnew call randomweaponspawnweapon;
                                        };
                                };
                        };
                };                             
        };
}foreach randomweapon_buildings;