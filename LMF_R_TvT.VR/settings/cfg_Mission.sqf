// MISSION RELEVANT SETTINGS //////////////////////////////////////////////////////////////////////
/*
	- In this file you define mission relevant settings. It is important these settings are
	  configured properly.
*/
///////////////////////////////////////////////////////////////////////////////////////////////////
//VARIOUS
var_author = "Author"; // Your name, which shows up at the end of the warmup.
var_location = "Virtual Reality"; // Location where scenario takes place, which can be seen in intro.
var_creatorUID = "76561197997590271"; // Player UID that is being added to cfg_admin list for admin tool access.
var_warmup = true; // Start mission with warmup? (default: true)
var_jipTP = true; // Allow players that JIP to teleport? (default: false)

//RESPAWN
var_respawnType = "OFF"; // What type of Respawn? ("WAVE", "OFF" or number in seconds) (default: "OFF")
var_respawnTime = 1500; // Respawn countdown in seconds in case of "WAVE". (default: 1500)

// PLAYERS ////////////////////////////////////////////////////////////////////////////////////////
var_playerGear = true; // Should players get custom gear? (default: true)

//VIEW DISTANCE (if enabled available in CBA Settings --> LMF Viewdistance Cap)
var_viewEnabled = false; //Should view distance overwrite be enabled

var_onFootMax = 2500; // Max Viewdistance on foot
var_onFootMaxObj = 2500; // Max object Viewdistance on foot

var_airMax = 5000; // Max Viewdistance in air vehicle
var_airMaxObj = 4500; // Max object Viewdistance in air vehicle

//VEHICLES AND CRATES WEST
var_w_vic1 = "B_MRAP_01_F"; // Ground Vehicle
var_w_vic2 = "B_MRAP_01_hmg_F"; // Ground Vehicle
var_w_vic3 = "B_Truck_01_covered_F"; // Ground Vehicle
var_w_vic4 = "B_APC_Wheeled_01_cannon_F"; // Ground Vehicle

var_w_air1 = "B_Heli_Light_01_F"; // Air Vehicle
var_w_air2 = "B_Heli_Transport_01_F"; // Air Vehicle

var_w_supSmall = "Box_NATO_Ammo_F"; // Supply small supplies
var_w_supLarge = "B_supplyCrate_F"; // Supply large supplies
var_w_supSpecial = "Box_NATO_WpsSpecial_F"; // Supply special supplies
var_w_supExplosives = "Box_NATO_AmmoOrd_F"; // Supply explosives supplies

//VEHICLES AND CRATES EAST
var_e_vic1 = "O_MRAP_02_F"; // Ground Vehicle
var_e_vic2 = "O_MRAP_02_hmg_F"; // Ground Vehicle
var_e_vic3 = "O_Truck_03_covered_F"; // Ground Vehicle
var_e_vic4 = "O_APC_Wheeled_02_rcws_v2_F"; // Ground Vehicle

var_e_air1 = "O_Heli_Light_02_unarmed_F"; // Air Vehicle
var_e_air2 = "O_Heli_Light_02_dynamicLoadout_F"; // Air Vehicle

var_e_supSmall = "Box_East_Ammo_F"; // Supply small supplies
var_e_supLarge = "O_supplyCrate_F"; // Supply large supplies
var_e_supSpecial = "Box_East_WpsSpecial_F"; // Supply special supplies
var_e_supExplosives = "Box_East_AmmoOrd_F"; // Supply explosives supplies

//VEHICLES AND CRATES INDEPENDENT
var_i_vic1 = "I_MRAP_03_F"; // Ground Vehicle
var_i_vic2 = "I_MRAP_03_hmg_F"; // Ground Vehicle
var_i_vic3 = "I_Truck_02_covered_F"; // Ground Vehicle
var_i_vic4 = "I_APC_Wheeled_03_cannon_F"; // Ground Vehicle

var_i_air1 = "I_Heli_light_03_unarmed_F"; // Air Vehicle
var_i_air2 = "I_Heli_light_03_dynamicLoadout_F"; // Air Vehicle

var_i_supSmall = "Box_IND_Ammo_F"; // Supply small supplies
var_i_supLarge = "I_supplyCrate_F"; // Supply large supplies
var_i_supSpecial = "Box_IND_WpsSpecial_F"; // Supply special supplies
var_i_supExplosives = "Box_IND_AmmoOrd_F"; // Supply explosives supplies

//PLAYER GEAR (Only relevant if var_playerGear = true;)
var_tfar = false; // Use TFAR radio system instead of Acre? (default = false)
var_personalRadio = true; // Does everyone get a short range radio (AN/PRC 343)? (default: true)
var_backpacksAll = false; // Give all players backpacks? (Certain roles will have backpacks regardless) (default: false)
var_pistolAll = false; // Give all players sidearms? (default: false)
var_playerNVG = 2; // Who gets NVGs? (0=ALL, 1=PILOTS, 2=NONE) (default: 2)
var_playerMaps = 0; // Who gets Maps? (0=ALL, 1=LEADERS, 2=NONE) (default: 0)
var_keepRole = true; // Should players keep their role upon respawn? (default: true)
var_removeRadios = false; // Should player radios get deleted on death? (default: false)


// MARKERS ////////////////////////////////////////////////////////////////////////////////////////
var_groupTracker = true; // Use group-icons on map. (default: true)
var_unitTracker = true; // Use unit-icons on map. (default: false)