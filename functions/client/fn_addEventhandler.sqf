["ace_unconscious", {
	params ["_unit", "_state"];

	// execute only when event is fired locally
	if (player isEqualTo _unit) then {
		[{
			[GRAD_permaChoice_fnc_onPlayerUnconscious, _this] call CBA_fnc_execNextFrame;
		},[_unit,_state], 1] call CBA_fnc_waitAndExecute;
	};
}] call CBA_fnc_addEventHandler;