#include <macro.h>
/*
	File: fn_adminMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Modified by: Fractal Gaming, see Tonic's original code for differences...
	
	Description:
	Opens the admin menu, sorry nothing special in here. Take a look for yourself.
*/
if(__GETC__(life_adminlevel) < 3) exitWith {closeDialog 0;};
private["_display","_list","_side"];
disableSerialization;
waitUntil {!isNull (findDisplay 2900)};
_display = findDisplay 2900;
_list = _display displayCtrl 2902;
_low = 2904;
_high = 2913;
_current = _low;
while(_current < _high) do {
	ctrlShow[_current,false];
	_current = _current +1;
};


//Purge List
lbClear _list;
{
	_side = switch(side _x) do {case west: {"Cop"}; case civilian : {"Civ"}; case independent : {"Med"}; default {"Unknown"};};
	_list lbAdd format["%1 - %2", _x getVariable["realname",name _x],_side];
	_list lbSetdata [(lbSize _list)-1,str(_x)];
} foreach playableUnits;
