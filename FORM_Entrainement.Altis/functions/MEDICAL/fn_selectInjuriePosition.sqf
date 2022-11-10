private _injuriePosition = [0, 5] call BIS_fnc_randomInt;
switch (_injuriePosition) do  
{ 
	case 0: {_injuriePosition = "Head"}; 
	case 1: {_injuriePosition = "Body"}; 
	case 2: {_injuriePosition = "LeftArm"}; 
	case 3: {_injuriePosition = "RightArm"}; 
	case 4: {_injuriePosition = "LeftLeg"}; 
	case 5: {_injuriePosition = "RightLeg"}; 
};
_injuriePosition;