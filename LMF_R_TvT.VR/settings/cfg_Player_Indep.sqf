// PLAYER EQUIPMENT DEFINITIONS INDEPENDANT ///////////////////////////////////////////////////////
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
private _Uniform = ["U_I_CombatUniform","U_I_CombatUniform_shortsleeve"]; // Uniform(s)
private _Vest = ["V_PlateCarrierIA1_dgtl"]; // Vest(s)
private _Vest_G = ["V_PlateCarrierIA2_dgtl"]; // Vest(s) GL (FAC, SQL, TL, Grenadier)
private _Vest_M = ["V_PlateCarrierIA1_dgtl"]; // Vest(s) CLS (Medic)
private _Vest_MG = ["V_PlateCarrierIA1_dgtl"]; // Vest(s) MG (AR, MMG)
private _Headgear = ["H_HelmetIA","H_Booniehat_dgtl"]; // Headgear(s) (Rest)
private _Headgear_L = ["H_MilCap_dgtl"]; // Headgear(s) (PLT CMD, PLT SGT)
private _Goggles = ["","G_Shades_Black",""]; // Goggle(s) (first string empty means do not replace player defined goggles)

//PILOT UNIFORM
private _Heli_Uniform = ["U_I_HeliPilotCoveralls"]; // Pilot Uniform(s)
private _Heli_Vest = ["V_TacVest_oli"]; // Pilot Vest(s)
private _Heli_Headgear = ["H_PilotHelmetHeli_I"]; // Pilot Headgear(s)
private _Heli_Headgear_C = ["H_CrewHelmetHeli_I"]; // Crew Headgear(s)

private _Plane_Uniform = ["U_I_pilotCoveralls"]; // Plane Uniform(s)
private _Plane_Vest = ["V_Rangemaster_belt"]; // Plane Vest(s)
private _Plane_Headgear = ["H_PilotHelmetFighter_I"]; // Plane Headgear(s)

//VEHICLE CREW UNIFORM
private _Crew_Uniform = ["U_I_CombatUniform"]; // Crew Uniform(s)
private _Crew_Vest = ["V_BandollierB_oli"]; // Crew Vest(s)
private _Crew_Headgear = ["H_HelmetCrew_I"]; // Crew Headgear(s)

//BACKPACKS
private _Backpack_Leader = ["B_TacticalPack_oli"]; // PltLead, PltSgt, Squad Leader Backpack(s)
private _Backpack_RTO = ["B_Carryall_oli"]; // RTO and FAC Backpack(s) (Radio Backpack if TFAR is used, otherwise Backpack for _Radio_B)
private _Backpack_Medic = ["B_Kitbag_sgg"]; // Medic Backpack(s)
private _Backpack_Engineer = ["B_Kitbag_sgg"]; // Engineers Backpack(s)
private _Backpack_MAT = ["B_Carryall_oli"]; // MAT, MAT Assistant Backpack(s)
private _Backpack_AR_MMG = ["B_Carryall_oli"]; // AR/MMG, AR/MMG assistant Backpack(s)
private _Backpack_Bearer = ["B_Carryall_oli"]; // Ammo Bearer Backpack(s)
private _Backpack_Crew = ["B_AssaultPack_dgtl"]; // Vehicle crew Backpack(s)
private _Backpack_Pilot = ["B_AssaultPack_dgtl"]; // Pilots Backpack(s)
private _Backpack_Light = ["B_AssaultPack_dgtl"]; // Everyone else if given Backpack(s)

//FLARE GUN
private _FlareGun = "hgun_Pistol_Signal_F"; // Flaregun
private _FlareGun_Ammo = "6Rnd_RedSignal_F"; // Flaregun Ammo

//PISTOL
private _Pistol = ["hgun_ACPC2_F"]; // Pistol
private _Pistol_Ammo = ["9Rnd_45ACP_Mag"]; // Pistol Ammo
private _Pistol_Attach1 = ["acc_flashlight_pistol"]; // Pistol Attachement #1
private _Pistol_Attach2 = ["muzzle_snds_acp"]; // Pistol Attachement #2

//SMG (Weapon Definition 1)
private _SMG = ["hgun_PDW2000_F"]; // SMG
private _SMG_Ammo = ["30Rnd_9x21_Mag"]; // SMG Ammo
private _SMG_Optic = ["optic_yorris"]; // SMG Scope
private _SMG_Attach1 = [""]; // SMG Attachement #1
private _SMG_Attach2 = ["muzzle_snds_l"]; // SMG Attachement #2
private _SMG_Bipod = [""]; // SMG Bipod

//CARBINE (Weapon Definition 2)
private _Carbine = ["arifle_Mk20C_F"]; // Carbine
private _Carbine_Ammo = ["30Rnd_556x45_Stanag"]; // Carbine Ammo
private _Carbine_Ammo_T = ["30Rnd_556x45_Stanag_Tracer_Yellow"]; // Carbine Tracer Ammo
private _Carbine_Optic = ["optic_aco"]; // Carbine Optic
private _Carbine_Attach1 = ["acc_pointer_ir"]; // Carbine Attachement #1
private _Carbine_Attach2 = ["muzzle_snds_m"]; // Carbine Attachement #2
private _Carbine_Bipod = [""]; // Carbine Bipod

//RIFLE (Weapon Definition 3)
private _Rifle = ["arifle_Mk20_F"]; // Rifle
private _Rifle_Ammo = ["30Rnd_556x45_Stanag"]; // Rifle Ammo
private _Rifle_Ammo_T = ["30Rnd_556x45_Stanag_Tracer_Yellow"]; // Rifle Tracer Ammo
private _Rifle_Optic = ["optic_aco"]; // Rifle Optic
private _Rifle_Attach1 = ["acc_pointer_ir"]; // Rifle Attachement #1
private _Rifle_Attach2 = ["muzzle_snds_m"]; // Rifle Attachement #2
private _Rifle_Bipod = [""]; // Rifle Bipod

//RIFLE GL (Weapon Definition 4)
private _Rifle_GL = ["arifle_Mk20_GL_F"]; // GL Rifle
private _Rifle_GL_Ammo = ["30Rnd_556x45_Stanag"]; // GL Rifle Ammo
private _Rifle_GL_Ammo_T = ["30Rnd_556x45_Stanag_Tracer_Yellow"]; // GL Rifle Tracer Ammo
private _Rifle_GL_UGL1 = ["1Rnd_HE_Grenade_shell"]; // UGL rounds 6x
private _Rifle_GL_UGL2 = ["UGL_FlareRed_F"]; // UGL rounds 4x
private _Rifle_GL_UGL3 = ["1Rnd_SmokeGreen_Grenade_shell"]; // UGL rounds 2x
private _Rifle_GL_UGL4 = ["1Rnd_SmokeRed_Grenade_shell"]; // UGL rounds 2x
private _Rifle_GL_Optic = ["optic_aco"]; // GL Rifle Optic
private _Rifle_GL_Attach1 = ["acc_pointer_ir"]; // GL Rifle Attachement #1
private _Rifle_GL_Attach2 = ["muzzle_snds_m"]; // GL Rifle Attachement #2
private _Rifle_GL_Bipod = [""]; // GL Rifle Bipod

//DMR (Weapon Definition 5)
private _DMR = ["srifle_EBR_F"]; // DMR
private _DMR_Ammo = ["20Rnd_762x51_Mag"]; // DMR Ammo
private _DMR_Optic = ["optic_dms"]; // DMR Optic
private _DMR_Attach1 = [""]; // DMR Attachement #1
private _DMR_Attach2 = ["muzzle_snds_b"]; // DMR Attachement #2
private _DMR_Bipod = [""]; // DMR Bipod

//LIGHT MACHINE GUN (Weapon Definition 6)
private _LMG = ["LMG_Mk200_F"]; // LMG
private _LMG_Ammo = ["200Rnd_65x39_cased_Box"]; // LMG Ammo
private _LMG_Ammo_T = ["200Rnd_65x39_cased_Box_Tracer"]; // LMG Tracer Ammo
private _LMG_Optic = ["optic_aco"]; // LMG Optic
private _LMG_Attach1 = ["acc_pointer_ir"]; // LMG Attachement #1
private _LMG_Attach2 = ["muzzle_snds_h"]; // LMG Attachement #2
private _LMG_Bipod = ["bipod_03_f_blk"]; // LMG Bipod

//MEDIUM MACHINE GUN (Weapon Definition 7)
private _MMG = ["MMG_01_tan_F"]; // MMG
private _MMG_Ammo = ["150Rnd_93x64_Mag"]; // MMG Ammo
private _MMG_Optic = ["optic_aco"]; // MMG Optic
private _MMG_Attach1 = ["acc_pointer_ir"]; // MMG Attachement #1
private _MMG_Attach2 = ["muzzle_snds_93mmg_tan"]; // MMG Attachement #2
private _MMG_Bipod = [""]; // MMG Bipod

//LIGHT ANTI-TANK
private _LAT = ["launch_NLAW_F"]; // LAT
private _LAT_Ammo = ["NLAW_F"]; // LAT Ammo

//MEDIUM ANTI-TANK
private _MAT = ["launch_MRAWS_olive_F"]; // MAT
private _MAT_Ammo = ["MRAWS_HEAT_F"]; // MAT Ammo
private _MAT_Optic = [""]; // MAT Optic

//GRENADES & EXPLOSIVES
private _Grenade = ["MiniGrenade"]; // HE Grenade
private _Grenade_Smoke = ["SmokeShell"]; // Smoke Grenade
private _Grenade_Smoke_Clr = ["SmokeShellGreen"]; // Smoke Grenade Colored
private _Explosive_Large = ["DemoCharge_Remote_Mag"]; // Heavy Explosive
private _Explosive_Small = ["ClaymoreDirectionalMine_Remote_Mag"]; // Light Explosive

//MISC
private _Binocular = "Binocular"; // Binocular Item
private _NVG = "NVGoggles_INDEP"; // NVG Item
private _NVG_Pilot = "NVGoggles_INDEP"; // NVG Item for Pilots


//ROLE DEFINITIONS (DO NOT USE THE SAME CLASSNAME TWICE)
//PLATOON
private _PlatoonLeader = "I_officer_F"; // Platoon Leader
private _PlatoonSgt = "I_soldier_F"; // Platoon Sergeant
private _RTO = "I_Survivor_F"; // RTO
private _FAC = "I_Soldier_unarmed_F"; // FAC

//SQUAD
private _SquadLeader = "I_Soldier_SL_F"; // Squad Leader
private _TeamLeader = "I_Soldier_TL_F"; // Team Leader
private _Rifleman = "I_Soldier_LAT2_F"; // Rifleman
private _Grenadier = "I_Soldier_GL_F"; // Grenadier
private _Autorifleman = "I_Soldier_AR_F"; // Autorifleman
private _Marksman = "I_Soldier_M_F"; // Marksman
private _Medic = "I_medic_F"; // Medic
private _Engineer = "I_engineer_F"; // Engineer
private _MachineGunner = "I_support_MG_F"; // Machine Gunner
private _MgAssistant = "I_Soldier_AAR_F"; // Machine Gunner Assistant
private _AntiTankGunner = "I_Soldier_AT_F"; // Anti Tank Gunner
private _AtAssistant = "I_Soldier_AAT_F"; // Anti Tank Gunner Assistant
private _AmmoBearer = "I_Soldier_A_F"; // Ammo Bearer

//VEHICLE
private _Crew = "I_crew_F"; // Vehicle Crew

//AIR
private _HeloPilot = "I_helipilot_F"; // Helicopter Pilot
private _HeloCrew = "I_helicrew_F"; // Helicopter Crew
private _Pilot = "I_pilot_F"; // Pilot

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