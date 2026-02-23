Class {
	#name : 'BaselineOfTestSimpleRene',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfTestSimpleRene',
	#package : 'BaselineOfTestSimpleRene'
}

{ #category : 'baselines' }
BaselineOfTestSimpleRene >> baseline: spec [

	<baseline>
	spec for: #common do: [ spec package: 'TestSimpleRene' ]
]
