// PLAYER BRIEFING EAST ///////////////////////////////////////////////////////////////////////////
/*
	- In this file you write the briefing for your mission. Most of it is pretty self-explanatory.
	  Category specific behaviour is explained at the beginnig of each category. Things such as
	  linking markers are supported.
*/
// INIT ///////////////////////////////////////////////////////////////////////////////////////////
//SITUATION
private _brf_situation_east = "
This is the Situation section of the briefing. It is ment to provide players with a general idea of whats going on.<br/>
You can <marker name='respawn_east'>LINK</marker> to map markers in the briefing.
";

//ENEMY FORCES (every line must start and end with a " and all but the last must have a , at the end.)
private _brf_enemy_east = [
	"Enemy Army Unit:",
	"Possible Information #1",
	"Possible Information #2",
	"Possible Information #n",
	"Vehicle threats: vehicle threat #1, vehicle threat #n"
];

//FRIENDLY FORCES (every line must start and end with a " and all but the last must have a , at the end.)
private _brf_friend_east = [
	"Friendly Army Unit (players)",
	"Possible Information #1",
	"Possible Information #2",
	"Possible Information #n",
	"Friendly Vehicles (players): vehicles #1, vehicles #n"
];

//OTHER REMARKS (every line must start and end with a " and all but the last must have a , at the end.)
private _brf_remarks_east = [
	"These could be remarks about terrain.",
	"These could be remarks about weather.",
	"These could be remarks about anything really. "
];


//MISSION DESCRIPTION
private _brf_mission_east = "
Here you let the players know what their mission will be.
";

//EXECUTION (every line must start and end with a " and all but the last must have a , at the end.)
private _brf_execution_east = [
	"Mission step #1.",
	"Mission step #2.",
	"Mission step #n."
];

//LOGISTICS (every line must start and end with a " and all but the last must have a , at the end.)
private _brf_administration_east = [
	"Could be a remark about available supplies.",
	"Could be a remark about available repairs.",
	"Could be any remark helpful in logistics or administration."
];