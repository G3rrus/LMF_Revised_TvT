// ZEN ZEUS FUNCTIONS  ///////////////////////////////////////////////////////////////////////////
/*
	- If Zen is on this file will create several zeus modules in the "LMF" section.
*/
// INIT ///////////////////////////////////////////////////////////////////////////////////////////
//RE-APPLY LOADOUT
["LMF", "Re-apply Loadout", {
	//GET PASSED PARAMS
	params ["", "_obj"];

	//EXIT IF NO UNIT
	if (isNull _obj) exitWith {["ERROR: No Unit"] call zen_common_fnc_showMessage};

	//IF THERE IS A DUDE GIVE LOADOUT
	[_obj] remoteExec ["lmf_player_fnc_initPlayerGear"];

}] call zen_custom_modules_fnc_register;