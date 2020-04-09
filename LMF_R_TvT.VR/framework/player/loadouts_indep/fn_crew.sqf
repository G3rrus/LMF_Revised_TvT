// PLAYER GEAR SCRIPT /////////////////////////////////////////////////////////////////////////////
/*
	- This file is a player gear loadout file.
*/
// INIT ///////////////////////////////////////////////////////////////////////////////////////////
params [["_unit",objNull]];
if !(local _unit) exitWith {};

#include "..\..\..\settings\cfg_Player_Indep.sqf"


// APPLY NEW ROLE SPECIFIC LOADOUT ////////////////////////////////////////////////////////////////
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

//CLOTHING
_unit forceAddUniform selectRandom _Crew_Uniform;
_unit addVest selectRandom _Crew_Vest;
_unit addBackpack selectRandom _Backpack_Crew;
_unit addHeadgear selectRandom _Crew_Headgear;
if (_Goggles#0 !=  "") then {
	removeGoggles _unit;
	_unit addGoggles selectRandom _Goggles;
};

//RADIO SETUP
if !(var_tfar) then {
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadioAcreFlagged";
	_unit addItem _Radio_L;
	if (var_personalRadio) then {
		_unit addItem _Radio_R;
	};
} else {
	_unit linkItem "ItemWatch";
	_unit linkItem _Radio_L;
};

//LINKED ITEMS
if (var_playerMaps != 2) then {
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit addItem "ACE_Flashlight_XL50";
};
if (var_playerNVG == 0) then {_unit linkItem _NVG};

//PRIMARY
[_unit,_Gun_Crew] call lmf_gear_indep_fnc_givePrimary;

//ITEMS
for "_i" from 1 to 2 do {_unit addItem "FirstAidKit"};

//SIDEARM
if (var_pistolAll) then {
	if (_Pistol_Ammo select 0 == "") then {_Pistol_Ammo = 0;} else {_Pistol_Ammo = selectRandom _Pistol_Ammo};
	[_unit, selectRandom _Pistol, 3, _Pistol_Ammo] call BIS_fnc_addWeapon;
	_unit addHandgunItem (selectRandom _Pistol_Attach1);
	_unit addHandgunItem (selectRandom _Pistol_Attach2);
};

_unit addWeapon _Binocular;

//TRAITS
_unit setUnitTrait ["medic",false];
_unit setUnitTrait ["engineer",true];

//RANK
_unit setRank "SERGEANT";