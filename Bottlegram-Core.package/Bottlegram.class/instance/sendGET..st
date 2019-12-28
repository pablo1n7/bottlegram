action
sendGET: aActionURL
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	| response |
	response := (ZnClient new)
				url:self baseURL , aActionURL;    
				get;
				response. 
	
	^(STONJSON fromString: response contents)