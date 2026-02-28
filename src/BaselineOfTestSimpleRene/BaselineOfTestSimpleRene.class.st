Class {
	#name : 'BaselineOfTestSimpleRene',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfTestSimpleRene',
	#package : 'BaselineOfTestSimpleRene'
}

{ #category : 'baselines' }
BaselineOfTestSimpleRene >> baseline: spec [

	<baseline>
	spec for: #common do: [
			spec package: 'TestSimpleRene'.
			self defineDependencies: spec ]
]

{ #category : 'baselines' }
BaselineOfTestSimpleRene >> defineDependencies: spec [

	spec 
		baseline: 'SimpleRene' 
		with: [
			spec
				repository: 'github://pharo-contributions/SimpleRene:v1.0.0';
				loads: #( Core ) ]
]
