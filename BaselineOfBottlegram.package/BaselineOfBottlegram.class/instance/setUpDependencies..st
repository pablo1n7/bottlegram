baselines
setUpDependencies: spec

	spec
		baseline: 'Teapot'
			with: [ spec
				repository: 'github://zeroflag/teapot:master/source';
				load ];
		import: 'Teapot'.