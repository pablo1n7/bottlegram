action
sendPOST: aActionURL data:aData
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	| response |
	response := (ZnClient new)
				url:self baseURL , aActionURL;
				formAddAll: aData;
				post;
				response. 
	
	^(STONJSON fromString: response contents)