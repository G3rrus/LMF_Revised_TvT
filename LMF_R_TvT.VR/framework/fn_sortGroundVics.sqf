// SORTING FUNCTION FOR GROUND VEHICLES ///////////////////////////////////////////////////////////
/*
	- File that handles what happens to created ground vehicles.
*/
// INIT ///////////////////////////////////////////////////////////////////////////////////////////
private _vic = _this select 0;

//EXIT IF NOT LOCAL OR NO CUSTOM PLAYER GEAR
if (!local _vic || {!var_playerGear}) exitWith {};

//WHICH VEHICLES CONTINUE?
private _type = typeOf _vic;
private _types_west = [var_w_vic1,var_w_vic2,var_w_vic3,var_w_vic4];
private _types_east = [var_e_vic1,var_e_vic2,var_e_vic3,var_e_vic4];
private _types_indep = [var_i_vic1,var_i_vic2,var_i_vic3,var_i_vic4];

//PLAYER VEHICLES
if (_types_west findif {_type == _x} != -1) exitWith {
	[_vic] call lmf_player_fnc_initPlayerVicWest;
};
if (_types_east findif {_type == _x} != -1) exitWith {
	[_vic] call lmf_player_fnc_initPlayerVicEast;
};
if (_types_indep findif {_type == _x} != -1) exitWith {
	[_vic] call lmf_player_fnc_initPlayerVicIndep;
};