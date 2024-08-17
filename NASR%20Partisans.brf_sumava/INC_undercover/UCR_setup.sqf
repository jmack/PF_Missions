/*

Setup options for INC_undercover undercover / civilian recruitment script by Incontinentia.

Please check each setting carefully otherwise the script may not function properly in your scenario. All classnames must have quotation marks ("Item_Random_F")

*/

//-------------------------Player settings-------------------------

_undercoverUnitSide = west;             //What side is/are the undercover unit(s) on? (Can be east, west or independent - only one side supported)

//-------------------------General Settings-------------------------

_debug = false;                         //Set to true for debug
_fullAIfunctionality = true;            //Enable all checks on AI (may degrade performace very slightly for large groups, 15+)
_easyMode = true;                       //Disguise checks will also reveal if the player's disguise is working or not

_racism = false;                         //Enemies will notice if you aren't the race of the faction you're pretending to be (making you easier to detect if nothing is covering your face)
_racProfFacCiv = 1;                     //(Number) Multiplies the effect of racial profiling. Lower this number to simulate more multicultural civilian population
_racProfFacEny = 1;                     //(Number) Multiplies the effect of racial profiling. Lower this number to simulate more multicultural enemy forces

_regEnySide = east;                     //Units of this side will be classed as regular enemies and will share information about detected units across entire map (Side: can be east, west, independent) - if you don't need this, use sideEmpty.
_regBarbaric = false;                   //(Bool - true or false) Will this side lash out on civilians if it takes casualties and doesn't know the attacker?
_regDetectRadius = 10;                  //Default detection radius for regular troops (this will expand and contract based on weather, time of day, and how the undercover unit is acting - civilians within this radius will be under much more scrutinty)

_asymEnySide = sideEmpty;               //Units of this side will be classed as asymetric enemies (Side: can be east, west, independent) - if you don't need this, use sideEmpty.
_asymBarbaric = true;                   //(Bool - true or false) Will this side have a small chance of lashing out on civilians if it takes casualties and doesn't know the attacker?
_asymDetectRadius = 15;                 //Default detection radius for asym troops (this will expand and contract based on weather, time of day, and how the undercover unit is acting - civilians within this radius will be under much more scrutinty)

_globalSuspicionModifier = 1;           //Scales the level of suspicion of enemies. 1 is default, 2 means units are twice as likely to see through undercover unit's disguises, 0.5 means half as likely etc.

//-------------------------Civilian Disguise settings-------------------------

_civFactions = ["CIV_F"]; //Array of factions whose vests are safe for undercover units to wear

//(Array of classnames) Safe vests (on top of the specific factions above - useful if faction has randomisation script or to add items that are not used by the faction)
_civilianVests = [
  "rhs_6sh92",
  "V_DeckCrew_yellow_F",
  "V_LegStrapBag_black_F",
  "V_LegStrapBag_coyote_F",
  "V_LegStrapBag_olive_F",
  "V_Pocketed_black_F",
  "V_Pocketed_coyote_F",
  "V_Pocketed_olive_F",
  "V_Safety_blue_F",
  "V_Safety_yellow_F",
  "V_Safety_orange_F",
  "paV_Safety_security_F",
  "CUP_V_OI_TKI_Jacket5_04",
  "CUP_V_OI_TKI_Jacket5_01",
  "CUP_V_OI_TKI_Jacket5_02",
  "CUP_V_OI_TKI_Jacket5_03",
  "CUP_V_OI_TKI_Jacket5_05",
  "CUP_V_OI_TKI_Jacket5_06",
  "CUP_V_OI_TKI_Jacket6_01",
  "CUP_V_OI_TKI_Jacket6_02",
  "CUP_V_OI_TKI_Jacket6_03",
  "CUP_V_OI_TKI_Jacket6_04",
  "CUP_V_OI_TKI_Jacket6_05",
  "CUP_V_OI_TKI_Jacket6_06",
  "usm_vest_safety"
];

//(Array of classnames) Safe uniforms (on top of the specific factions above - useful if faction has randomisation script or to add items that are not used by the faction)
_civilianUniforms = [
  "CUP_U_C_AirMedic_orange_01",
  "CUP_U_C_AirMedic_red_01",
  "CUP_U_C_AirMedic_yellow_01",
  "U_I_C_Soldier_Bandit_4_F",
  "U_I_C_Soldier_Bandit_1_F",
  "U_I_C_Soldier_Bandit_2_F",
  "U_I_C_Soldier_Bandit_3_F",
  "U_I_C_Soldier_Bandit_5_F",
  "U_C_ArtTShirt_01_v6_F",
  "TCGM_F_Mini_Casual2",
  "U_C_Man_casual_2_F",
  "TCGM_F_Mini_Casual5",
  "U_C_ArtTShirt_01_v2_F",
  "TCGM_F_Mini_Casual3",
  "U_C_Man_casual_3_F",
  "TCGM_F_Mini_Casual4",
  "TCGM_F_Mini_Navy",
  "U_C_Man_casual_1_F",
  "U_C_ArtTShirt_01_v5_F",
  "TCGM_F_Mini_ScotchR",
  "U_C_ArtTShirt_01_v3_F",
  "CUP_U_O_CHDKZ_Bardak",
  "CUP_U_O_CHDKZ_Lopotev",
  "CUP_U_C_Citizen_02",
  "CUP_U_C_Citizen_01",
  "CUP_U_C_Citizen_03",
  "CUP_U_C_Citizen_04",
  "U_C_Poloshit_blue",
  "U_C_Poloshit_burgundy",
  "U_C_Poloshit_redwhite",
  "U_C_Poloshit_salmon",
  "U_C_Poloshit_stripped",
  "U_C_Poloshit_tricolour",
  "U_C_ConstructionCoverall_Black_F",
  "U_C_ConstructionCoverall_Red_F",
  "U_C_ConstructionCoverall_Blue_F",
  "U_C_ConstructionCoverall_Vrana_F",
  "U_C_Uniform_Farmer_01_F",
  "cwr3_i_uniform_coverall",
  "cwr3_i_uniform_coverall_grey",
  "CUP_U_C_Fireman_01",
  "cwr3_o_uniform_pilot",
  "cwr3_o_uniform_pilot_jet",
  "U_C_FormalSuit_01_black_F",
  "U_C_FormalSuit_01_blue_F",
  "U_C_FormalSuit_01_gray_F",
  "U_C_FormalSuit_01_khaki_F",
  "U_C_FormalSuit_01_tshirt_black_F",
  "U_C_FormalSuit_01_tshirt_gray_F",
  "U_BG_Guerilla1_1",
  "U_BG_Guerilla1_2_F",
  "U_BG_Guerilla2_2",
  "U_BG_Guerilla2_1",
  "U_BG_Guerilla2_3",
  "U_BG_Guerilla3_1",
  "U_OrestesBody",
  "CUP_U_C_Labcoat_01",
  "CUP_U_C_Labcoat_02",
  "CUP_U_C_Labcoat_03",
  "U_I_L_Uniform_01_tshirt_black_F",
  "U_I_L_Uniform_01_tshirt_skull_F",
  "U_I_L_Uniform_01_tshirt_sport_F",
  "U_Marshal",
  "TCGM_F_Mini_Marshal",
  "U_C_Mechanic_01_F",
  "CUP_U_C_Mechanic_01",
  "CUP_U_C_Mechanic_02",
  "CUP_U_C_Mechanic_03",
  "CUP_U_I_GUE_Anorak_01",
  "CUP_U_I_GUE_Anorak_03",
  "TCGM_F_Paramedic",
  "CUP_U_C_Rescuer_01",
  "U_C_Paramedic_01_F",
  "CUP_U_C_Pilot_01",
  "cwr3_c_pilot_uniform",
  "CUP_I_B_PMC_Unit_20",
  "CUP_I_B_PMC_Unit_21",
  "CUP_I_B_PMC_Unit_19",
  "CUP_I_B_PMC_Unit_17",
  "CUP_I_B_PMC_Unit_13",
  "CUP_I_B_PMC_Unit_14",
  "CUP_I_B_PMC_Unit_15",
  "CUP_I_B_PMC_Unit_12",
  "CUP_I_B_PMC_Unit_3",
  "CUP_I_B_PMC_Unit_2",
  "CUP_I_B_PMC_Unit_1",
  "CUP_I_B_PMC_Unit_4",
  "CUP_I_B_PMC_Unit_7",
  "CUP_I_B_PMC_Unit_6",
  "CUP_I_B_PMC_Unit_5",
  "CUP_I_B_PMC_Unit_8",
  "CUP_I_B_PMC_Unit_11",
  "CUP_I_B_PMC_Unit_10",
  "CUP_I_B_PMC_Unit_9",
  "CUP_I_B_PMC_Unit_42",
  "CUP_I_B_PMC_Unit_41",
  "CUP_I_B_PMC_Unit_43",
  "CUP_I_B_PMC_Unit_40",
  "CUP_I_B_PMC_Unit_39",
  "CUP_I_B_PMC_Unit_36",
  "CUP_I_B_PMC_Unit_38",
  "CUP_I_B_PMC_Unit_37",
  "CUP_I_B_PMC_Unit_23",
  "CUP_I_B_PMC_Unit_31",
  "CUP_I_B_PMC_Unit_32",
  "polo_pizzaplace",
  "polo_securityBlkGold",
  "polo_securityWhtGold",
  "polo_uspo",
  "CUP_U_C_Profiteer_02",
  "CUP_U_C_Profiteer_01",
  "CUP_U_C_Profiteer_03",
  "CUP_U_C_Profiteer_04",
  "CUP_U_C_racketeer_01",
  "CUP_U_C_racketeer_02",
  "CUP_U_C_racketeer_03",
  "CUP_U_C_racketeer_04",
  "CUP_U_C_Rocker_01",
  "CUP_U_C_Rocker_02",
  "CUP_U_C_Rocker_03",
  "CUP_U_C_Rocker_04",
  "U_pa_security_blkGold_1",
  "U_pa_security_whtGold_1",
  "CUP_U_O_SLA_Overalls_Pilot",
  "CUP_U_O_SLA_Overalls_Tank",
  "U_C_man_sport_1_F",
  "U_C_man_sport_2_F",
  "U_C_man_sport_3_F",
  "TCGM_F_Sport_1",
  "TCGM_F_Sport_2",
  "TCGM_F_Sport_3",
  "TCGM_F_Sport_4",
  "TCGM_F_Sport_5",
  "CUP_U_C_Suit_01",
  "CUP_U_C_Suit_02",
  "CUP_U_C_Suit_03",
  "CUP_U_C_Functionary_jacket_02",
  "CUP_U_C_Functionary_jacket_01",
  "CUP_U_C_Functionary_jacket_03",
  "U_C_Man_casual_6_F",
  "U_C_Man_casual_4_F",
  "U_C_Man_casual_5_F",
  "tshirt_bulldozer",
  "tshirt_classictruck_1",
  "tshirt_freedom",
  "tshirt_goose",
  "tshirt_talkingsticksand",
  "shirt_tanBlank_1",
  "shirt_appealtoheaven",
  "nottoday_1",
  "TRYK_U_B_PCUHsW8",
  "TRYK_U_B_PCUHsW9",
  "TRYK_shirts_DENIM_BK",
  "TRYK_shirts_DENIM_BL",
  "TRYK_shirts_DENIM_BWH",
  "TRYK_shirts_DENIM_R",
  "TRYK_shirts_DENIM_RED2",
  "TRYK_shirts_DENIM_WH",
  "TRYK_shirts_DENIM_WHB",
  "TRYK_shirts_DENIM_ylb",
  "TRYK_U_denim_hood_blk",
  "TRYK_U_denim_hood_nc",
  "TRYK_U_denim_jersey_blk",
  "TRYK_U_denim_jersey_blu",
  "TRYK_U_B_BLK_T_BG_BK",
  "TRYK_U_B_RED_T_BG_BR",
  "TRYK_U_B_BLK_T_BG_WH",
  "TRYK_U_B_BLK_T_BK",
  "TRYK_U_B_RED_T_BR",
  "TRYK_U_B_BLK_T_WH",
  "TRYK_U_B_Denim_T_BG_BK",
  "TRYK_U_B_Denim_T_BG_WH",
  "TRYK_U_B_Denim_T_BK",
  "TRYK_U_B_Denim_T_WH",
  "CUP_U_C_Woodlander_01",
  "CUP_U_C_Woodlander_02",
  "CUP_U_C_Woodlander_03",
  "CUP_U_C_Woodlander_04",
  "U_C_Poor_1"
  ];

//(Array of classnames) Safe headgear (will automatically include civilian headgear classes - useful if faction has randomisation script or to add items that are not used by the faction)
_civilianHeadgear = [
  "rhssaf_bandana_digital",
  "rhssaf_bandana_digital_desert",
  "rhssaf_bandana_md2camo",
  "rhssaf_bandana_oakleaf",
  "rhssaf_bandana_smb",
  "H_Bandanna_gry",
  "H_Bandanna_blu",
  "H_Bandanna_cbr",
  "CUP_H_FR_BandanaGreen",
  "H_Bandanna_khk",
  "cwr3_o_bandanna_klmk",
  "H_Bandanna_mcamo",
  "cwr3_o_bandanna_od",
  "H_Bandanna_sgg",
  "H_Bandanna_sand",
  "H_Bandanna_surfer",
  "H_Bandanna_surfer_blk",
  "H_Bandanna_surfer_grn",
  "CUP_H_FR_BandanaWdl",
  "H_Bandanna_camo",
  "rhsgref_bcap_specter",
  "usm_bdu_cap_blk",
  "usm_bdu_cap_blu",
  "usm_bdu_cap_dcu",
  "usm_bdu_cap_des",
  "usm_bdu_cap_erdl",
  "usm_bdu_cap_gry",
  "usm_bdu_cap_odg",
  "usm_bdu_cap_portliz",
  "usm_bdu_cap_tgrstp",
  "usm_bdu_cap_ubn",
  "usm_bdu_cap_ubntgrstp",
  "usm_bdu_cap_wdl",
  "CUP_H_PMC_Beanie_Black",
  "CUP_H_PMC_Beanie_Khaki",
  "CUP_H_PMC_Beanie_Winter",
  "rhs_beanie_green",
  "CUP_H_C_Beanie_01",
  "CUP_H_C_Beanie_02",
  "CUP_H_C_Beanie_03",
  "CUP_H_C_Beanie_04",
  "rhs_beanie",
  "CUP_H_SLA_BeanieGreen",
  "CUP_H_ChDKZ_Beanie",
  "CUP_H_C_Beret_04",
  "CUP_H_C_Beret_02",
  "CUP_H_C_Beret_03",
  "CUP_H_PMC_Cap_Burberry",
  "CUP_H_PMC_Cap_Back_Burberry",
  "CUP_H_PMC_Cap_Grey",
  "CUP_H_PMC_Cap_Back_Grey",
  "CUP_H_PMC_Cap_Back_Tan",
  "CUP_H_RUS_Cap_ATACSAU",
  "CUP_H_RUS_Cap_ATACSFG",
  "H_Cap_blk",
  "c_black",
  "H_Cap_blu",
  "H_Cap_blk_CMMG",
  "CUP_H_RUS_Cap_EMR",
  "H_Cap_grn",
  "H_Cap_blk_ION",
  "H_Cap_Lyfe",
  "CUP_H_USA_Cap_M81",
  "H_Cap_MaldenTours",
  "CUP_H_USA_Cap_MCAM",
  "c_pizzaplace_1",
  "H_Cap_red",
  "H_Cap_surfer",
  "CUP_H_PMC_Cap_Tan",
  "H_Cap_tan",
  "H_Cap_kahki_specops_UK",
  "H_Cap_usblack",
  "H_Cap_tan_specops_US",
  "CUP_H_NAPA_Fedora",
  "ZEPHIK_FemaleHair_1",
  "H_Construction_basic_black_F",
  "H_Construction_basic_orange_F",
  "H_Construction_basic_red_F",
  "H_Construction_basic_vrana_F",
  "H_Construction_basic_white_F",
  "H_Construction_basic_yellow_F",
  "H_Construction_earprot_black_F",
  "H_Construction_earprot_orange_F",
  "H_Construction_earprot_red_F",
  "H_Construction_earprot_vrana_F",
  "H_Construction_earprot_white_F",
  "H_Construction_earprot_yellow_F",
  "H_Hat_blue",
  "H_Hat_brown",
  "H_Hat_camo",
  "H_Hat_checker",
  "H_Hat_grey",
  "H_Hat_tan",
  "rhs_headband",
  "cwr3_b_headgear_headband_woodland",
  "cwr3_b_headgear_headband_od",
  "H_RacingHelmet_1_black_F",
  "H_RacingHelmet_1_blue_F",
  "H_RacingHelmet_2_F",
  "H_RacingHelmet_1_F",
  "H_RacingHelmet_1_green_F",
  "H_RacingHelmet_1_orange_F",
  "H_RacingHelmet_1_red_F",
  "H_RacingHelmet_1_white_F",
  "H_RacingHelmet_1_yellow_F",
  "H_RacingHelmet_4_F",
  "H_Helmet_Skate",
  "H_Hat_Tinfoil_F",
  "TRYK_H_Bandana_H",
  "TRYK_H_Bandana_wig",
  "TRYK_R_CAP_OD_US",
  "TYRK_H_wig"
];

//(Array of classnames) Safe backpacks (will automatically include civilian backpack classes - useful if faction has randomisation script or to add items that are not used by the faction)
_civilianBackpacks = [
  "B_Carryall_blk",
  "B_Carryall_cbr",
  "B_Carryall_green_F",
  "B_Carryall_khk",
  "B_Carryall_oli",
  "B_CivilianBackpack_01_Everyday_Astra_F",
  "B_CivilianBackpack_01_Everyday_Black_F",
  "B_CivilianBackpack_01_Everyday_Vrana_F",
  "B_FieldPack_blk",
  "B_FieldPack_cbr",
  "B_FieldPack_green_F",
  "B_FieldPack_khk",
  "B_FieldPack_oli",
  "CUP_C_PHOENIX_FIRSTAID",
  "B_LegStrapBag_black_F",
  "B_LegStrapBag_coyote_F",
  "B_LegStrapBag_olive_F",
  "B_Messenger_Black_F",
  "B_Messenger_Coyote_F",
  "B_Messenger_Gray_F",
  "B_Messenger_Olive_F",
  "B_CivilianBackpack_01_Sport_Blue_F",
  "B_CivilianBackpack_01_Sport_Green_F",
  "B_CivilianBackpack_01_Sport_Red_F",
  "ACE_TacticalLadder_Pack"
  ];

//(Array of classnames) Safe vehicles to drive in (automatically includes vehicles from the civilian factions above).
_civilianVehicleArray = [];

_HMDallowed = true; //(Bool - true or false) Are HMDs (night vision goggles etc.) safe to wear for units pretending to be civilians? Set to false if wearing HMDs will cause suspicion (must be stored in backpack).

_noOffRoad = false; //Civilian vehicles driving at speed more than 50 meters from the nearest road will immediately be considered hostile (even if false, this will be seen as suspicious)


//-------------------------Enemy Disguise settings-------------------------
_incogFactions = ["O_USGuard_OD","O_USArmy_DES"]; //Array of enemy factions whose items and vehicles will allow the player to impersonate the enemy

 //Names of additional markers for areas that would be considered trespassing (any with "INC_tre" - case sensitive - somewhere in the marker name will automatically be included)
_trespassMarkers = [];

//(Array of classnames) Safe vests (on top of the specific factions above - useful if faction has randomisation script or to add items that are not used by the faction)
_incognitoVests = [];

//(Array of classnames) Safe headgear (will automatically include incog headgear classes - useful if faction has randomisation script or to add items that are not used by the faction)
_incognitoHeadgear = [];

//(Array of classnames) Safe backpacks (will automatically include incog backpack classes - useful if faction has randomisation script or to add items that are not used by the faction)
_incognitoBackpacks = [];

//(Array of classnames) Safe uniforms (on top of the specific factions above - useful if faction has randomisation script or to add items that are not used by the faction)
_incognitoUniforms = [];

_incogVehArray = []; //(Array of classnames) Additional incognito vehicles (vehicles from the faction above will automatically count, as will all _highSecVehicles)



//-------------------------High security zone settings-------------------------
/*
High security zones are areas that can only be entered with specific uniforms / items, even if the unit is disguised as an enemy.
For instance, it could be a radar installation or a marker in the vicinity of a high value target that only specially designated units are allowed near.
All high security zones are automatically considered non-civilian territory, but units dressed as enemies can enter without being instantly considered hostile, but they will attract a LOT more attention.
In these settings, you can .
*/

_highSecMarkers = []; 					//Names of additional markers for areas that are designated high security zones that require specific uniforms to enter without raising suspicion (any with "INC_highSec" - case sensitive - somewhere in the marker name will automatically be included)

_highSecInstantHostile = false;         // If true, units entering high security areas with the wrong uniform will be instantly deemed hostile by enemy forces. If false, it will be highly suspicious.

_highSecVehicles = [];                  // (Array of classnames) Vehicles that can enter high security areas without raising suspicion (uniforms will still be noticed according to how open the vehicle is)

_highSecurityUniforms = [];             // (Array of classnames) Uniforms that allow entry into high security areas (defined by high security markers)

_highSecItemCheck = true;               // Check for disallowed items that aren't in the permitted list? Each non-permitted item will incur a suspicion penality. Set to false if high security checks just include uniform only.

_highSecItems = [];                     // (Array of classnames) List of items such as vests, headgear, hats etc., that won't cause suspicion in high security areas (only works on foot for now)

_hsItChkOutside = true;                 // The high security item check will occur if wearing a high security uniform even in non-high security zones. Useful if the high security uniform is, for example, a businessman or scientist, who would look weird carrying a gun and helmet.

_hsMustBeUnarmed = true;               // Units carrying weapons will be considered hostile (requires _highSecItemCheck to be set to true).

_highSecItemCheckScalar = 1;            // Multiplies the level of suspicion caused by each suspect item when in a high security zone


//-------------------------Civilian recruitment settings-------------------------
/*
By enabling civilian recruitment, undercover can recruit any ambient civilians they see into their group (if their reputation allows / the civvy wants to join).
Civilians will operate under similar restrictions to the player.
You can also dismiss your new teammates and they will leave your group and carry on doing whatever it is they fancy doing (usually sitting cross-legged in the middle of a field).
*/

_civRecruitEnabled = false;          //(Bool - true or false) Set this to false to prevent undercover units from recruiting civilians
_armedCivPercentage = 70;           //(Number - 0 to 100) Max percentage of civilians armed with weapons from the array below, either on their person or in their backpacks (will only work if _civRecruitEnabled is set to true, otherwise this is ignored)

//Weapon classnames for armed civilians (array of classnames)
_civWpnArray = ["arifle_AKS_F","arifle_AKM_F","hgun_Pistol_01_F","hgun_Rook40_F","hgun_ACPC2_F","hgun_Rook40_F"];

//Items that civilians may carry
_civItemArray = ["ACE_Cellphone","ACE_Banana","ACE_Flashlight_KSF1","ACE_SpraypaintBlack","itemRadio","ACE_RangeCard","ACE_key_civ","ACE_key_lockpick","ACE_fieldDressing","IEDUrbanSmall_F","IEDUrbanSmall_F"];

//Civilian backpack classes (array of classnames)
_civPackArray = ["B_FieldPack_blk","B_FieldPack_cbr","B_FieldPack_khk","B_FieldPack_oucamo","B_Carryall_cbr"];
