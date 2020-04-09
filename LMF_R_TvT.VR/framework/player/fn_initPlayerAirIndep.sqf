// APPLY SETTINGS TO DEFINED AIR VICS /////////////////////////////////////////////////////////////
/*
	- This file handles what happens on creation of player defined air vehicles.
*/
// INIT ///////////////////////////////////////////////////////////////////////////////////////////
params [["_air",objNull,[objNull]]];
if (isNull _air) exitWith {};

#include "..\..\settings\cfg_Player_Indep.sqf"


// APPLY LOADOUT //////////////////////////////////////////////////////////////////////////////////
//CLEAR CARGO
clearWeaponCargoGlobal _air;
clearMagazineCargoGlobal _air;
clearItemCargoGlobal _air;
clearBackpackCargoGlobal _air;

//ADD NEW ITEMS
if ((_SMG_Ammo#0) != "") then {_air addMagazineCargoGlobal [(selectRandom _SMG_Ammo),5 + (random 10)];};
if ((_Grenade_Smoke#0) != "") then {_air addMagazineCargoGlobal [(selectRandom _Grenade_Smoke),2 + (random 2)];};

_air addItemCargoGlobal ["Toolkit",1];

if ((_Backpack_Light#0) != "") then {_air addBackpackCargoGlobal [(selectRandom _Backpack_Light),1];};