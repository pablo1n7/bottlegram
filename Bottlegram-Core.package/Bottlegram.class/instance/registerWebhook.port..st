system startup
registerWebhook: aUrl port: aPort
	|aData result|
	aData := Dictionary new. 
	aData at: 'url' put: aUrl.
	result := self sendPOST: '/setWebhook' data:aData.
	(result at: 'ok') ifFalse:[ Exception new signal: 'Error to register Webhook'.].
	self webhook: aUrl.
	self port: aPort.