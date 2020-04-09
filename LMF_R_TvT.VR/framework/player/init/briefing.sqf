// PLAYER BRIEFING ////////////////////////////////////////////////////////////////////////////////
/*
	- Minimally rewritten by Drgn V4karian, most code originally by nkenny.
	- File that handles player briefing. Collects data from cfg_Briefing.sqf.
*/
// INIT ///////////////////////////////////////////////////////////////////////////////////////////

#include "..\..\..\settings\cfg_Briefing_West.sqf"
#include "..\..\..\settings\cfg_Briefing_East.sqf"
#include "..\..\..\settings\cfg_Briefing_Indep.sqf"

//FUNCTION TO COLLECT AND FORMAT STRING FROM CFG_BRIEFING CORRECLTY
private _collect = {
	_lines = _this;
	private _newline = "";
	{
		_newline = _newline + " <font color='#D7DBD5'>- " + _x + "</font><br/>";
	} foreach _lines;
	_newline
};


// ADMIN TOOLS (only added after map screen) //////////////////////////////////////////////////////
[] spawn {
	sleep 5;
	player createDiarySubject ["Admin","LMF"];

	player creatediaryrecord ["Admin",["Info", format ["
	<font face='PuristaBold' color='#FFBA26' size='16'>LAMBS MISSION FRAMEWORK</font><br/>
	<font color='#D7DBD5'>Version: %1</font color><br/>
	", var_version]]];

	player creatediaryrecord ["Admin",["Admin", format ["
	<font face='PuristaBold' color='#FFBA26' size='16'>ADMIN TOOLS</font><br/>
	<font color='#D7DBD5'>This will only work if you are an admin or whitelisted as one.</font color><br/><br/>

	<font color='#A34747'>END BRIEFING STAGE</font><br/>
	- <execute expression='[player] remoteExec [""lmf_admin_fnc_endWarmup"",2]'>PRESS HERE TO END BRIEFING STAGE</execute><br/><br/>

	<font color='#A3FFA3'>RESPAWN</font><br/>
	- <execute expression='[player] remoteExec [""lmf_admin_fnc_respawnWave"",2]'>PRESS HERE TO CREATE RESPAWN WAVE</execute><br/><br/>

	<font color='#A3FFA3'>TELEPORT PLAYERS</font><br/>
	- <execute expression='[player] remoteExec [""lmf_admin_fnc_initAdminTP"",2]'>PRESS HERE TELEPORT PLAYERS TO YOU</execute><br/><br/>

	<font color='#A3FFA3'>ADD ZEUS</font><br/>
	- <execute expression='[player] remoteExec [""lmf_admin_fnc_assignZeus"",2]'>PRESS HERE TO ADD ZEUS</execute><br/><br/>

	<font color='#A3FFA3'>CHECK SERVER/HEADLESS CLIENT PERFORMANCE</font><br/>
	- <execute expression='[player] remoteExec [""lmf_admin_fnc_initPerformance"",2]'>PRESS HERE TO CHECK PERFORMANCE</execute><br/><br/>

	<font color='#A3E0FF'>ENTER SAFEMODE</font><br/>
	- <execute expression='[player,true] remoteExec [""lmf_admin_fnc_initPlayerSafety"",2]'>PRESS HERE TO ENTER SAFEMODE</execute><br/><br/>

	<font color='#A34747'>EXIT SAFEMODE</font><br/>
	- <execute expression='[player,false] remoteExec [""lmf_admin_fnc_initPlayerSafety"",2]'>PRESS HERE TO EXIT SAFEMODE</execute><br/><br/>

	<font color='#A3E0FF'>END MISSION COMPLETED</font><br/>
	- <execute expression='[player,true] remoteExec [""lmf_admin_fnc_endMission"",2]'>PRESS HERE TO END MISSION</execute><br/><br/>

	<font color='#A34747'>END MISSION FAILED</font><br/>
	- <execute expression='[player,false] remoteExec [""lmf_admin_fnc_endMission"",2]'>PRESS HERE TO END MISSION</execute>
	"]]];
};


// LOADOUT ////////////////////////////////////////////////////////////////////////////////////////
[] call lmf_player_fnc_loadoutBriefing;


// TO/E ///////////////////////////////////////////////////////////////////////////////////////////
lmf_toeBriefing = player creatediaryrecord ["Diary",["  TO/E",[] call lmf_player_fnc_toeBriefing]];


// BRIEFING ///////////////////////////////////////////////////////////////////////////////////////
private _brf_situation = _brf_situation_west;
private _brf_enemy = _brf_enemy_west;
private _brf_friend = _brf_friend_west;
private _brf_remarks = _brf_remarks_west;
private _brf_mission = _brf_mission_west;
private _brf_execution = _brf_execution_west;
private _brf_administration = _brf_administration_west;
private _side = side player;

if (_side == EAST) then {
	_brf_situation = _brf_situation_east;
	_brf_enemy = _brf_enemy_east;
	_brf_friend = _brf_friend_east;
	_brf_remarks = _brf_remarks_east;
	_brf_mission = _brf_mission_east;
	_brf_execution = _brf_execution_east;
	_brf_administration = _brf_administration_east;
};

if (_side == INDEPENDENT) then {
	_brf_situation = _brf_situation_indep;
	_brf_enemy = _brf_enemy_indep;
	_brf_friend = _brf_friend_indep;
	_brf_remarks = _brf_remarks_indep;
	_brf_mission = _brf_mission_indep;
	_brf_execution = _brf_execution_indep;
	_brf_administration = _brf_administration_indep;
};

player creatediaryrecord ["Diary",[format ["OPORD"],format ["
<font face='PuristaBold' color='#FFBA26' size='16'>SITUATION</font><br/>
<font color='#D7DBD5'>%1</font color>
<br/><br/><font face='PuristaBold' color='#A34747'>Enemy Forces</font><br/>
%2
<br/><font face='PuristaBold' color='#A3E0FF'>Friendly Forces</font><br/>
%3
<br/><font face='PuristaBold' color='#A3FFA3'>Other Considerations</font><br/>
%4
<br/><font face='PuristaBold' size='16' color='#FFBA26'>MISSION:</font><br/>
<font color='#D7DBD5'>%5</font color>
<br/><br/><font face='PuristaBold' size='16' color='#FFBA26'>EXECUTION:</font><br/>
%6
<br/><font face='PuristaBold' size='16' color='#FFBA26'>ADMINISTRATION:</font><br/>
%7
",_brf_situation,_brf_enemy call _collect,_brf_friend call _collect,_brf_remarks call _collect,_brf_mission,_brf_execution call _collect,_brf_administration call _collect]]];