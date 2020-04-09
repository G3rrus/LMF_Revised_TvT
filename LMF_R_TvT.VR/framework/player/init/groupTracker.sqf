// GROUP MARKERS ALTERNATE /////////////////////////////////////////////////////////////////////////
/*
	- Creates group markers following around the player groups. When clicked while map is open,
	  it will list current members of the group.
*/
// INIT ///////////////////////////////////////////////////////////////////////////////////////////
//GENERAL GROUP ICON SETTINGS
if !(hasInterface) exitWith {};
waitUntil {time > 1};
setGroupIconsVisible [true,false];
setGroupIconsSelectable true;
var_iconColor = [0,0,0,1];
private _side = side player;
if (_side == WEST) then {var_iconColor = [0,0.3,0.6,1]};
if (_side == EAST) then {var_iconColor = [0.5,0,0,1]};
if (_side == INDEPENDENT) then {var_iconColor = [0,0.5,0,1]};


// FUNCTION CREATE THE GROUP ICON /////////////////////////////////////////////////////////////////
[_side] spawn {
	params [["_side",WEST]];

	private _lmf_fnc_createIcon = {
		params [["_grp",grpNull],["_type","b_inf"],["_txt",""]];

		if (_type == "b_inf") then {
			if (side _grp == EAST) then {_type = "o_inf";};
			if (side _grp == INDEPENDENT) then {_type = "n_inf";};
		};
		_grp setVariable ["lmf_bft", true];
		clearGroupIcons _grp;
		_grp addGroupIcon [_type,[0,0]];
		_grp setgroupIconParams [var_iconColor,_txt,1,true];
	};

	//SPECIAL GROUPS
	if (_side == WEST) then {
		if !(isNil "Grp_PLTHQ_West") then {[Grp_PLTHQ_West,"b_hq","PLT HQ"] call _lmf_fnc_createIcon};

		if !(isNil "Grp_SWD1_West") then {[Grp_SWD1_West,"b_mech_inf","SWORD1"] call _lmf_fnc_createIcon};
		if !(isNil "Grp_SWD2_West") then {[Grp_SWD2_West,"b_mech_inf","SWORD2"] call _lmf_fnc_createIcon};
		if !(isNil "Grp_SWD3_West") then {[Grp_SWD3_West,"b_mech_inf","SWORD3"] call _lmf_fnc_createIcon};
		if !(isNil "Grp_SWD4_West") then {[Grp_SWD4_West,"b_mech_inf","SWORD4"] call _lmf_fnc_createIcon};

		if !(isNil "Grp_CDR1_West") then {[Grp_CDR1_West,"b_air","CONDOR1"] call _lmf_fnc_createIcon};

		if !(isNil "Grp_EGL1_West") then {[Grp_EGL1_West,"b_plane","EAGLE1"] call _lmf_fnc_createIcon};
	};

	if (_side == EAST) then {
		if !(isNil "Grp_PLTHQ_East") then {[Grp_PLTHQ_East,"o_hq","PLT HQ"] call _lmf_fnc_createIcon};

		if !(isNil "Grp_SWD1_East") then {[Grp_SWD1_East,"o_mech_inf","SWORD1"] call _lmf_fnc_createIcon};
		if !(isNil "Grp_SWD2_East") then {[Grp_SWD2_East,"o_mech_inf","SWORD2"] call _lmf_fnc_createIcon};
		if !(isNil "Grp_SWD3_East") then {[Grp_SWD3_East,"o_mech_inf","SWORD3"] call _lmf_fnc_createIcon};
		if !(isNil "Grp_SWD4_East") then {[Grp_SWD4_East,"o_mech_inf","SWORD4"] call _lmf_fnc_createIcon};

		if !(isNil "Grp_CDR1_East") then {[Grp_CDR1_East,"o_air","CONDOR1"] call _lmf_fnc_createIcon};

		if !(isNil "Grp_EGL1_East") then {[Grp_EGL1_East,"o_plane","EAGLE1"] call _lmf_fnc_createIcon};
	};

	if (_side == INDEPENDENT) then {
		if !(isNil "Grp_PLTHQ_Indep") then {[Grp_PLTHQ_Indep,"n_hq","PLT HQ"] call _lmf_fnc_createIcon};

		if !(isNil "Grp_SWD1_Indep") then {[Grp_SWD1_Indep,"n_mech_inf","SWORD1"] call _lmf_fnc_createIcon};
		if !(isNil "Grp_SWD2_Indep") then {[Grp_SWD2_Indep,"n_mech_inf","SWORD2"] call _lmf_fnc_createIcon};
		if !(isNil "Grp_SWD3_Indep") then {[Grp_SWD3_Indep,"n_mech_inf","SWORD3"] call _lmf_fnc_createIcon};
		if !(isNil "Grp_SWD4_Indep") then {[Grp_SWD4_Indep,"n_mech_inf","SWORD4"] call _lmf_fnc_createIcon};

		if !(isNil "Grp_CDR1_Indep") then {[Grp_CDR1_Indep,"n_air","CONDOR1"] call _lmf_fnc_createIcon};

		if !(isNil "Grp_EGL1_Indep") then {[Grp_EGL1_Indep,"n_plane","EAGLE1"] call _lmf_fnc_createIcon};
	};

	while {true} do {
		{
			if !(_x getVariable ["lmf_bft",false]) then {
				[_x,"b_inf",toUpper (groupid _x)] call _lmf_fnc_createIcon;
			};
		} forEach (allGroups select {side _x == _side});
		sleep 120;
	};
};


//EVEN HANDLERS ///////////////////////////////////////////////////////////////////////////////////
//MOUSE HOVER OVER ICON EH
private _hoverEH = addMissionEventHandler ["GroupIconOverEnter",{
	params ["_is3D","_group"];

	//ICON PARAMETERS
	_group setGroupIconParams [var_iconColor,groupID _group,1.3,true];
}];

//MOUSE HOVER LEAVE ICON EH
private _hoverLeaveEH = addMissionEventHandler ["GroupIconOverLeave",{
	params ["_is3D","_group"];

	//ICON PARAMETERS
	_group setGroupIconParams [var_iconColor,groupID _group,1,true];

	//FADE TEXT
	"lmf_layer2" cutFadeOut 0;
}];

//ON CLICKING ICON
private _clickIconEH = addMissionEventHandler ["GroupIconClick",{
	params ["_is3D","_group","_waypointId","_mouseButton"];

	//CHECK FOR LEFT CLICK
	if (_mouseButton isEqualTo 0) then {
		//GET ARRAY WITH UNIT NAMES FROM GROUP
		private _nameArray = [];
		{
			_nameArray pushBack name _x;
		} forEach units _group;

		private _nameList = _nameArray joinString "<br/>";
		private _textToDisplay = format [
			"<t shadow='2' color='#FFBA26' size='0.75'align='center'>%1</t><br/><t shadow='2' color='#D7DBD5' size='0.5'align='center'>%2</t>",
			groupID _group,_nameList
		];

		//CREATE LAYER AND SPAWN TEXT
		private _layerID = ["lmf_layer2"] call BIS_fnc_rscLayer;
		[_textToDisplay,(getMousePosition#0) - 0.65,(getMousePosition#1) - 0.1,10,0,0,_layerID] spawn BIS_fnc_dynamicText;

		//MAKE SURE TEXT FADES WHEN EXITING MAP
		[{!visibleMap},{"lmf_layer2" cutFadeOut 0},[]] call CBA_fnc_waitUntilAndExecute;
	};
}];