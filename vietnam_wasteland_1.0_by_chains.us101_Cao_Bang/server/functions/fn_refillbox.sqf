//	@file Version: 1.0
//	@file Name: fn_refillbox.sqf  "fn_refillbox"
//	@file Author: [404] Pulse , [404] Costlyy , [404] Deadbeat
//	@file Created: 22/1/2012 00:00
//	@file Args: [ OBJECT (Weapons box that needs filling), STRING (Name of the fill to give to object)]
if (!isServer) exitWith {};
private ["_selectedBox", "_selectedBoxPos", "_finishedBox", "_currBox"];

_box = _this select 0;
_selectedBox = _this select 1;

switch(_selectedBox) do {
    case "mission_Mid_BAF": { // Broad selection of mid-high tier weapons 
    	_currBox = _box;
        
        // Clear prexisting weapons first
        clearMagazineCargoGlobal _currBox;
		clearWeaponCargoGlobal _currBox;
        
        // Add new weapons before ammunition
        _currBox addWeaponCargoGlobal ["uns_ak47",10];
		_currBox addWeaponCargoGlobal ["uns_mosin",10];
		_currBox addWeaponCargoGlobal ["uns_rpk",4];
		_currBox addWeaponCargoGlobal ["uns_thompson",8];
		_currBox addWeaponCargoGlobal ["uns_rpg2",2];	
		_currBox addWeaponCargoGlobal ["uns_rpg7",1];	
        _currBox addWeaponCargoGlobal ["uns_m16a1_30",10];
		_currBox addWeaponCargoGlobal ["uns_bar",10];
		_currBox addWeaponCargoGlobal ["uns_m60shorty",4];
		_currBox addWeaponCargoGlobal ["uns_mac10",8];
		_currBox addWeaponCargoGlobal ["uns_rpg2",2];	
		_currBox addWeaponCargoGlobal ["uns_rpg7",1];		
        
        // Add ammunition
        _currBox addMagazineCargoGlobal ["uns_m16mag_30",50];
        _currBox addMagazineCargoGlobal ["uns_barmag",50];
        _currBox addMagazineCargoGlobal ["uns_m60mag",25];
        _currBox addMagazineCargoGlobal ["uns_mac10mag",40];
        _currBox addMagazineCargoGlobal ["uns_m67gren",15];
        _currBox addMagazineCargoGlobal ["PipeBomb",5];
        _currBox addMagazineCargoGlobal ["uns_rpg2grenade",10];
        _currBox addMagazineCargoGlobal ["uns_rpg7grenade",5];	
        _currBox addMagazineCargoGlobal ["uns_ak47mag",50];
        _currBox addMagazineCargoGlobal ["uns_mosinmag",50];
        _currBox addMagazineCargoGlobal ["uns_rpkmag",25];
        _currBox addMagazineCargoGlobal ["uns_thompsonmag_30",40];
        _currBox addMagazineCargoGlobal ["uns_m67gren",15];
        _currBox addMagazineCargoGlobal ["PipeBomb",5];
        _currBox addMagazineCargoGlobal ["uns_rpg2grenade",10];
        _currBox addMagazineCargoGlobal ["uns_rpg7grenade",5];
    };
    case "mission_Side_USLaunchers": { // Used in the airwreck side mission
    	_currBox = _box;

        // Clear prexisting weapons first
        clearMagazineCargoGlobal _currBox;
		clearWeaponCargoGlobal _currBox;
        
        // Add new weapons before ammunition
        _currBox addWeaponCargoGlobal ["uns_ak47",10];
		_currBox addWeaponCargoGlobal ["uns_mosin",10];
		_currBox addWeaponCargoGlobal ["uns_rpk",4];
		_currBox addWeaponCargoGlobal ["uns_thompson",8];
		
		_currBox addWeaponCargoGlobal ["uns_rpg2",2];	
		_currBox addWeaponCargoGlobal ["uns_rpg7",1];		
        
        // Add ammunition
        _currBox addMagazineCargoGlobal ["uns_ak47mag",50];
        _currBox addMagazineCargoGlobal ["uns_mosinmag",50];
        _currBox addMagazineCargoGlobal ["uns_rpkmag",25];
        _currBox addMagazineCargoGlobal ["uns_thompsonmag_30",40];
        _currBox addMagazineCargoGlobal ["uns_m67gren",15];
        _currBox addMagazineCargoGlobal ["PipeBomb",5];
        _currBox addMagazineCargoGlobal ["uns_rpg2grenade",10];
        _currBox addMagazineCargoGlobal ["uns_rpg7grenade",5];
    };
    case "mission_Side_USSpecial": { // Used in the airwreck side mission
    	_currBox = _box;
        
        // Clear prexisting weapons first
        clearMagazineCargoGlobal _currBox;
		clearWeaponCargoGlobal _currBox;
        
        // Add new weapons before ammunition
        _currBox addWeaponCargoGlobal ["uns_m16a1_30",10];
		_currBox addWeaponCargoGlobal ["uns_bar",10];
		_currBox addWeaponCargoGlobal ["uns_m60shorty",4];
		_currBox addWeaponCargoGlobal ["uns_mac10",8];
		
		_currBox addWeaponCargoGlobal ["uns_rpg2",2];	
		_currBox addWeaponCargoGlobal ["uns_rpg7",1];		
        
        // Add ammunition
        _currBox addMagazineCargoGlobal ["uns_m16mag_30",50];
        _currBox addMagazineCargoGlobal ["uns_barmag",50];
        _currBox addMagazineCargoGlobal ["uns_m60mag",25];
        _currBox addMagazineCargoGlobal ["uns_mac10mag",40];
        _currBox addMagazineCargoGlobal ["uns_m67gren",15];
        _currBox addMagazineCargoGlobal ["PipeBomb",5];
        _currBox addMagazineCargoGlobal ["uns_rpg2grenade",10];
        _currBox addMagazineCargoGlobal ["uns_rpg7grenade",5];
    };
};