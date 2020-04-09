// SORTING FUNCTION FOR AIR VEHICLES //////////////////////////////////////////////////////////////
/*
	- File that handles what happens to created air vehicles.
*/
// INIT ///////////////////////////////////////////////////////////////////////////////////////////
private _air = _this select 0;

//EXIT IF NOT LOCAL OR NO CUSTOM PLAYER GEAR
if (!local _air || {!var_playerGear}) exitWith {};

//WHICH VEHICLES CONTINUE?
private _type = typeOf _air;
private _types_west = [var_w_air1,var_w_air2];
private _types_east = [var_e_air1,var_e_air2];
private _types_indep = [var_i_air1,var_i_air2];

//PLAYER VEHICLES
if (_types_west findif {_type == _x} != -1) exitWith {
	[_air] call lmf_player_fnc_initPlayerAirWest;
};
if (_types_east findif {_type == _x} != -1) exitWith {
	[_air] call lmf_player_fnc_initPlayerAirEast;
};
if (_types_indep findif {_type == _x} != -1) exitWith {
	[_air] call lmf_player_fnc_initPlayerAirIndep;
};