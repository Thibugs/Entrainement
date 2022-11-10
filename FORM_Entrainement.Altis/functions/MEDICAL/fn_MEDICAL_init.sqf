call GSRI_fnc_removePatient;

 private _group = createGroup [west, true]; 
 _injuredSoldier = _group createUnit ["B_Survivor_F", getPos pile_medical ,[],0,"CAN_COLLIDE"]; 
 _injuredSoldier disableAI "all"; 
 _injuredSoldier setDir getDir pile_medical;
private _injuries_number = [1, 5] call BIS_fnc_randomInt;
for "_injuries" from 0 to _injuries_number do
{ 
	private _damage = [0.1, 1] call BIS_fnc_randomNum; 
	private _injurie_position = call GSRI_fnc_selectInjuriePosition;
	[_injuredSoldier, _damage, _injurie_position, "bullet"] call ace_medical_fnc_addDamageToUnit; 
};

_injuredSoldier addEventHandler ["Killed", {
	if(player distance pile_medical < 5) then {
		["TaskFailed", ["", localize "GSRI_Entrainement_Medical_patient_died"]] call BIS_fnc_showNotification;
	};
}];