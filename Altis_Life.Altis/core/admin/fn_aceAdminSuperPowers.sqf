#include <macro.h>
/*
	File: fn_aceAdminSuperPowers.sqf
	Author: Mr_okushama
	
	Description:
	All of space and time can be yours
*/

if(__GETC__(life_adminlevel) == 0) exitWith {
	closeDialog 0;
};

removeAllActions player; 
hint 'Super Powers enabled!'; 
_playerOrVehicle = vehicle player;
_playerOrVehicle allowDamage false; 


_action = player addAction ['Leap', {
	_speed = 10; 
	_vel = velocity _playerOrVehicle; 
	_dir = direction _playerOrVehicle; 
	_playerOrVehicle setVelocity[
		(_vel select 0) + (sin _dir * _speed), 
		(_vel select 1) + (cos _dir * _speed), 
		30];
	}
]; 

_action_2 = player addAction ['Dive', {
	_speed = 50; 
	_vel = velocity _playerOrVehicle; 
	_dir = direction _playerOrVehicle; 
	_playerOrVehicle setVelocity[
		(_vel select 0) + (sin _dir * _speed), 
		(_vel select 1) + (cos _dir * _speed), 
		-20];
	}
]; 

_action_3 = player addAction ['Sonic Boom', {	_speed = 500;
	_vel = velocity _playerOrVehicle; 
	_dir = direction _playerOrVehicle; 
	_playerOrVehicle setVelocity[
		(_vel select 0) + (sin _dir * _speed), 
		(_vel select 1) + (cos _dir * _speed), 
		20];
	}
]; 

_action_4 = player addAction ['Orbital Launch', {	
	_speed = 0; 
	_vel = velocity _playerOrVehicle; 
	_dir = direction _playerOrVehicle; 
	_playerOrVehicle setVelocity[
		(_vel select 0) + (sin _dir * _speed), 
		(_vel select 1) + (cos _dir * _speed), 
		500];
}];

_action_5 = player addAction ['Meteor Smash', {
	_speed = 0; 
	_vel = velocity _playerOrVehicle; 
	_dir = direction _playerOrVehicle; 
	_playerOrVehicle setVelocity[
		(_vel select 0) + (sin _dir * _speed), 
		(_vel select 1) + (cos _dir * _speed), 
		-500];
}];

_action_6 = player addAction ['Kryptonite', {
	removeAllActions player;
	hint 'You lost your powers!';
}];