action
weather
	|data temp unit current|
	data := self sendGETWeather: 'http://138.36.97.210:4370/meteoro/data_all.php'. "Madryn Info"
	current := data at:'temperature' at:'current'. 
	temp :=  current at:'value'.
	unit := current at:'unit'.
	^ temp printString, ' ', unit.