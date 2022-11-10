private _patient = nearestObjects [position pile_medical, ["B_Survivor_F"], 1, true];
{
	deleteVehicle _x;
} forEach _patient;