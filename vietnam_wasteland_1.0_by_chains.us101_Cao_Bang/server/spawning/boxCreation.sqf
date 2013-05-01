//	@file Version: 1.0
//	@file Name: boxCreation.sqf
//	@file Author: [404] Costlyy
//	@file Created: 19/12/2012 23:19
//	@file Args: [string (selected weapon crate), array (position)]

// This file is to address the serious imbalance caused by the default load-out of all weapon crates.

if(!X_Server) exitWith {};

private ["_selectedBox", "_selectedBoxPos", "_finishedBox", "_currBox"];

_selectedBox = _this select 0;
_selectedBoxPos = _this select 1;

switch(_selectedBox) do {
	case "Custom_Box_1_Heavy": { // UNS Weapons USMC
    	_currBox = createVehicle ["USBasicWeaponsBox", _selectedBoxPos,[], 30, "NONE"];
        
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
    
    case "Custom_Box_2_Heavy": { // UNS Weapons VC
    	_currBox = createVehicle ["USBasicWeaponsBox", _selectedBoxPos,[], 30, "NONE"];
        
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
    
    case "Custom_Box_3": { // UNS Weapons Snipers & Guns
    	_currBox = createVehicle ["USBasicWeaponsBox", _selectedBoxPos,[], 30, "NONE"];
        
        // Clear prexisting weapons first
        clearMagazineCargoGlobal _currBox;
		clearWeaponCargoGlobal _currBox;
        
        // Add new weapons before ammunition
        _currBox addWeaponCargoGlobal ["uns_m14",4];
		_currBox addWeaponCargoGlobal ["uns_m21",2];
		_currBox addWeaponCargoGlobal ["uns_model70",4];
		_currBox addWeaponCargoGlobal ["uns_car15e2_30",8];	
        
        // Add ammunition
        _currBox addMagazineCargoGlobal ["uns_m14mag",24];
        _currBox addMagazineCargoGlobal ["uns_car15mag_30",40];
        _currBox addMagazineCargoGlobal ["uns_m21mag",10];
        _currBox addMagazineCargoGlobal ["uns_model70mag",15];
        _currBox addMagazineCargoGlobal ["uns_m67gren",15];  
    };
    
    case "Custom_Box_4": { // UNS Weapons Snipers & Guns
    	_currBox = createVehicle ["USBasicWeaponsBox", _selectedBoxPos,[], 30, "NONE"];
        
        // Clear prexisting weapons first
        clearMagazineCargoGlobal _currBox;
		clearWeaponCargoGlobal _currBox;
        
        // Add new weapons before ammunition
        _currBox addWeaponCargoGlobal ["uns_ak47bayo",4];
		_currBox addWeaponCargoGlobal ["uns_svd",2];
		_currBox addWeaponCargoGlobal ["uns_ct56",4];
		_currBox addWeaponCargoGlobal ["uns_ppsh41",8];	
        
        // Add ammunition
        _currBox addMagazineCargoGlobal ["uns_ak47mag",24];
        _currBox addMagazineCargoGlobal ["uns_ppshmag",40];
        _currBox addMagazineCargoGlobal ["uns_svdmag",10];
        _currBox addMagazineCargoGlobal ["uns_ct56mag",15];
        _currBox addMagazineCargoGlobal ["uns_m67gren",15];  
    };
    
    case "uns_WeaponAndAmmoBoxUS": { // UNS Weapons Snipers & Guns
    	_currBox = createVehicle ["uns_WeaponAndAmmoBoxUS", _selectedBoxPos,[], 30, "NONE"]; 
    };
    
    case "uns_WeaponAndAmmoBoxNVA": { // UNS Weapons Snipers & Guns
    	_currBox = createVehicle ["uns_WeaponAndAmmoBoxUS", _selectedBoxPos,[], 30, "NONE"]; 
    };
};
