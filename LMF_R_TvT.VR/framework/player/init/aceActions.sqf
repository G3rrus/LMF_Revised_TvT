// ACE ACTIONS ////////////////////////////////////////////////////////////////////////////////////
/*
	- Adds ace actions to laptops for forward teleportation.
*/
// INIT ///////////////////////////////////////////////////////////////////////////////////////////
if !(isNil "laptop_west") then {
	private _tpWest = ["tpWest","Forward Deploy","\A3\ui_f\data\Map\Respawn\icon_autorespawn_ca.paa",{player setPos (pad_west getPos [random 9,random 360]);},{true}] call ace_interact_menu_fnc_createAction;

	[laptop_west, 0, ["ACE_MainActions"], _tpWest] call ace_interact_menu_fnc_addActionToObject;
};

if !(isNil "laptop_east") then {
	private _tpeast = ["tpEast","Forward Deploy","\A3\ui_f\data\Map\Respawn\icon_autorespawn_ca.paa",{player setPos (pad_east getPos [random 9,random 360]);},{true}] call ace_interact_menu_fnc_createAction;

	[laptop_east, 0, ["ACE_MainActions"], _tpeast] call ace_interact_menu_fnc_addActionToObject;
};

if !(isNil "laptop_indep") then {
	private _tpIndep = ["tpIndep","Forward Deploy","\A3\ui_f\data\Map\Respawn\icon_autorespawn_ca.paa",{player setPos (pad_indep getPos [random 9,random 360]);},{true}] call ace_interact_menu_fnc_createAction;

	[laptop_indep, 0, ["ACE_MainActions"], _tpIndep] call ace_interact_menu_fnc_addActionToObject;
};