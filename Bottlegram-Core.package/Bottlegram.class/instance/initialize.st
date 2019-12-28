initialization
initialize 
	self commandBot: Dictionary new.
	self registerCommand: #defaultText: to: 'defaultText'.
	self registerCommand: #slashStart: to: '/start'.
	self registerCommand: #slashHelp: to: '/help'.