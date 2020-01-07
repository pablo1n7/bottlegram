baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [
				"spec package: 'Bottlegram-Core'."
				self setUpDependencies: spec. 
				spec package: 'Bottlegram-Core' with: [ spec requires: 'Teapot' ].
		      spec package: 'Bottlegram-Example'.
		      spec package: 'Bottlegram-Exceptions'.]
