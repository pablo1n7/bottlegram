baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec package: 'Bottlegram-Core'.
			spec group: 'default' with: #('Bottlegram-Core') ]
