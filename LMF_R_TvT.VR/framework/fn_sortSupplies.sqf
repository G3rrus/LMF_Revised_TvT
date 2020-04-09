// SORTING FUNCTION FOR SUPPLIES //////////////////////////////////////////////////////////////////
/*
	- File that handles what happens to created ammo boxes.
*/
// INIT ///////////////////////////////////////////////////////////////////////////////////////////
private _supp = _this select 0;

//EXIT IF NOT LOCAL OR NO CUSTOM PLAYER GEAR
if (!local _supp || {!var_playerGear}) exitWith {};

//WHICH VEHICLES CONTINUE?
private _type = typeOf _supp;
private _types_west = [var_w_supSmall,var_w_supLarge,var_w_supSpecial,var_w_supExplosives];
private _types_east = [var_e_supSmall,var_e_supLarge,var_e_supSpecial,var_e_supExplosives];
private _types_indep = [var_i_supSmall,var_i_supLarge,var_i_supSpecial,var_i_supExplosives];

//PLAYER VEHICLES
if (_types_west findif {_type == _x} != -1) exitWith {
	[_supp] call lmf_player_fnc_initPlayerSuppWest;
};
if (_types_east findif {_type == _x} != -1) exitWith {
	[_supp] call lmf_player_fnc_initPlayerSuppEast;
};
if (_types_indep findif {_type == _x} != -1) exitWith {
	[_supp] call lmf_player_fnc_initPlayerSuppIndep;
};