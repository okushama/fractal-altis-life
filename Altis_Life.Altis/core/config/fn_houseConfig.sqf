/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for buyable houses?
*/
private["_house"];
_house = [_this,0,"",[""]] call BIS_fnc_param;
if(_house == "") exitWith {[]};

/*
	Return Format:
	[price,# of containers allowed]
*/
switch (true) do {
	case (_house in ["Land_i_House_Big_02_V1_F","Land_i_House_Big_02_V2_F","Land_i_House_Big_02_V3_F"]): {[2800000,3]};
	case (_house in ["Land_i_House_Big_01_V1_F","Land_i_House_Big_01_V2_F","Land_i_House_Big_01_V3_F"]): {[4200000,4]};
	case (_house in ["Land_i_House_Big_01_V1_F","Land_i_House_Big_01_V3_F","Land_i_House_Big_01_V3_F"]): {[4200000,4]};
	case (_house in ["Land_i_Garage_V1_F","Land_i_Garage_V2_F"]): {[1000000,0]};
	case (_house in ["Land_i_House_Small_01_V1_F","Land_i_House_Small_01_V2_F","Land_i_House_Small_01_V3_F"]): {[1500000,2]};
	case (_house in ["Land_i_House_Small_02_V1_F","Land_i_House_Small_02_V2_F","Land_i_House_Small_02_V3_F"]): {[1500000,2]};
	case (_house in ["Land_i_House_Small_03_V1_F"]): {[1600000,3]};
	case (_house in ["Land_i_Stone_HouseSmall_V2_F","Land_Slum_House01_F","Land_i_Stone_HouseSmall_V1_F","Land_i_Addon_02_V1_F","Land_Slum_House02_F","Land_i_Stone_HouseSmall_V3_F"]): {[1000000,1]};
	default {[]};
};