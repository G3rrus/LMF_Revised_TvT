class common {
	tag = "lmf_common";
	class functions {
		file = "framework";
		class sortGroundVics {};
		class sortAirVics {};
		class sortSupplies {};
	};
};
class player {
	tag = "lmf_player";
	class functions {
		file = "framework\player";
		class initPlayerGear {};
		class loadoutBriefing {};
		class toeBriefing {};
		class initPlayerAirWest {};
		class initPlayerAirEast {};
		class initPlayerAirIndep {};
		class initPlayerVicWest {};
		class initPlayerVicEast {};
		class initPlayerVicIndep {};
		class initPlayerSuppWest {};
		class initPlayerSuppEast {};
		class initPlayerSuppIndep {};
		class jipChooseTarget {};
		class jipEmptySeat {};
	};
	class eventhandlers {
		file = "framework\player\eh";
		class explosionEH {};
		class hitEH {};
		class killedEH {};
		class respawnEH {};
		class viewDistanceEH {};
	};
};
class admin {
	tag = "lmf_admin";
	class functions {
		file = "framework\player\admin";
		class endWarmup {};
		class initPerformance {};
		class performanceCheck {};
		class assignZeus {};
		class respawnWave {};
		class playerSafety {};
		class initPlayerSafety {};
		class endMission {};
		class adminTP {};
		class initAdminTP {};
	};
};
class diwako_unknownwp {
	tag="diwako_unknownwp";
	class functions {
		file = "framework\shared\diw_unknownwp";
		class init {postInit = 1;};
		class firedEh {};
		class jammedEh {};
		class reloadedEh {};
	};
};
class loadouts_west {
	tag = "lmf_gear_west";
	class gear_west {
		file = "framework\player\loadouts_west";
		class platoonLeader {};
		class platoonSergeant {};
		class rto {};
		class fac {};
		class squadLeader {};
		class teamLeader {};
		class rifleman {};
		class grenadier {};
		class autorifleman {};
		class marksman {};
		class medic {};
		class engineer {};
		class machineGunner {};
		class machineGunnerAssistant {};
		class atGunner {};
		class atAssistant {};
		class ammoBearer {};
		class crew {};
		class heloPilot {};
		class heloCrew {};
		class pilot {};
		class giveLoadout {};
		class givePrimary {};
	};
};
class loadouts_east {
	tag = "lmf_gear_east";
	class gear_east {
		file = "framework\player\loadouts_east";
		class platoonLeader {};
		class platoonSergeant {};
		class rto {};
		class fac {};
		class squadLeader {};
		class teamLeader {};
		class rifleman {};
		class grenadier {};
		class autorifleman {};
		class marksman {};
		class medic {};
		class engineer {};
		class machineGunner {};
		class machineGunnerAssistant {};
		class atGunner {};
		class atAssistant {};
		class ammoBearer {};
		class crew {};
		class heloPilot {};
		class heloCrew {};
		class pilot {};
		class giveLoadout {};
		class givePrimary {};
	};
};
class loadouts_indep {
	tag = "lmf_gear_indep";
	class gear_independent {
		file = "framework\player\loadouts_indep";
		class platoonLeader {};
		class platoonSergeant {};
		class rto {};
		class fac {};
		class squadLeader {};
		class teamLeader {};
		class rifleman {};
		class grenadier {};
		class autorifleman {};
		class marksman {};
		class medic {};
		class engineer {};
		class machineGunner {};
		class machineGunnerAssistant {};
		class atGunner {};
		class atAssistant {};
		class ammoBearer {};
		class crew {};
		class heloPilot {};
		class heloCrew {};
		class pilot {};
		class giveLoadout {};
		class givePrimary {};
	};
};