// PLAYER GEAR ASSIGNING //////////////////////////////////////////////////////////////////////////
/*
	- This file handles which loadout players get on side independent.
*/
// INIT ///////////////////////////////////////////////////////////////////////////////////////////
params [["_unit",objNull]];
if !(local _unit) exitWith {};

#include "..\..\..\settings\cfg_Player_Indep.sqf"

private _role = typeOf _unit;


// CALL LOADOUT /////////////////////////////////////////////////////////////////////////
if (_role isEqualTo _PlatoonLeader) exitWith {_unit call lmf_gear_indep_fnc_platoonLeader};
if (_role isEqualTo _PlatoonSgt) exitWith {_unit call lmf_gear_indep_fnc_platoonSergeant};
if (_role isEqualTo _RTO) exitWith {_unit call lmf_gear_indep_fnc_rto};
if (_role isEqualTo _FAC) exitWith {_unit call lmf_gear_indep_fnc_fac};
if (_role isEqualTo _SquadLeader) exitWith {_unit call lmf_gear_indep_fnc_squadLeader};
if (_role isEqualTo _TeamLeader) exitWith {_unit call lmf_gear_indep_fnc_teamLeader};
if (_role isEqualTo _Rifleman) exitWith {_unit call lmf_gear_indep_fnc_rifleman};
if (_role isEqualTo _Grenadier) exitWith {_unit call lmf_gear_indep_fnc_grenadier};
if (_role isEqualTo _Autorifleman) exitWith {_unit call lmf_gear_indep_fnc_autorifleman};
if (_role isEqualTo _Marksman) exitWith {_unit call lmf_gear_indep_fnc_marksman};
if (_role isEqualTo _Medic) exitWith {_unit call lmf_gear_indep_fnc_medic};
if (_role isEqualTo _AmmoBearer) exitWith {_unit call lmf_gear_indep_fnc_ammoBearer};
if (_role isEqualTo _MachineGunner) exitWith {_unit call lmf_gear_indep_fnc_machineGunner};
if (_role isEqualTo _MgAssistant) exitWith {_unit call lmf_gear_indep_fnc_machineGunnerAssistant};
if (_role isEqualTo _AntiTankGunner) exitWith {_unit call lmf_gear_indep_fnc_atGunner};
if (_role isEqualTo _AtAssistant) exitWith {_unit call lmf_gear_indep_fnc_atAssistant};
if (_role isEqualTo _Engineer) exitWith {_unit call lmf_gear_indep_fnc_engineer};
if (_role isEqualTo _Crew) exitWith {_unit call lmf_gear_indep_fnc_crew};
if (_role isEqualTo _HeloPilot) exitWith {_unit call lmf_gear_indep_fnc_heloPilot};
if (_role isEqualTo _HeloCrew) exitWith {_unit call lmf_gear_indep_fnc_heloCrew};
if (_role isEqualTo _Pilot) exitWith {_unit call lmf_gear_indep_fnc_pilot};