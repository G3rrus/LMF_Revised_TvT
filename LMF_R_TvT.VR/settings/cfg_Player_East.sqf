// PLAYER EQUIPMENT DEFINITIONS EAST //////////////////////////////////////////////////////////////
/*
	- In this file you define player related gear components that are used in the players
	  custom gear.
	- The gear from this file also comes to use in player vehicles and supply crates defined
	  in cfg_Mission.sqf
	- If you don't use the custom gear component you can ingore this file.
*/
///////////////////////////////////////////////////////////////////////////////////////////////////
//RADIOS
private _Radio_B = "ACRE_PRC117F"; // Long Range Radio (Used by RTO and FAC if ACRE is used)
private _Radio_L = "ACRE_PRC148"; // Medium Range Radio (Used by Platoon, SQLs, TLs, etc)
private _Radio_R = "ACRE_PRC343"; // Short Range Radio (Used by Rifleman, Grenadier, etc)

//INFANTRY UNIFORM
private _Uniform = ["U_O_CombatUniform_ocamo"]; // Uniform(s)
private _Vest = ["V_TacVest_khk"]; // Vest(s)
private _Vest_G = ["V_HarnessOGL_brn"]; // Vest(s) GL (FAC, SQL, TL, Grenadier)
private _Vest_M = ["V_HarnessO_brn"]; // Vest(s) CLS (Medic)
private _Vest_MG = ["V_HarnessO_brn"]; // Vest(s) MG (AR, MMG)
private _Headgear = ["H_HelmetLeaderO_ocamo","H_HelmetSpecO_ocamo","H_HelmetO_ocamo"]; // Headgear(s) (Rest)
private _Headgear_L = ["H_MilCap_ocamo"]; // Headgear(s) (PLT CMD, PLT SGT)
private _Goggles = ["","G_Shades_Black",""]; // Goggle(s) (first string empty means do not replace player defined goggles)

//PILOT UNIFORM
private _Heli_Uniform = ["U_O_PilotCoveralls"]; // Pilot Uniform(s)
private _Heli_Vest = ["V_TacVest_khk"]; // Pilot Vest(s)
private _Heli_Headgear = ["H_PilotHelmetHeli_O"]; // Pilot Headgear(s)
private _Heli_Headgear_C = ["H_CrewHelmetHeli_O"]; // Crew Headgear(s)

private _Plane_Uniform = ["U_O_PilotCoveralls"]; // Plane Uniform(s)
private _Plane_Vest = ["V_Rangemaster_belt"]; // Plane Vest(s)
private _Plane_Headgear = ["H_PilotHelmetFighter_O"]; // Plane Headgear(s)

//VEHICLE CREW UNIFORM
private _Crew_Uniform = ["U_O_SpecopsUniform_ocamo"]; // Crew Uniform(s)
private _Crew_Vest = ["V_BandollierB_khk"]; // Crew Vest(s)
private _Crew_Headgear = ["H_HelmetCrew_O"]; // Crew Headgear(s)

//BACKPACKS
private _Backpack_Leader = ["B_TacticalPack_ocamo"]; // PltLead, PltSgt, Squad Leader Backpack(s)
private _Backpack_RTO = ["B_Carryall_ocamo"]; // RTO and FAC Backpack(s) (Radio Backpack if TFAR is used, otherwise Backpack for _Radio_B)
private _Backpack_Medic = ["B_Kitbag_cbr"]; // Medic Backpack(s)
private _Backpack_Engineer = [""]; // Engineers Backpack(s)
private _Backpack_MAT = ["B_Carryall_ocamo"]; // MAT, MAT Assistant Backpack(s)
private _Backpack_AR_MMG = ["B_Carryall_ocamo"]; // AR/MMG, AR/MMG assistant Backpack(s)
private _Backpack_Bearer = ["B_Carryall_ocamo"]; // Ammo Bearer Backpack(s)
private _Backpack_Crew = ["B_AssaultPack_ocamo"]; // Vehicle crew Backpack(s)
private _Backpack_Pilot = ["B_AssaultPack_ocamo"]; // Pilots Backpack(s)
private _Backpack_Light = ["B_AssaultPack_ocamo"]; // Everyone else if given Backpack(s)

//FLARE GUN
private _FlareGun = "hgun_Pistol_Signal_F"; // Flaregun
private _FlareGun_Ammo = "6Rnd_RedSignal_F"; // Flaregun Ammo

//PISTOL
private _Pistol = ["hgun_Rook40_F"]; // Pistol
private _Pistol_Ammo = ["16Rnd_9x21_Mag"]; // Pistol Ammo
private _Pistol_Attach1 = [""]; // Pistol Attachement #1
private _Pistol_Attach2 = ["muzzle_snds_l"]; // Pistol Attachement #2

//SMG (Weapon Definition 1)
private _SMG = ["SMG_02_F"]; // SMG
private _SMG_Ammo = ["30Rnd_9x21_Mag_SMG_02_Tracer_Green"]; // SMG Ammo
private _SMG_Optic = ["optic_yorris"]; // SMG Scope
private _SMG_Attach1 = [""]; // SMG Attachement #1
private _SMG_Attach2 = ["muzzle_snds_l"]; // SMG Attachement #2
private _SMG_Bipod = [""]; // SMG Bipod

//CARBINE (Weapon Definition 2)
private _Carbine = ["arifle_Katiba_C_F"]; // Carbine
private _Carbine_Ammo = ["30Rnd_65x39_caseless_green"]; // Carbine Ammo
private _Carbine_Ammo_T = ["30Rnd_65x39_caseless_green_mag_Tracer"]; // Carbine Tracer Ammo
private _Carbine_Optic = ["optic_aco"]; // Carbine Optic
private _Carbine_Attach1 = ["acc_pointer_ir"]; // Carbine Attachement #1
private _Carbine_Attach2 = ["muzzle_snds_h"]; // Carbine Attachement #2
private _Carbine_Bipod = [""]; // Carbine Bipod

//RIFLE (Weapon Definition 3)
private _Rifle = ["arifle_Katiba_F"]; // Rifle
private _Rifle_Ammo = ["30Rnd_65x39_caseless_green"]; // Rifle Ammo
private _Rifle_Ammo_T = ["30Rnd_65x39_caseless_green_mag_Tracer"]; // Rifle Tracer Ammo
private _Rifle_Optic = ["optic_aco"]; // Rifle Optic
private _Rifle_Attach1 = ["acc_pointer_ir"]; // Rifle Attachement #1
private _Rifle_Attach2 = ["muzzle_snds_h"]; // Rifle Attachement #2
private _Rifle_Bipod = [""]; // Rifle Bipod

//RIFLE GL (Weapon Definition 4)
private _Rifle_GL = ["arifle_Katiba_GL_F"]; // GL Rifle
private _Rifle_GL_Ammo = ["30Rnd_65x39_caseless_green"]; // GL Rifle Ammo
private _Rifle_GL_Ammo_T = ["30Rnd_65x39_caseless_green_mag_Tracer"]; // GL Rifle Tracer Ammo
private _Rifle_GL_UGL1 = ["1Rnd_HE_Grenade_shell"]; // UGL rounds 6x
private _Rifle_GL_UGL2 = ["UGL_FlareRed_F"]; // UGL rounds 4x
private _Rifle_GL_UGL3 = ["1Rnd_SmokeGreen_Grenade_shell"]; // UGL rounds 2x
private _Rifle_GL_UGL4 = ["1Rnd_SmokeRed_Grenade_shell"]; // UGL rounds 2x
private _Rifle_GL_Optic = ["optic_aco"]; // GL Rifle Optic
private _Rifle_GL_Attach1 = ["acc_pointer_ir"]; // GL Rifle Attachement #1
private _Rifle_GL_Attach2 = ["muzzle_snds_h"]; // GL Rifle Attachement #2
private _Rifle_GL_Bipod = [""]; // GL Rifle Bipod

//DMR (Weapon Definition 5)
private _DMR = ["srifle_DMR_01_F"]; // DMR
private _DMR_Ammo = ["10Rnd_762x54_Mag"]; // DMR Ammo
private _DMR_Optic = ["optic_dms"]; // DMR Optic
private _DMR_Attach1 = [""]; // DMR Attachement #1
private _DMR_Attach2 = ["muzzle_snds_b"]; // DMR Attachement #2
private _DMR_Bipod = [""]; // DMR Bipod

//LIGHT MACHINE GUN (Weapon Definition 6)
private _LMG = ["LMG_Zafir_F"]; // LMG
private _LMG_Ammo = ["150Rnd_762x54_Box"]; // LMG Ammo
private _LMG_Ammo_T = ["150Rnd_762x54_Box_Tracer"]; // LMG Tracer Ammo
private _LMG_Optic = ["optic_aco"]; // LMG Optic
private _LMG_Attach1 = ["acc_pointer_ir"]; // LMG Attachement #1
private _LMG_Attach2 = [""]; // LMG Attachement #2
private _LMG_Bipod = [""]; // LMG Bipod

//MEDIUM MACHINE GUN (Weapon Definition 7)
private _MMG = ["MMG_01_hex_F"]; // MMG
private _MMG_Ammo = ["150Rnd_93x64_Mag"]; // MMG Ammo
private _MMG_Optic = ["optic_aco"]; // MMG Optic
private _MMG_Attach1 = ["acc_pointer_ir"]; // MMG Attachement #1
private _MMG_Attach2 = ["muzzle_snds_93mmg"]; // MMG Attachement #2
private _MMG_Bipod = [""]; // MMG Bipod

//LIGHT ANTI-TANK
private _LAT = ["launch_RPG32_F"]; // LAT
private _LAT_Ammo = ["RPG32_F"]; // LAT Ammo

//MEDIUM ANTI-TANK
private _MAT = ["launch_MRAWS_sand_F"]; // MAT
private _MAT_Ammo = ["MRAWS_HEAT_F"]; // MAT Ammo
private _MAT_Optic = [""]; // MAT Optic

//GRENADES & EXPLOSIVES
private _Grenade = ["MiniGrenade"]; // HE Grenade
private _Grenade_Smoke = ["SmokeShell"]; // Smoke Grenade
private _Grenade_Smoke_Clr = ["SmokeShellGreen"]; // Smoke Grenade Colored
private _Explosive_Large = ["DemoCharge_Remote_Mag"]; // Heavy Explosive
private _Explosive_Small = ["APERSBoundingMine_Range_Mag"]; // Light Explosive

//MISC
private _Binocular = "Binocular"; // Binocular Item
private _NVG = "NVGoggles_OPFOR"; // NVG Item
private _NVG_Pilot = "NVGoggles_OPFOR"; // NVG Item for Pilots


//ROLE DEFINITIONS (DO NOT USE THE SAME CLASSNAME TWICE)
//PLATOON
private _PlatoonLeader = "O_officer_F"; // Platoon Leader
private _PlatoonSgt = "O_Soldier_F"; // Platoon Sergeant
private _RTO = "O_Survivor_F"; // RTO
private _FAC = "O_Soldier_unarmed_F"; // FAC

//SQUAD
private _SquadLeader = "O_Soldier_SL_F"; // Squad Leader
private _TeamLeader = "O_Soldier_TL_F"; // Team Leader
private _Rifleman = "O_Soldier_LAT_F"; // Rifleman
private _Grenadier = "O_Soldier_GL_F"; // Grenadier
private _Autorifleman = "O_Soldier_AR_F"; // Autorifleman
private _Marksman = "O_soldier_M_F"; // Marksman
private _Medic = "O_medic_F"; // Medic
private _Engineer = "O_engineer_F"; // Engineer
private _MachineGunner = "O_HeavyGunner_F"; // Machine Gunner
private _MgAssistant = "O_Soldier_AAR_F"; // Machine Gunner Assistant
private _AntiTankGunner = "O_Soldier_AT_F"; // Anti Tank Gunner
private _AtAssistant = "O_Soldier_AAT_F"; // Anti Tank Gunner Assistant
private _AmmoBearer = "O_Soldier_A_F"; // Ammo Bearer

//VEHICLE
private _Crew = "O_crew_F"; // Vehicle Crew

//AIR
private _HeloPilot = "O_helipilot_F"; // Helicopter Pilot
private _HeloCrew = "O_helicrew_F"; // Helicopter Crew
private _Pilot = "O_Pilot_F"; // Pilot

//WEAPON DEFINITIONS (WHO GETS WHICH GUN)
//PLATOON
private _Gun_PltL = 3; // Platoon Leader
private _Gun_PltSgt = 3; // Platoon Sergeant
private _Gun_Rto = 2; // RTO
private _Gun_Fac = 4; // FAC

//SQUAD
private _Gun_Sql = 4; // Squad Leader
private _Gun_Tl = 4; // Team Leader
private _Gun_Rif = 3; // Rifleman
private _Gun_Gren = 4; // Grenadier
private _Gun_Ar = 6; // Autorifleman
private _Gun_Mark = 5; // Marksman
private _Gun_Cls = 2; // Medic
private _Gun_Eng = 2; // Engineer
private _Gun_MMG = 7; // Machine Gunner
private _Gun_MMGA = 2; // Machine Gunner Assistant
private _Gun_AT = 2; // Anti Tank Gunner
private _Gun_ATA = 3; // Anti Tank Gunner Assistant
private _Gun_AB = 3; // Ammo Bearer

//VEHICLE
private _Gun_Crew = 1; // Vehicle Crew

//AIR
private _Gun_HP = 1; // Helicopter Pilot
private _Gun_HC = 2; // Helicopter Crew