// XEH POST INIT //////////////////////////////////////////////////////////////////////////////////
/*
	- Big thanks to diwako for the help with assembling most of the more complicated code in here.
	- File that handles what happens post init.
*/
///////////////////////////////////////////////////////////////////////////////////////////////////
// EVERYONE ///////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
//DISABLE VARIOUS
enableSentences false;
enableEnvironment [false, true];
enableSaving [false,false];

//ZEUS PINGED EH
["ModuleCurator_F", "initPost", {
	params ["_module"];
	_module addEventHandler ["CuratorPinged", {
		params ["_curator", "_unit"];
		private _zeus = getAssignedCuratorUnit _curator;
		if (isNull _zeus) then {
			unassignCurator _curator;
			deleteVehicle _curator;
		} else {
			if (_zeus == player) then {
				systemChat format ["%1 just pinged", name _unit];
				format ["Ping received by %1!",name player] remoteExec ["systemChat", _unit];
			};
		};
	}];
}, false, [], true] call CBA_fnc_addClassEventHandler;

//RADIO CHANNEL LABLES
if !(var_tfar) then {
	[] execVM "framework\shared\init\acreChannelLabels.sqf";
};

//DISABLE RHS ENGINE STARTUP
RHS_ENGINE_STARTUP_OFF = false;



///////////////////////////////////////////////////////////////////////////////////////////////////
// SERVER /////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
if (isServer) then {
	//BROADCAST WARMUP IF ENABLED
	if (var_warmup) then {
		lmf_warmup = true;
		publicVariable "lmf_warmup";
		[] execVM "framework\server\init\resetDate.sqf";
	} else {
		lmf_warmup = false;
		publicVariable "lmf_warmup";
	};

    //VARIABLE FOR INITPLAYERSAFETY
	lmf_isSafe = false;

	//UPDATE TOE BRIEFING ENTRY
	addMissionEventHandler ["PlayerConnected",{
		["lmf_updateToe",[]] call CBA_fnc_globalEvent;
	}];

	addMissionEventHandler ["PlayerDisconnected",{
		[{["lmf_updateToe",[]] call CBA_fnc_globalEvent;}, [], 5] call CBA_fnc_waitAndExecute;
	}];
};



///////////////////////////////////////////////////////////////////////////////////////////////////
// AI /////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////



///////////////////////////////////////////////////////////////////////////////////////////////////
// PLAYER /////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
//MAKE SURE ITS REALLY A PLAYER
if !(hasinterface) exitWith {};
waitUntil {!isNull player};

//GROUP MARKERS
if (var_groupTracker && !(missionNamespace getVariable ["ace_map_BFT_Enabled",false])) then {
	[] execVM "framework\player\init\groupTracker.sqf";
};

//UNIT TRACKER
if (var_unitTracker) then {[] execVM "framework\player\init\unitTracker.sqf";};

//TEAM COLORS
[] execVM "framework\player\init\teamColors.sqf";

//PLAYER RATING
player addEventHandler ["HandleRating", {0}];

//EXPLOSION EFFECT
player addEventHandler ["Explosion", {
	_this spawn lmf_player_fnc_explosionEH;
}];

//HIT EFFECT
player addEventHandler ["Hit", {
	_this spawn lmf_player_fnc_hitEH;
}];

//KILLED EH
player addEventHandler ["Killed", {
	_this spawn lmf_player_fnc_killedEH;
}];

//KILLED MESSAGES
["acex_killtracker_death",{
	params ["_killerName", "_killInfo"];
	[{titleText [format ["Died: %1 %2", _this select 0, _this select 1], "PLAIN", 0.5, true,true];}, [_killerName,_killInfo], 4] call CBA_fnc_waitAndExecute;
}] call CBA_fnc_addEventHandler;

//RESPAWN EH
player addEventHandler ["Respawn", {
	_this spawn lmf_player_fnc_respawnEH;
}];

//PLAYER GEAR
if (var_playerGear) then {
	[player] call lmf_player_fnc_initPlayerGear;
};

//BRIEFING
[] execVM "framework\player\init\briefing.sqf";

//PLAYER VIEWDISTANCE
if (var_viewEnabled) then {
	["vehicle",{
		[] call lmf_player_fnc_viewDistanceEH;
	}] call CBA_fnc_addPlayerEventHandler;
};

//ACE ACTIONS
[] execVM "framework\player\init\aceActions.sqf";

//JIP
if (var_jipTP && {CBA_missionTime > 5*60}) then {
	[] execVM "framework\player\init\jipTeleport.sqf";
};

//UPDATE TOE EVENT
["lmf_updateToe",{
	player setDiaryRecordText [["Diary", lmf_toeBriefing], ["  TO/E",[] call lmf_player_fnc_toeBriefing]];
}] call CBA_fnc_addEventHandler;

//INTRO + WARMUP
[] execVM "framework\player\init\warmup.sqf";

//ZEUS MODULES
if !(isNil "zen_custom_modules_fnc_register") then {
	[] execVM "framework\player\init\zenModules.sqf";
};

//CHANNEL SETUP
0 enableChannel true;
1 enableChannel true;
2 enableChannel false;
3 enableChannel true;
4 enableChannel false;
5 enableChannel false;