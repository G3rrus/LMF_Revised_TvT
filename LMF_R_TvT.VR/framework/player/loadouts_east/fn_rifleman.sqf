// PLAYER GEAR SCRIPT /////////////////////////////////////////////////////////////////////////////
/*
	- This file is a player gear loadout file.
*/
// INIT ///////////////////////////////////////////////////////////////////////////////////////////
params [["_unit",objNull]];
if !(local _unit) exitWith {};

#include "..\..\..\settings\cfg_Player_East.sqf"


// APPLY NEW ROLE SPECIFIC LOADOUT ////////////////////////////////////////////////////////////////
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

//CLOTHING
_unit forceAddUniform selectRandom _Uniform;
_unit addVest selectRandom _Vest;
if (var_backpacksAll) then {
	_unit addBackpack selectRandom _Backpack_Light;
};
_unit addHeadgear selectRandom _Headgear;
if (_Goggles#0 !=  "") then {
	removeGoggles _unit;
	_unit addGoggles selectRandom _Goggles;
};

//RADIO SETUP
if (var_personalRadio) then {
	if !(var_tfar) then {
		_unit linkItem "ItemWatch";
		_unit linkItem "ItemRadioAcreFlagged";
		_unit addItem _Radio_R;
	} else {
		_unit linkItem _Radio_R;
		_unit linkItem "TFAR_microdagr";
	};
} else {
	_unit linkItem "ItemWatch";
};

//LINKED ITEMS
if (var_playerMaps == 0) then {
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit addItem "ACE_Flashlight_XL50";
};
if (var_playerNVG == 0) then {_unit linkItem _NVG};

//PRIMARY
[_unit,_Gun_Rif] call lmf_gear_east_fnc_givePrimary;

//ITEMS
for "_i" from 1 to 2 do {_unit addItem "FirstAidKit"};
for "_i" from 1 to 2 do {_unit addItem (selectRandom _Grenade);};
_unit addItem (selectRandom _Grenade_Smoke);

//SIDEARM
if (var_pistolAll) then {
	if (_Pistol_Ammo select 0 == "") then {_Pistol_Ammo = 0;} else {_Pistol_Ammo = selectRandom _Pistol_Ammo};
	[_unit, selectRandom _Pistol, 3, _Pistol_Ammo] call BIS_fnc_addWeapon;
	_unit addHandgunItem (selectRandom _Pistol_Attach1);
	_unit addHandgunItem (selectRandom _Pistol_Attach2);
};

//BACKPACK AND/OR LAUNCHER
if !(var_backpacksAll) then {
	_unit addBackpack "B_AssaultPack_blk";
	if (_LAT_Ammo select 0 == "") then {_LAT_Ammo = 0;} else {_LAT_Ammo = selectRandom _LAT_Ammo};
	[_unit, selectRandom _LAT, 1, _LAT_Ammo] call BIS_fnc_addWeapon;
	removeBackpack _unit;
} else {
	if (_LAT_Ammo select 0 == "") then {_LAT_Ammo = 0;} else {_LAT_Ammo = selectRandom _LAT_Ammo};
	[_unit, selectRandom _LAT, 1, _LAT_Ammo] call BIS_fnc_addWeapon;
};

//TRAITS
_unit setUnitTrait ["medic",false];
_unit setUnitTrait ["engineer",false];

//RANK
_unit setRank "PRIVATE";