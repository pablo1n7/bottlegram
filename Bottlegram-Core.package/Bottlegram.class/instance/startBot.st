system startup
startBot
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"
	|aTeapot|
	self webhook ifNil: [Exception signal: 'you must set a webhook'].
	aTeapot := Teapot configure: {#port -> self port. #debugMode -> false }.
	aTeapot POST: '/'-> [ :req | 
								|response aMessages aMessage|
								response := STONJSON fromString: (req entity string).
								aMessages := response at:'message'.
								aMessage := BottleMessage new: aMessages bot:self.
								self actionBot: aMessage.];
			 GET: '/' -> 'Bonjour!';
    		 start.
	self teapot: aTeapot.
	"self getUpdates:true do:[:each| self actionBot:each.]"