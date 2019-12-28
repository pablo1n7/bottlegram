action
initialize 
	
	super initialize.
	self registerCommand: #slashWeather: to: '/weather'.
	self registerCommand: #slashDate: to: '/date'.