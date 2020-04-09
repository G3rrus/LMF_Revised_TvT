// PLAYER GEAR ASSIGNING //////////////////////////////////////////////////////////////////////////
/*
	- This file handles which loadout players get.
*/
// INIT ///////////////////////////////////////////////////////////////////////////////////////////
params [["_unit",objNull]];
if !(local _unit) exitWith {};

private _side = side _unit;
if (_side == WEST) exitWith {[_unit] call lmf_gear_west_fnc_giveLoadout;};
if (_side == EAST) exitWith {[_unit] call lmf_gear_east_fnc_giveLoadout;};
if (_side == INDEPENDENT) exitWith {[_unit] call lmf_gear_indep_fnc_giveLoadout;};